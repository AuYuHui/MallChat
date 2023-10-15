import 'package:flutter/material.dart';

class ChatMore extends StatefulWidget {
  final Function(String) callBack;

  const ChatMore({super.key, required this.callBack});

  @override
  State<ChatMore> createState() => _ChatMoreState();
}

class _ChatMoreState extends State<ChatMore> {
  int currentIndex = 0;

  List data = [
    {"name": "图片", "icon": "assets/images/photo.png", "type": 'photo'},
    {"name": "拍摄", "icon": "assets/images/capture.png", "type": "capture"},
    {"name": "文件", "icon": "assets/images/files.png", "type": "files"},
    {
      "name": "视频通话",
      "icon": "assets/images/videoChat.png",
      "type": "videoChat"
    },
    {"name": "位置", "icon": "assets/images/location.png", "type": "location"},
    {
      "name": "语音输入",
      "icon": "assets/images/voiceInput.png",
      "type": "voiceInput"
    },
    {"name": "收藏", "icon": "assets/images/favorite.png", "type": "favorite"},
    {
      "name": "群工具",
      "icon": "assets/images/groupTools.png",
      "type": "groupTools"
    },
  ];

  List dataS = [
    {"name": "红包", "icon": "assets/images/redPacket.png", "type": "redPacket"},
  ];

  itemBuild(data) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 0.0, vertical: 5),
      child: Wrap(
        runSpacing: 15.0,
        spacing: 25.0,
        alignment: WrapAlignment.start,
        children: List.generate(data.length, (index) {
          String name = data[index]['name'];
          String icon = data[index]['icon'];
          String type = data[index]['type'];
          return moreItem(name, icon, type);
        }),
      ),
    );
  }

  moreItem(String name, String icon, String type) {
    return GestureDetector(
      onTap: () {
        widget.callBack(type);
      },
      child: Column(
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
      ),
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
