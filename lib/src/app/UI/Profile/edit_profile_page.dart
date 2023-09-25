import 'dart:async';

import 'package:dealerapp/src/app/provider/app_provider.dart';
import 'package:dealerapp/src/app/repository/auth/graphql/__generated__/auth.data.gql.dart';
import 'package:dealerapp/src/utils/index.dart';
import 'package:dealerapp/src/widgets/k_bottom_bar_button.dart';
import 'package:dealerapp/src/widgets/k_textfiled.dart';
import 'package:dealerapp/src/widgets/my_app_bar.dart';
import 'package:dealerapp/src/widgets/user_profile_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

///Profile page
class EditProfile extends ConsumerStatefulWidget {
  ///Constructor for profile page
  const EditProfile({super.key, required this.isPersonalInfo});
  final bool isPersonalInfo;

  @override
  ConsumerState<EditProfile> createState() => _ProfilePageState();
}

class _ProfilePageState extends ConsumerState<EditProfile> {
  GUserData_user get _user => cacheProvider.getUser()!;

  late bool isPersonalInfo = widget.isPersonalInfo;

  final firstNameController = TextEditingController();
  final lastNameController = TextEditingController();
  final phoneController = TextEditingController();
  final emailController = TextEditingController();
  final showroomAddress = TextEditingController();

  void fillData() {
    final name = _user.name?.split(' ');
    var firstName = '';
    var lastName = '';
    if (name != null && name.isNotEmpty) {
      firstName = name.first;
      if (name.length > 1) {
        lastName = name[1];
      }
    }
    firstNameController.text = firstName;
    lastNameController.text = lastName;
    phoneController.text = _user.phoneNumber ?? '';
    emailController.text = _user.email ?? '';
    showroomAddress.text = _user.address ?? '';
  }

  @override
  void initState() {
    fillData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final authPro = ref.watch(authProvider);
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: MyAppBar(
        title: isPersonalInfo ? 'Perosnal Information' : 'Edit Profile',
        actions: isPersonalInfo
            ? [
                TextButton(
                  onPressed: () {
                    setState(() {
                      isPersonalInfo = false;
                    });
                  },
                  child: Text('Edit Profile'),
                )
              ]
            : null,
      ),
      body: AbsorbPointer(
        absorbing: isPersonalInfo,
        child: Padding(
          padding: EdgeInsets.only(left: 20.w, right: 20.w, bottom: 40.h),
          child: Column(
            children: [
              SizedBox.square(
                dimension: 100,
                child: Stack(
                  children: [
                    UserProfileImage(
                      size: 100,
                      url: authPro.image?.path ?? _user.profile_image?.url,
                      isFile: authPro.image != null,
                    ),
                    Positioned(
                      bottom: 0,
                      right: 2,
                      child: InkWell(
                        borderRadius: BorderRadius.circular(100),
                        onTap: () {
                          authPro.pickImage();
                        },
                        child: CircleAvatar(
                          radius: 15,
                          backgroundColor: AppTheme.primaryColor,
                          child: SvgPicture.asset(AppImages.camera),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 22,
              ),
              KTextField(
                hintText: 'Enter your first name',
                label: 'First Name',
                controller: firstNameController,
              ),
              const SizedBox(
                height: 16,
              ),
              KTextField(
                hintText: 'Enter your last name',
                label: 'Last Name',
                controller: lastNameController,
              ),
              const SizedBox(
                height: 16,
              ),
              KTextField(
                controller: phoneController,
                hintText: 'Enter your phone number',
                label: 'Phone Number',
                readOnly: true,
              ),
              const SizedBox(
                height: 16,
              ),
              KTextField(
                controller: emailController,
                hintText: 'Enter you email',
                label: 'Email',
                readOnly: true,
              ),
              const SizedBox(
                height: 16,
              ),
              KTextField(
                controller: showroomAddress,
                hintText: 'Enter your address',
                label: 'Showroom Address',
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: isPersonalInfo
          ? null
          : Padding(
              padding: EdgeInsets.all(20.h),
              child: KBottomBarButton(
                text: 'Update',
                onTap: () async {
                  unawaited(AppRoutes.showLoadingDialog());
                  await authPro.updateUser(
                    id: _user.id,
                    email: emailController.text,
                    phoneNumber: phoneController.text,
                    name:
                        '${firstNameController.text} ${lastNameController.text}'
                            .trim(),
                    address: showroomAddress.text.isEmpty
                        ? null
                        : showroomAddress.text,
                  );
                  AppRoutes.pop();
                },
              ),
            ),
    );
  }
}
