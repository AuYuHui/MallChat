import 'package:flutter/material.dart';

class ChatMore extends StatefulWidget {
  const ChatMore({super.key});

  @override
  State<ChatMore> createState() => _ChatMoreState();
}

class _ChatMoreState extends State<ChatMore> {
  int currentIndex = 0;

  List data = [
    {"name": "图片", "icon": "assets/images/photo.png"},
    {"name": "拍摄", "icon": "assets/images/capture.png"},
    {"name": "文件", "icon": "assets/images/files.png"},
    {"name": "视频通话", "icon": "assets/images/videoChat.png"},
    {"name": "位置", "icon": "assets/images/location.png"},
    {"name": "语音输入", "icon": "assets/images/voiceInput.png"},
    {"name": "收藏", "icon": "assets/images/favorite.png"},
    {"name": "群工具", "icon": "assets/images/groupTools.png"},
  ];

  List dataS = [
    {"name": "红包", "icon": "assets/images/redPacket.png"},
  ];

  itemBuild(data) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 17, vertical: 7),
      child: Wrap(
        runSpacing: 15.0,
        spacing: 23.0,
        children: List.generate(data.length, (index) {
          String name = data[index]['name'];
          String icon = data[index]['icon'];
          return moreItem(name, icon);
        }),
      ),
    );
  }

  moreItem(String name, String icon) {
    return Column(
      children: [
        Image.asset(
          icon,
          width: 68,
          height: 68,
        ),
        const SizedBox(
          height: 8,
        ),
        Text(
          name,
          style: const TextStyle(fontSize: 13),
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 270,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          PageView(
            onPageChanged: (index) {
              setState(() {
                currentIndex = index;
              });
            },
            children: [itemBuild(data), itemBuild(dataS)],
          ),
          // 底部创建两个圆点指示器下标
          Positioned(
            bottom: 20,
            left: 0,
            right: 0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(2, (index) {
                return Container(
                  width: 6,
                  height: 6,
                  margin: const EdgeInsets.only(right: 5),
                  decoration: BoxDecoration(
                    color: currentIndex == index
                        ? const Color(0xFF8B8B8B)
                        : const Color(0xFFBBBBBB),
                    borderRadius: BorderRadius.circular(50),
                  ),
                );
              }),
            ),
          )
        ],
      ),
    );
  }
}
