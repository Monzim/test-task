import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_cache_manager/flutter_cache_manager.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CacheImageWidget extends StatelessWidget {
  const CacheImageWidget({
    Key? key,
    required this.imageUrl,
    this.blendMode,
    this.filterQuality = FilterQuality.low,
    this.boxFit = BoxFit.cover,
    this.cacheManager,
    this.colorFilter,
  }) : super(key: key);

  final String imageUrl;
  final CacheManager? cacheManager;
  final ColorFilter? colorFilter;
  final BlendMode? blendMode;
  final FilterQuality filterQuality;
  final BoxFit boxFit;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(15.0.r),
      child: CachedNetworkImage(
        key: UniqueKey(),
        cacheManager: cacheManager,
        imageUrl: imageUrl,
        fit: boxFit,
        colorBlendMode: blendMode,
        filterQuality: filterQuality,
        imageBuilder: (context, imageProvider) => Container(
          decoration: BoxDecoration(
            image: DecorationImage(
                image: imageProvider, fit: boxFit, colorFilter: colorFilter),
          ),
        ),
        placeholder: (context, url) => Container(
          decoration: const BoxDecoration(
              gradient: LinearGradient(colors: [
            Colors.grey,
            Color.fromARGB(255, 226, 225, 220),
          ])),
        ),
        errorWidget: (context, url, error) =>
            const Center(child: Icon(Icons.error)),
      ),
    );
  }
}
