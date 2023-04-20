import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'filament_3d_method_channel.dart';

abstract class Filament3dPlatform extends PlatformInterface {
  /// Constructs a Filament3dPlatform.
  Filament3dPlatform() : super(token: _token);

  static final Object _token = Object();

  static Filament3dPlatform _instance = MethodChannelFilament3d();

  /// The default instance of [Filament3dPlatform] to use.
  ///
  /// Defaults to [MethodChannelFilament3d].
  static Filament3dPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [Filament3dPlatform] when
  /// they register themselves.
  static set instance(Filament3dPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
