/*
referent [https://stacksecrets.com/flutter/environment-configuration-in-flutter-app]
*/
import 'package:flutter/material.dart';

part 'dev_config.dart';
part 'prod_config.dart';
part 'staging_config.dart';

abstract class BaseConfig {
  String get apiHost;
  String get apiAuth;
  String get mode => 'dev';
  bool get useHttps;
  bool get trackEvents;
  bool get reportErrors;
}

class Environment {
  factory Environment() {
    return _singleton;
  }

  Environment._internal();

  static final Environment _singleton = Environment._internal();

  static const String dev = 'DEV';
  static const String staging = 'STAGING';
  static const String prod = 'PROD';

  static BaseConfig config = DevConfig();

  static initConfig(String environment) {
    config = _getConfig(environment);
  }

  static BaseConfig _getConfig(String environment) {
    switch (environment) {
      case Environment.prod:
        return ProdConfig();
      case Environment.staging:
        return StagingConfig();
      default:
        return DevConfig();
    }
  }
}

class AppConfig {
  static const String defaultLocale = 'lo';
  static const String appName = 'Lapest';
  static const String appVersion = '1.0.0';
  static const String fontFamily = 'phetsarath';
  static const developBy = 'Design & Developer by Lapest';

  static const appColor = Color.fromARGB(255, 241, 188, 13);
  static const whiteColor = Colors.white;
  static const blackColor = Colors.black;
  static const greyColor = Colors.grey;
  static const redColor = Colors.red;
  static const defaultPadding = 14.0;
  static const defaultBorderRadius = 10.0;
}
