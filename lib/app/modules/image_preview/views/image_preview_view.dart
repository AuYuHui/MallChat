import 'dart:io';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:photo_view/photo_view.dart';
import 'package:mallchat/app/modules/image_preview/controllers/image_preview_controller.dart';

class ImagePreviewView extends GetView<ImagePreviewController> {
  final String filePath;
  final int width;
  final num height;

  const ImagePreviewView({
    Key? key,
    required this.filePath,
    required this.width,
    required this.height,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final double aspectRatio = width / height; // 宽高比例
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: <Widget>[
          Align(
            alignment: Alignment.center,
            child: GestureDetector(
              child: PhotoView(
                imageProvider: CachedNetworkImageProvider(
                  filePath,
                ),
                minScale: PhotoViewComputedScale.contained,
                maxScale: PhotoViewComputedScale.covered * 2, // 调整缩放范围
              ),
            ),
          )
        ],
      ),
    );
  }
}
