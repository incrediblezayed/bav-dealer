import 'package:dealerapp/src/utils/global_exports.dart';
import 'package:dealerapp/src/widgets/k_button.dart';
import 'package:dealerapp/src/widgets/k_textfiled.dart';
import 'package:iconsax/iconsax.dart';

class EditProfilePage extends StatelessWidget {
  const EditProfilePage({super.key});

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
          'Edit Profile',
          style: theme.headlineLarge,
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
        child: Column(
          children: [
            KTextField(
              hintText: 'Name',
              label: 'Name',
            ),
            SizedBox(height: 12.h),
            KTextField(
              hintText: 'Username',
              label: 'Username',
            ),
            SizedBox(height: 12.h),
            KTextField(
              hintText: 'Email',
              label: 'Email',
            ),
            SizedBox(height: 12.h),
            KTextField(
              hintText: 'Contact Number',
              label: 'Contact Number',
            ),
            SizedBox(height: 12.h),
            KTextField(
              hintText: 'Alternative Contact Number',
              label: 'Alternative Contact Number',
            ),
            SizedBox(height: 12.h),
            KTextField(
              hintText: 'Showroom Address',
              label: 'Showroom Address',
            ),
            SizedBox(height: 20.h),
            KButton(onPressed: () {}, text: 'Update')
          ],
        ),
      ),
    );
  }
}
