import 'package:dealerapp/src/utils/global_exports.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:iconsax/iconsax.dart';

class ContactUs extends StatelessWidget {
  const ContactUs({super.key});

  @override
  Widget build(BuildContext context) {
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
          'Contact Us',
          style: theme.headlineLarge,
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(vertical: 20.h, horizontal: 30.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Any queries please get in touch with us',
              style: theme.labelMedium,
            ),
            SizedBox(height: 50.h),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 50.w),
              child: SvgPicture.asset(AppImages.contactus),
            ),
            const Spacer(),
            Text(
              'Call Us',
              style: theme.headlineSmall!
                  .copyWith(fontSize: 20.sp, fontWeight: FontWeight.w600),
            ),
            SizedBox(height: 20.h),
            Row(
              children: [
                CircleAvatar(
                  radius: 20.r,
                  backgroundColor: AppTheme.primaryColor.withOpacity(.2),
                  child: SvgPicture.asset(AppImages.contact),
                ),
                SizedBox(
                  width: 20.w,
                ),
                const Text('878797879867'),
              ],
            ),
            SizedBox(height: 20.h),
            Row(
              children: [
                CircleAvatar(
                  radius: 20.r,
                  backgroundColor: AppTheme.primaryColor.withOpacity(.2),
                  child: SvgPicture.asset(
                    AppImages.contact,
                  ),
                ),
                SizedBox(
                  width: 20.w,
                ),
                const Text('878797879867'),
              ],
            ),
            SizedBox(height: 20.h),
            Text(
              'Send us email @',
              style: theme.headlineSmall!
                  .copyWith(fontSize: 20.sp, fontWeight: FontWeight.w600),
            ),
            SizedBox(height: 20.h),
            Row(
              children: [
                CircleAvatar(
                  radius: 20.r,
                  backgroundColor: AppTheme.primaryColor.withOpacity(.2),
                  child: const Icon(
                    Icons.email_outlined,
                    color: AppTheme.primaryColor,
                  ),
                ),
                SizedBox(
                  width: 20.w,
                ),
                const Text('akfjasjso@gmail.com'),
              ],
            ),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}
