import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'filament_3d_flutter_platform_interface.dart';

/// An implementation of [Filament3dFlutterPlatform] that uses method channels.
class MethodChannelFilament3dFlutter extends Filament3dFlutterPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('filament_3d_flutter');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
