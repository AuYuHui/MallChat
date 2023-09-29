import 'dart:io';

import 'package:logger/logger.dart' as logger;
import 'package:mallchat/helper/platform.dart';

class Logger {
  static final logger.Logger instance = logger.Logger(
    printer: logger.PrettyPrinter(
      lineLength: 120,
      printTime: true,
      noBoxingByDefault: true,
    ),
    output: logger.MultiOutput(
      [
        logger.ConsoleOutput(),
        if (!PlatformTool.isWeb())
          logger.FileOutput(
            file: File(
              '${Directory.systemTemp.path}/log.txt',
            ),
            overrideExisting: true,
          ),
      ],
    ),
  );
}
