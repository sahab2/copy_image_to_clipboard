import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:copy_image_to_clipboard/copy_image_to_clipboard.dart';

void main() {
  const MethodChannel channel = MethodChannel('copy_image_to_clipboard');

  TestWidgetsFlutterBinding.ensureInitialized();

  setUp(() {
    channel.setMockMethodCallHandler((MethodCall methodCall) async {
      return '42';
    });
  });

  tearDown(() {
    channel.setMockMethodCallHandler(null);
  });

  test('getPlatformVersion', () async {
    expect(await CopyImageToClipboard.platformVersion, '42');
  });
}
