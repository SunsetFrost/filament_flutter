
import 'filament_3d_platform_interface.dart';

class Filament3d {
  Future<String?> getPlatformVersion() {
    return Filament3dPlatform.instance.getPlatformVersion();
  }
}
