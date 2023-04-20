import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:filament_3d/filament_3d_method_channel.dart';

void main() {
  MethodChannelFilament3d platform = MethodChannelFilament3d();
  const MethodChannel channel = MethodChannel('filament_3d');

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
    expect(await platform.getPlatformVersion(), '42');
  });
}
