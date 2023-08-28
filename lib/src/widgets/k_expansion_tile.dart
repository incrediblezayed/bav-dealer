import 'package:dealerapp/src/utils/global_exports.dart';
import 'package:flutter_svg/svg.dart';

///Expansion Tile
class KExpansionTile extends StatelessWidget {
  ///Constructor
  const KExpansionTile({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).textTheme;
    return ExpansionTile(
      
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12.r),
      ),
      iconColor: AppTheme.primaryColor,
      collapsedIconColor: Colors.grey,
      tilePadding: EdgeInsets.only(right: 20.w, left: 22.w),
      childrenPadding: const EdgeInsets.symmetric(horizontal: 30),
      backgroundColor: AppTheme.primaryColor.withOpacity(.05),
      title: Row(
        children: [
          SvgPicture.asset(AppImages.history),
          SizedBox(width: 28.w),
          Text(
            'Order History',
            style: theme.labelLarge,
          ),
        ],
      ),
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Divider(
              color: Colors.grey.withOpacity(.3),
            ),
            Padding(
              padding: EdgeInsets.only(left: 33.w),
              child: TextButton(
                onPressed: () {},
                child: Text(
                  'Purchase Order History',
                  style: theme.headlineSmall!
                      .copyWith(fontWeight: FontWeight.w300),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 33.w),
              child: TextButton(
                onPressed: () {},
                child: Text(
                  'Test Order History',
                  style: theme.headlineSmall!
                      .copyWith(fontWeight: FontWeight.w300),
                ),
              ),
            ),
            SizedBox(height: 6.h),
          ],
        ),
      ],
    );
  }
}
