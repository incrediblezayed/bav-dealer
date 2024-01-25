import 'dart:io';

import 'package:dealerapp/src/utils/extensions.dart';
import 'package:dealerapp/src/utils/global_exports.dart';
import 'package:dealerapp/src/widgets/k_cached_network_image.dart';

///User profile image
class UserProfileImage extends StatelessWidget {
  ///Constructor for user profile image
  const UserProfileImage({
    required this.url,
    super.key,
    this.size = 30,
    this.isFile = false,
  });

  ///Size
  final double size;

  ///Url
  final String? url;

  ///Is file
  final bool isFile;

  @override
  Widget build(BuildContext context) {
    return (url ?? '').isEmpty
        ? CircleAvatar(
            backgroundColor: AppTheme.white,
            radius: size / 2,
            child: Icon(
              Icons.account_circle_sharp,
              size: size,
              color: AppTheme.primaryColor,
            ),
          )
        : CircleAvatar(
            backgroundColor: AppTheme.white,
            radius: size / 2,
            backgroundImage: isFile ? FileImage(File(url!)) : null,
            child: isFile
                ? null
                : KCachedNWImage(
                    url,
                    frameBuilder:
                        (context, child, frame, wasSynchronouslyLoaded) {
                      return ClipRRect(
                          borderRadius: BorderRadius.circular(size),
                          child: child,);
                    },
                    errorBuilder: (context, url, error) {
                      error.log();
                      url.log();
                      return CircleAvatar(
                        radius: size / 2,
                        backgroundColor: AppTheme.white,
                        child: Icon(
                          Icons.account_circle_sharp,
                          size: size,
                          color: AppTheme.primaryColor,
                        ),
                      );
                    },
                  ),
          );
  }
}
