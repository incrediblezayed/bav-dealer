// ignore_for_file: must_be_immutable

import 'package:dealerapp/src/app/repository/graphql_client.dart';
import 'package:dealerapp/src/utils/extensions.dart';
import 'package:dealerapp/src/utils/global_exports.dart';

///Cached network image
class KCachedNWImage extends StatelessWidget {
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
/*   ///[placeholder] is used to show the placeholder image
  ///
  ///[errorWidget] is used to show the error image
  ///
  ///[placeholderFadeInDuration] is used to set the duration for the placeholder fade in animation */
  ///
  ///
  const KCachedNWImage(
    String? imageUrl, {
    super.key,
    bool isExternal = false,
    Widget Function(BuildContext, Object, StackTrace?)? errorBuilder,
    BoxFit? fit,
    double? width,
    double? height,
    AlignmentGeometry alignment = Alignment.center,
    FilterQuality filterQuality = FilterQuality.high,
    String? fallbackImage,
    bool shouldOptimize = true,
    this.parent,
    Widget Function(BuildContext, Widget, int?, bool)? frameBuilder,
  })  : _imageUrl = imageUrl,
        _isExternal = isExternal,
        _errorBuilder = errorBuilder,
        _filterQuality = filterQuality,
        _fit = fit,
        _width = width,
        _height = height,
        _alignment = alignment,
        _fallbackImage = fallbackImage,
        _shouldOptimize = shouldOptimize,
        _frameBuilder = frameBuilder;

  final String? _imageUrl;
  final bool _isExternal;
  final Widget Function(BuildContext, Object, StackTrace?)? _errorBuilder;

  final FilterQuality _filterQuality;
  final BoxFit? _fit;
  final double? _width;
  final double? _height;
  final AlignmentGeometry _alignment;
  final String? parent;
  final String? _fallbackImage;
  final bool _shouldOptimize;
  final Widget Function(BuildContext, Widget, int?, bool)? _frameBuilder;

  @override
  Widget build(BuildContext context) {
    const defaultImage = AppImages.bike;

    if (_imageUrl == null || _imageUrl!.isEmpty) {
      return Image.asset(
        _fallbackImage ?? defaultImage,
        height: _height ?? 210,
        width: _width ?? 160,
        fit: BoxFit.cover,
      );
    }
    var imageUrl = _isExternal || _imageUrl!.contains('http')
        ? _imageUrl!
        : GraphqlClient.baseUrl + _imageUrl!;

    return LayoutBuilder(builder: (context, constraints) {
      double width = _width ?? constraints.maxWidth;
      double height = _height ?? constraints.maxHeight;
      if (imageUrl.contains('.s3.') &&
          width.isFinite &&
          height.isFinite &&
          _shouldOptimize) {
        double width = _width ?? constraints.maxWidth;
        double height = _height ?? constraints.maxHeight;
        final encodedImageUrl = Uri.encodeComponent(imageUrl);
        imageUrl =
            'https://api.bavelectric.com/image-api/rs,s:${width.toInt() * 2}x${height.toInt() * 2},m:fit/?image=$encodedImageUrl';
      }
      return Image.network(
        imageUrl,
        key: ValueKey(imageUrl),
        alignment: _alignment,
        filterQuality: _filterQuality,
        fit: _fit,
        height: _height,
        width: _width,
        frameBuilder: _frameBuilder,
        loadingBuilder: (context, child, loadingProgress) {
          if (loadingProgress == null) {
            return child;
          }
          return Center(
            child: CircularProgressIndicator(
              value: loadingProgress.expectedTotalBytes != null
                  ? loadingProgress.cumulativeBytesLoaded /
                      loadingProgress.expectedTotalBytes!
                  : null,
            ),
          );
        },
        errorBuilder: _errorBuilder ??
            (context, error, stackTrace) {
              'Error Loading Image $imageUrl'.log(
                  error: error, stackTrace: stackTrace, name: 'Image Error');
              return SizedBox(
                height: _height ?? 210,
                width: _width ?? 160,
                child: Image.asset(
                  _fallbackImage ?? defaultImage,
                  fit: BoxFit.fill,
                ),
              );
            },
      );
    });
  }
}

/// Cached Network image provider
/* class KCachedNWImageProvider extends AssetImage {
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
 */

/* // ignore_for_file: must_be_immutable

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
 */
