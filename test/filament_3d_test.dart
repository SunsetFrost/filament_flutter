import 'package:flutter_test/flutter_test.dart';
import 'package:filament_3d/filament_3d.dart';
import 'package:filament_3d/filament_3d_platform_interface.dart';
import 'package:filament_3d/filament_3d_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockFilament3dPlatform
    with MockPlatformInterfaceMixin
    implements Filament3dPlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final Filament3dPlatform initialPlatform = Filament3dPlatform.instance;

  test('$MethodChannelFilament3d is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelFilament3d>());
  });

  test('getPlatformVersion', () async {
    Filament3d filament3dPlugin = Filament3d();
    MockFilament3dPlatform fakePlatform = MockFilament3dPlatform();
    Filament3dPlatform.instance = fakePlatform;

    expect(await filament3dPlugin.getPlatformVersion(), '42');
  });
}
