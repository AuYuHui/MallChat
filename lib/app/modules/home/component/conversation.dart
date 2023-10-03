import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:intl/intl.dart';
import 'package:mallchat/app/config/colors.dart';
import 'package:mallchat/models/session_model.dart';

class ConverSation extends StatefulWidget {
  final int id;
  final SessionModel session;
  final VoidCallback onDelete;
  final VoidCallback onTap;

  const ConverSation(
      {super.key,
      required this.id,
      required this.onDelete,
      required this.onTap,
      required this.session});

  @override
  State<ConverSation> createState() => _ConverSationState();
}

class _ConverSationState extends State<ConverSation> {
  DateFormat format = DateFormat('HH:mm');
  @override
  Widget build(BuildContext context) {
    return Slidable(
      key: ValueKey(widget.id),
      groupTag: 'aaaa', // // 把所有item归类到一个组, 保证同时只出现一个滑动的效果
      endActionPane: ActionPane(
        extentRatio: 0.3,
        motion: const ScrollMotion(),
        children: [
          SlidableAction(
            onPressed: (context) => widget.onDelete(),
            backgroundColor: Colors.redAccent,
            foregroundColor: Colors.white,
            icon: Icons.delete_outline_outlined,
            label: '删除',
          ),
        ],
      ),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        width: MediaQuery.of(context).size.width,
        margin: const EdgeInsets.only(bottom: 20),
        child: GestureDetector(
          onTap: widget.onTap,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(8.0),
                child: Image.network(
                  widget.session.avatar,
                  width: 60,
                  height: 60,
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(
                width: 18,
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      widget.session.name,
                      style: const TextStyle(
                          fontSize: 16,
                          color: lightColor.defaultText,
                          fontWeight: FontWeight.w500),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(bottom: 8),
                    ),
                    Text(
                      widget.session.text,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: const TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: lightColor.subText),
                    )
                  ],
                ),
              ),
              Text(
                format.format(DateTime.fromMillisecondsSinceEpoch(
                    widget.session.activeTime)),
                textAlign: TextAlign.start,
                style: const TextStyle(color: lightColor.subText, fontSize: 13),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
