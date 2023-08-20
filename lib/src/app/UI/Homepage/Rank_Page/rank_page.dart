import 'package:dealerapp/src/utils/global_exports.dart';

class RankPage extends StatelessWidget {
  const RankPage({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).textTheme;
    return Scaffold(
      /*appBar:  AppBar(
        elevation: 0,
        backgroundColor: AppTheme.primaryColor,
        leading: GestureDetector(
          onTap: () {
            AppRoutes.pop();
          },
          child: const Icon(
            Iconsax.arrow_left,
            color: AppTheme.white,
          ),
        ),
        title: Text(
          'Notification',
          style: theme.headlineLarge!.copyWith(color: Colors.white),
        ),
      ) */
      body: Column(
        children: [
          Container(
            height: 200,
            color: AppTheme.primaryColor,
          ),
        ],
      ) /* CustomScrollView(
        slivers: [
          SliverAppBar(
            pinned: true,
            backgroundColor: AppTheme.primaryColor,
            leading: const Icon(
              Iconsax.arrow_left,
              color: Colors.white,
            ),
            title: Row(
              children: [
                Text(
                  'Top Seller',
                  style: theme.headlineLarge!.copyWith(
                    color: Colors.white,
                  ),
                ),
              ],
            ),
            actions: [
              Padding(
                padding: EdgeInsets.only(right: 16.w),
                child: SvgPicture.asset(
                  AppImages.search1,
                ),
              ),
            ],
            expandedHeight: 200,
            flexibleSpace: Column(
              children: [
                const Spacer(),
                // SizedBox(height: 100.h),
                Padding(
                  padding:
                      EdgeInsets.symmetric(vertical: 30.h, horizontal: 20.w),
                  child: Row(
                    children: [
                      CircleAvatar(
                        radius: 50,
                        backgroundColor: Colors.grey,
                        child: Image.asset(AppImages.profile),
                      ),
                      SizedBox(
                        width: 16.w,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Tanmay UI/UX',
                            style: theme.headlineLarge!.copyWith(
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w600,
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(height: 6.h),
                          Text(
                            '@Tanmay',
                            style: theme.labelMedium!.copyWith(
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w300,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                      const Spacer(),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Your Rank',
                            style: theme.labelMedium!
                                .copyWith(color: Colors.white),
                          ),
                          Text(
                            '#1',
                            style: theme.headlineMedium!.copyWith(
                              fontWeight: FontWeight.w700,
                              fontSize: 20.sp,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                return ListTile(
                  title: Text('List Item $index'),
                );
              },
              childCount: 20, // Replace with your desired number of items
            ),
          ),
        ],
      ) */
      ,
    );

    /* Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: AppTheme.primaryColor,
        leading: GestureDetector(
          onTap: () {
            AppRoutes.pop();
          },
          child: const Icon(
            Iconsax.arrow_left,
            color: Colors.white,
          ),
        ),
        title: Text(
          'Top Seller',
          style: theme.headlineLarge!.copyWith(color: Colors.white),
        ),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 16.w),
            child: SvgPicture.asset(
              AppImages.search1,
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          Stack(
            children: [
              Container(
                height: 200,
                width: double.maxFinite,
                color: AppTheme.primaryColor,
              ),
              Row(
                children: [
                  CircleAvatar(
                    radius: 50,
                    backgroundColor: Colors.grey,
                    child: Image.asset(AppImages.profile),
                  ),
                  SizedBox(
                    width: 16.w,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Tanmay UI/UX',
                        style: theme.headlineLarge,
                      ),
                      SizedBox(height: 6.h),
                      const Text('@Tanmay'),
                    ],
                  ),
                  const Spacer(),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Your Rank',
                        style: theme.labelMedium!.copyWith(color: Colors.white),
                      ),
                      Text(
                        '#1',
                        style: theme.headlineMedium!.copyWith(
                          fontWeight: FontWeight.w700,
                          fontSize: 20.sp,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  )
                ],
              )
            ],
          ),
        ],
      ),
    ) */
  }
}
