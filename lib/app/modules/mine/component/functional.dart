import 'package:flutter/material.dart';
import 'package:mallchat/app/config/colors.dart';
import 'package:mallchat/helper/toast.dart';

class Functional extends StatelessWidget {
  Functional({super.key});

  List<Map<String, String>> dataList = [
    {
      'imageUrl': 'assets/images/payment.png',
      'text': '支付',
    },
    {
      'imageUrl': 'assets/images/wallet.png',
      'text': '钱包',
    },
    {
      'imageUrl': 'assets/images/card.png',
      'text': '卡包',
    },
    {
      'imageUrl': 'assets/images/shopping.png',
      'text': '购物',
    },
    {
      'imageUrl': 'assets/images/look.png',
      'text': '看一看',
    },
    {
      'imageUrl': 'assets/images/more.png',
      'text': '更多',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 4,
      ),
      itemCount: dataList.length, // 总共有6个项
      itemBuilder: (BuildContext context, int index) {
        final item = dataList[index];
        // 这里的示例图片和文本可以根据你的需求替换
        return GestureDetector(
          onTap: () async {
            showSuccessToast('暂未实现');
          },
          child: SizedBox(
            width: 94,
            height: 89,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  item['imageUrl']!,
                  width: 40,
                  height: 40,
                ), // 替换为你的图片链接
                const SizedBox(
                  height: 8,
                ),
                Text(
                  item['text']!,
                  style: const TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.w500,
                      color: lightColor.iconColor),
                ), // 替换为你的文本内容
              ],
            ),
          ),
        );
      },
    );
  }
}
