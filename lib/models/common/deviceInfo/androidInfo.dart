import 'package:device_info/device_info.dart';

class AndroidInfo {
  DeviceInfoPlugin _plugin = new DeviceInfoPlugin();
  Future<Map<String, String>> get info async {
    AndroidDeviceInfo _androidInfo = await _plugin.androidInfo;
    return {
      'deviceName':
          '${_androidInfo.manufacturer} ${_androidInfo.model} on Android ${_androidInfo.version.release}',
      'deviceUUID': _androidInfo.androidId,
      'deviceType': 'ANDROID'
    };
  }
}
