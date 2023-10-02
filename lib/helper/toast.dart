import 'package:bot_toast/bot_toast.dart';
import 'package:flutter/material.dart';

// 成功 toast
showSuccessToast(String message,
    {Duration duration = const Duration(seconds: 2)}) {
  BotToast.showCustomText(
    duration: duration,
    onlyOne: true,
    animationDuration: const Duration(milliseconds: 200),
    animationReverseDuration: const Duration(milliseconds: 200),
    toastBuilder: (_) => Align(
      child: Card(
        color: const Color(0xFF4C4C4C),
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              const Icon(
                Icons.done_outlined,
                color: Color(0xE5FFFFFF),
              ),
              const SizedBox(
                width: 5,
              ),
              Text(
                message,
                style: const TextStyle(color: Color(0xE5FFFFFF)),
              ),
            ],
          ),
        ),
      ),
    ),
  );
}

// 失败 toast
showErrorToast(String message,
    {Duration duration = const Duration(seconds: 2)}) {
  BotToast.showCustomText(
    duration: duration,
    onlyOne: true,
    animationDuration: const Duration(milliseconds: 200),
    animationReverseDuration: const Duration(milliseconds: 200),
    toastBuilder: (_) => Align(
      child: Card(
        color: const Color(0xFF4C4C4C),
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              const Icon(
                Icons.error_outline,
                color: Color(0xE5FFFFFF),
              ),
              const SizedBox(
                width: 5,
              ),
              Text(
                message,
                style: const TextStyle(color: Color(0xE5FFFFFF)),
              ),
            ],
          ),
        ),
      ),
    ),
  );
}
