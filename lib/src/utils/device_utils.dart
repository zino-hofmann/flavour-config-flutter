import 'package:flutter/foundation.dart';

import 'package:device_info/device_info.dart';

enum BuildMode {
  DEBUG,
  PROFILE,
  RELEASE,
}

class DeviceUtils {
  /// Returns the current build mode.
  static BuildMode currentBuildMode() {
    if (kReleaseMode) {
      return BuildMode.RELEASE;
    }

    if (kProfileMode) {
      return BuildMode.PROFILE;
    }

    return BuildMode.DEBUG;
  }

  /// Returns a [Future] resolving into [AndroidDeviceInfo].
  static Future<AndroidDeviceInfo> androidDeviceInfo() async {
    final plugin = DeviceInfoPlugin();

    return plugin.androidInfo;
  }

  /// Returns a [Future] resolving into [IosDeviceInfo].
  static Future<IosDeviceInfo> iosDeviceInfo() async {
    final plugin = DeviceInfoPlugin();

    return plugin.iosInfo;
  }
}
