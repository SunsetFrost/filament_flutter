
import 'filament_3d_flutter_platform_interface.dart';

class Filament3dFlutter {
  Future<String?> getPlatformVersion() {
    return Filament3dFlutterPlatform.instance.getPlatformVersion();
  }
}
