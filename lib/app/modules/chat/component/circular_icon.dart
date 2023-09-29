import 'package:flutter/material.dart';
import 'package:mallchat/app/config/colors.dart';

class CircularIcon extends StatelessWidget {
  final IconData icon;
  final VoidCallback onPressed;

  const CircularIcon({super.key, required this.icon, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 45, // 圆形容器的宽度
      height: 45,
      padding: EdgeInsets.zero,
      decoration: const BoxDecoration(
        shape: BoxShape.circle, // 将容器变成圆形
        color: lightColor.tabBarBg,
      ),
      child: Center(
        child: IconButton(
          onPressed: onPressed,
          icon: Icon(
            icon,
            size: 22.5, // 图标的大小
            color: lightColor.iconColor,
          ),
        ),
      ),
    );
  }
}
