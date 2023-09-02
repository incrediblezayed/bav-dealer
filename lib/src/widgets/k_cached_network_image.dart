// ignore_for_file: must_be_immutable

import 'package:cached_network_image/cached_network_image.dart';
import 'package:dealerapp/src/app/repository/graphql_client.dart';
import 'package:flutter/material.dart';

///Cached network image
class KCachedNWImage extends CachedNetworkImage {
  ///Constructor for cached network image
  ///
  ///[isExternal] is used to check if the image is external or not
  ///
  ///If the image is external then the [imageUrl] is used as it is
  ///
  ///If the image is not external then the [imageUrl] is appended with the [GraphqlClient.baseUrl]
  ///
  ///This is done to avoid the CORS error
  ///
  ///[placeholder] is used to show the placeholder image
  ///
  ///[errorWidget] is used to show the error image
  ///
  ///[placeholderFadeInDuration] is used to set the duration for the placeholder fade in animation
  ///
  ///
  KCachedNWImage(
    String imageUrl, {
    super.key,
    bool isExternal = false,
    super.fit,
    super.width,
    super.height,
    super.errorWidget,
    super.placeholder,
    super.placeholderFadeInDuration,
    super.fadeInDuration,
    super.fadeOutDuration,
    super.fadeInCurve,
    super.fadeOutCurve,
    super.alignment,
    super.repeat,
    super.matchTextDirection,
    super.filterQuality,
  }) : super(
          imageUrl: isExternal ? imageUrl : GraphqlClient.baseUrl + imageUrl,
          progressIndicatorBuilder: (c, s, e) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          },
        );
}

/// Cached Network image provider
class KCachedNWImageProvider extends CachedNetworkImageProvider {
  ///Constructor for cached network image provider
  ///
  ///[isExternal] is used to check if the image is external or not
  ///
  ///If the image is external then the [imageUrl] is used as it is
  ///
  ///If the image is not external then the [imageUrl] is appended with the [GraphqlClient.baseUrl]
  ///
  ///This is done to avoid the CORS error
  ///
  KCachedNWImageProvider(
    String imageUrl, {
    bool isExternal = false,
  }) : super(
          isExternal ? imageUrl : GraphqlClient.baseUrl + imageUrl,
        );
}
