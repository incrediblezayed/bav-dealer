import 'package:dealerapp/src/utils/global_exports.dart';
import 'package:flutter_svg/flutter_svg.dart';

class RankPage extends StatefulWidget {
  const RankPage({super.key});

  @override
  State<RankPage> createState() => _RankPageState();
}

class _RankPageState extends State<RankPage> {
  Widget _buildSearchField() {
    return SizedBox(
      width: 200.w,
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 6.h),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(2.r),
          child: const TextField(
            autofocus: true,
            decoration: InputDecoration(
              hintText: 'Search...',
              border: InputBorder.none,
              hintStyle: TextStyle(color: Colors.grey),
            ),
            style: TextStyle(color: Colors.white, fontSize: 16),
          ),
        ),
      ),
    );
  }

  bool isSearching = false;
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).textTheme;

    return Scaffold(
      backgroundColor: AppTheme.primaryColor,
      appBar: AppBar(
        backgroundColor: AppTheme.primaryColor,
        elevation: 0,
        title: const Text('Top Seller'),
        actions: [
          if (isSearching)
            Padding(
              padding: EdgeInsets.only(right: 15.w),
              child: _buildSearchField(),
            )
          else
            GestureDetector(
              onTap: () {
                setState(() {
                  isSearching = !isSearching;
                });
              },
              child: Padding(
                padding: EdgeInsets.only(right: 15.w),
                child: SvgPicture.asset(AppImages.search1),
              ),
            ),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 150,
            color: AppTheme.primaryColor,
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 30.h, horizontal: 20.w),
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
                        style: theme.labelMedium!.copyWith(color: Colors.white),
                      ),
                      SizedBox(height: 10.h),
                      Row(
                        children: [
                          SvgPicture.asset(AppImages.rank1),
                          SizedBox(height: 10.h),
                          Text(
                            '#1',
                            style: theme.headlineMedium!.copyWith(
                              fontWeight: FontWeight.w700,
                              fontSize: 20.sp,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 20.h, horizontal: 20.w),
              color: Colors.white,
              child: ListView(
                physics: const BouncingScrollPhysics(),
                shrinkWrap: true,
                children: List.generate(
                  20,
                  (index) => Padding(
                    padding: EdgeInsets.only(bottom: 16.h),
                    child: Row(
                      children: [
                        CircleAvatar(
                          radius: 30,
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
                              'Jane Cooper',
                              style: theme.headlineLarge!.copyWith(
                                fontSize: 16.sp,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            SizedBox(height: 6.h),
                            Text(
                              '@Tanmay',
                              style: theme.labelMedium!.copyWith(
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w300,
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
                            SizedBox(height: 10.h),
                            Row(
                              children: [
                                SvgPicture.asset(AppImages.rank2),
                                SizedBox(width: 10.w),
                                Text(
                                  '43434',
                                  style: theme.headlineMedium!.copyWith(
                                    fontWeight: FontWeight.w300,
                                    fontSize: 16.sp,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
