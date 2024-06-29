import 'package:dealerapp/src/app/provider/app_provider.dart';
import 'package:dealerapp/src/utils/global_exports.dart';
import 'package:dealerapp/src/widgets/empty_widget.dart';
import 'package:dealerapp/src/widgets/notification_card.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:iconsax/iconsax.dart';

/// Notification Page
class NotificationPage extends ConsumerWidget {
  /// Notification Page to display notifications
  const NotificationPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final notificationPro = ref.watch(notificationsProvider);

    final theme = Theme.of(context).textTheme;
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: AppTheme.scaffoldBgColor,
        leading: GestureDetector(
          onTap: () {
            AppRoutes.pop();
          },
          child: const Icon(
            Iconsax.arrow_left,
            color: AppTheme.textColor,
          ),
        ),
        title: Text(
          'Notification',
          style: theme.headlineMedium,
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(vertical: 20.h, horizontal: 20.w),
        child: notificationPro.notifications.isEmpty
            ? const Center(
                child: EmptyWidget(title: 'Uh-Oh No notifications found'))
            : ListView(
                physics: const BouncingScrollPhysics(),
                children: notificationPro.notifications
                    .map(
                      (e) => Padding(
                        padding: const EdgeInsets.only(bottom: 10),
                        child: NotificationCard(
                          notificationModel: e,
                        ),
                      ),
                    )
                    .toList(),
              ),
      ),
    );
  }
}
