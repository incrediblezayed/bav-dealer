import 'package:dealerapp/src/app/UI/Profile/edit_profile_page.dart';
import 'package:dealerapp/src/utils/global_exports.dart';
import 'package:dealerapp/src/widgets/k_button.dart';
import 'package:dealerapp/src/widgets/k_textfiled.dart';
import 'package:iconsax/iconsax.dart';

///Personal Imformation Page
class PersonalInformationPage extends StatelessWidget {
  ///This page is used to take inout from the users on sign up flow
  const PersonalInformationPage({super.key});

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
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Personal Information',
              style: theme.headlineLarge,
            ),
            TextButton(
              onPressed: () {
                AppRoutes.push(page: const EditProfilePage());
              },
              child: Text(
                'Edit Profile',
                style: theme.labelSmall!.copyWith(
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w300,
                  color: AppTheme.primaryColor,
                ),
              ),
            ),
          ],
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
        child: Column(
          children: [
            const CircleAvatar(
              radius: 35,
            ),
            SizedBox(
              height: 10.h,
            ),
            const KTextField(
              hintText: 'Name',
              label: 'Name',
            ),
            SizedBox(height: 12.h),
            const KTextField(
              hintText: 'Username',
              label: 'Username',
            ),
            SizedBox(height: 12.h),
            const KTextField(
              hintText: 'Email',
              label: 'Email',
            ),
            SizedBox(height: 12.h),
            const KTextField(
              hintText: 'Contact Number',
              label: 'Contact Number',
            ),
            SizedBox(height: 12.h),
            const KTextField(
              hintText: 'Alternative Contact Number',
              label: 'Alternative Contact Number',
            ),
            SizedBox(height: 12.h),
            const KTextField(
              hintText: 'Showroom Address',
              label: 'Showroom Address',
            ),
            SizedBox(height: 20.h),
            KButton(onPressed: () {}, text: 'Update'),
          ],
        ),
      ),
    );
  }
}
