import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'filament_3d_flutter_method_channel.dart';

abstract class Filament3dFlutterPlatform extends PlatformInterface {
  /// Constructs a Filament3dFlutterPlatform.
  Filament3dFlutterPlatform() : super(token: _token);

  static final Object _token = Object();

  static Filament3dFlutterPlatform _instance = MethodChannelFilament3dFlutter();

  /// The default instance of [Filament3dFlutterPlatform] to use.
  ///
  /// Defaults to [MethodChannelFilament3dFlutter].
  static Filament3dFlutterPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [Filament3dFlutterPlatform] when
  /// they register themselves.
  static set instance(Filament3dFlutterPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
