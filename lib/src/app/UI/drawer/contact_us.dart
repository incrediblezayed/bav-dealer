import 'package:auto_size_text/auto_size_text.dart';
import 'package:dealerapp/src/utils/global_exports.dart';
import 'package:dealerapp/src/widgets/my_app_bar.dart';
import 'package:flutter_svg/svg.dart';
import 'package:url_launcher/url_launcher.dart';

///Contact us
class ContactUs extends StatelessWidget {
  ///Constructor for contact us
  const ContactUs({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).textTheme;
    return Scaffold(
      appBar: MyAppBar(
        title: 'Contact Us',
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(vertical: 20.h, horizontal: 30.w),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AutoSizeText(
                'Any queries please get in touch with us',
                style: theme.labelMedium
                    ?.copyWith(color: AppTheme.defaultCaptionColor),
              ),
              SizedBox(height: 50.h),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 50.w),
                child: SvgPicture.asset(AppImages.contactus),
              ),
              AutoSizeText(
                'Call Us',
                style: theme.headlineSmall!
                    .copyWith(fontSize: 20.sp, fontWeight: FontWeight.w600),
              ),
              SizedBox(height: 20.h),
              InkWell(
                onTap: () {
                  launchUrl(Uri.parse('tel:+919000413260'));
                },
                child: Row(
                  children: [
                    CircleAvatar(
                      backgroundColor: AppTheme.primaryColor.withOpacity(.1),
                      child: SvgPicture.asset(
                        AppImages.contact,
                        colorFilter: const ColorFilter.mode(
                          AppTheme.primaryColor,
                          BlendMode.srcIn,
                        ),
                        //color: const Color(0xff68C7C1),
                      ),
                    ),
                    SizedBox(
                      width: 20.w,
                    ),
                    AutoSizeText(
                      '+91-9000413260',
                      style: theme.titleSmall?.copyWith(
                        fontWeight: FontWeight.w300,
                        color: const Color(0xff68C7C1),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20.h),
              AutoSizeText(
                'Send us email @',
                style: theme.headlineSmall!
                    .copyWith(fontSize: 20.sp, fontWeight: FontWeight.w600),
              ),
              SizedBox(height: 20.h),
              InkWell(
                onTap: () {
                  launchUrl(Uri.parse('mailto:support@bavelectric.com'));
                },
                child: Row(
                  children: [
                    CircleAvatar(
                      radius: 20.r,
                      backgroundColor: AppTheme.primaryColor.withOpacity(.2),
                      child: const Icon(
                        Icons.email_outlined,
                        color: Color(0xff68C7C1),
                      ),
                    ),
                    SizedBox(
                      width: 20.w,
                    ),
                    Expanded(
                      child: AutoSizeText(
                        'support@bavelectric.com',
                        style: theme.titleSmall?.copyWith(
                          fontWeight: FontWeight.w300,
                          color: AppTheme.primaryColor,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20.h),
              AutoSizeText(
                'Reach us at',
                style: theme.headlineSmall!
                    .copyWith(fontSize: 20.sp, fontWeight: FontWeight.w600),
              ),
              SizedBox(height: 20.h),
              InkWell(
                onTap: () {
                  launchUrl(Uri.parse('mailto:support@bavelectric.com'));
                },
                child: Row(
                  children: [
                    CircleAvatar(
                      radius: 20.r,
                      backgroundColor: AppTheme.primaryColor.withOpacity(.2),
                      child: const Icon(
                        Icons.location_on_outlined,
                        color: Color(0xff68C7C1),
                      ),
                    ),
                    SizedBox(
                      width: 20.w,
                    ),
                    Expanded(
                      child: AutoSizeText(
                        '2-61/2 seetharampur karimnagar 505001',
                        style: theme.titleSmall?.copyWith(
                          fontWeight: FontWeight.w300,
                          color: AppTheme.primaryColor,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
