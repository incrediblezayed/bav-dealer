import 'dart:io';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:dealerapp/src/app/repository/graphql_client.dart';
import 'package:dealerapp/src/utils/extensions.dart';
import 'package:dealerapp/src/utils/global_exports.dart';

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
                : CachedNetworkImage(
                    imageUrl: GraphqlClient.baseUrl + url!,
                    imageBuilder: (context, imageProvider) {
                      return ClipRRect(
                        borderRadius: BorderRadius.circular(size),
                        child: Image(
                          image: imageProvider,
                          fit: BoxFit.cover,
                          width: size,
                          height: size,
                        ),
                      );
                    },
                    errorWidget: (context, url, error) {
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
