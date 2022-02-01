
import 'dart:async';
import 'dart:typed_data';

import 'package:flutter/services.dart';

class CopyImageToClipboard {
  static const MethodChannel _channel = MethodChannel('copy_image_to_clipboard');

  static Future<String?> get platformVersion async {
    final String? version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }
  static Future copyImage(Uint8List image)async{

   return await _channel.invokeListMethod("copyImage",image);
  }
}
