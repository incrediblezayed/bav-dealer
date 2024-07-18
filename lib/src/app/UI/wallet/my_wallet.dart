/* import 'package:com/src/app/providers/app_providers.dart';
import 'package:com/src/app/providers/wallet_provider/wallet.provider.dart';
import 'package:com/src/app/ui/wallet/add_money.dart';
import 'package:com/src/utils/global_exports.dart';
import 'package:com/src/widgets/empty_widget.dart';
import 'package:com/src/widgets/index.dart';
import 'package:com/src/widgets/wallet_transaction_card.dart';
import 'package:dealerapp/src/utils/app_images.dart';
import 'package:dealerapp/src/widgets/empty_widget.dart';
import 'package:flutter/material.dart';

///My wallet
class MyWallet extends ConsumerStatefulWidget {
  ///Constructor for my wallet
  const MyWallet({super.key});

  @override
  ConsumerState<MyWallet> createState() => _MyWalletState();
}

class _MyWalletState extends ConsumerState<MyWallet>
    with TickerProviderStateMixin {
  late final TabController _tabController =
      TabController(length: 3, vsync: this);

  void showMaterialBanner({
    required TextTheme textTheme,
    required WalletProvider walletPro,
  }) {
    AppRoutes.scaffoldMessengerKey.currentState?.showMaterialBanner(
      MaterialBanner(
        content: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Amount added to Wallet Successfully',
              style: textTheme.titleLarge,
            ),
            Text(
              "If you don't see the amount in your wallet, please refresh the page.",
              style: textTheme.bodyMedium,
            ),
          ],
        ),
        backgroundColor: AppTheme.primaryColor.withOpacity(.4),
        padding: const EdgeInsets.all(20),
        actions: [
          TextButton.icon(
            onPressed: () {
              AppRoutes.scaffoldMessengerKey.currentState
                  ?.hideCurrentMaterialBanner();
              walletPro.getWallet();
            },
            icon: const Icon(Icons.refresh),
            label: const Text('Refresh'),
          ),
          TextButton.icon(
            onPressed: () {
              AppRoutes.scaffoldMessengerKey.currentState
                  ?.hideCurrentMaterialBanner();
            },
            icon: const Icon(Icons.close),
            label: const Text('Close'),
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final walletPro = ref.watch(walletProvider);
    final theme = Theme.of(context);
    final textTheme = theme.textTheme;
    return RefreshIndicator.adaptive(
      onRefresh: () {
        AppRoutes.scaffoldMessengerKey.currentState
            ?.hideCurrentMaterialBanner();
        return walletPro.getWallet();
      },
      child: Scaffold(
        appBar: MyAppBar(
          title: 'My Wallet',
          iconColor: Colors.white,
          backgroundColor: AppTheme.primaryColor,
          titleTextStyle: textTheme.labelMedium?.copyWith(
            color: Colors.white,
          ),
        ),
        body: walletPro.loading
            ? const Center(
                child: CircularProgressIndicator(),
              )
            : Column(
                children: [
                  ColoredBox(
                    color: AppTheme.primaryColor,
                    child: SingleChildScrollView(
                      physics: const AlwaysScrollableScrollPhysics(),
                      child: Column(
                        children: [
                          const SizedBox(
                            height: 20,
                          ),
                          Text(
                            'Total Balance',
                            style: textTheme.headlineMedium?.copyWith(
                              fontWeight: FontWeight.normal,
                              color: AppTheme.white,
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Text(
                            (walletPro.wallet?.wallet?.amount ?? 0)
                                .toInt()
                                .toPrice(),
                            style: textTheme.headlineLarge?.copyWith(
                              fontWeight: FontWeight.bold,
                              color: AppTheme.white,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(20),
                            child: Theme(
                              data: ThemeData(
                                elevatedButtonTheme: ElevatedButtonThemeData(
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: Colors.white,
                                    foregroundColor: AppTheme.defaultTitleColor,
                                    shape: const StadiumBorder(),
                                    fixedSize: Size(double.infinity, 50.h),
                                    elevation: 1,
                                  ),
                                ),
                              ),
                              child: Row(
                                children: [
                                  Expanded(
                                    child: ElevatedButton.icon(
                                      onPressed: () async {
                                        await AppRoutes.push(
                                          page: const AddMoney(),
                                        );
                                        showMaterialBanner(
                                          textTheme: textTheme,
                                          walletPro: walletPro,
                                        );
                                        await Future.delayed(
                                          const Duration(seconds: 5),
                                          () {
                                            walletPro.getWallet();
                                          },
                                        );
                                      },
                                      icon: Image.asset(AppImages.addMoney),
                                      label: const Text('Add Money'),
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 20,
                                  ),
                                  Expanded(
                                    child: ElevatedButton.icon(
                                      onPressed: () {
                                        showMaterialBanner(
                                          textTheme: textTheme,
                                          walletPro: walletPro,
                                        );
                                      },
                                      icon:
                                          Image.asset(AppImages.withdrawMoney),
                                      label: const Text('Withdraw'),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          TabBar(
                            indicatorColor: const Color(0xff17716A),
                            indicatorWeight: 4,
                            unselectedLabelColor: const Color(0xff17716A),
                            controller: _tabController,
                            tabs: const [
                              Tab(
                                text: 'Today',
                              ),
                              Tab(
                                text: 'Pas 7 days',
                              ),
                              Tab(
                                text: 'Last Month',
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: Builder(
                      builder: (context) {
                        final todayTransactions = walletPro.history
                            .where((element) => element.createdAt.isToday)
                            .toList();

                        final past7DaysTransactions = walletPro.history
                            .where((element) => element.createdAt.isPast7Days)
                            .toList();

                        const emptyWidgt = EmptyWidgt(
                          title: 'Uh oh! You have no previous transactions.',
                          subTitle: 'You have no transactions at the moment. ',
                        );
                        return TabBarView(
                          controller: _tabController,
                          children: [
                            if (todayTransactions.isEmpty)
                              emptyWidgt
                            else
                              ListView(
                                children: todayTransactions
                                    .map(
                                      (e) =>
                                          WalletTransactionCard(transaction: e),
                                    )
                                    .toList(),
                              ),
                            if (past7DaysTransactions.isEmpty)
                              emptyWidgt
                            else
                              ListView(
                                children: walletPro.history
                                    .where(
                                      (element) =>
                                          element.createdAt.isPast7Days,
                                    )
                                    .map(
                                      (e) =>
                                          WalletTransactionCard(transaction: e),
                                    )
                                    .toList(),
                              ),
                            if (walletPro.history.isEmpty)
                              emptyWidgt
                            else
                              ListView(
                                children: walletPro.history
                                    .map(
                                      (e) =>
                                          WalletTransactionCard(transaction: e),
                                    )
                                    .toList(),
                              ),
                          ],
                        );
                      },
                    ),
                  )
                ],
              ),
      ),
    );
  }
}
 */
