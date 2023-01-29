import 'package:flutter_dotenv/flutter_dotenv.dart';

class Config {
  static String get projectId => _get('PROJECTID');
  static String get storageBucket => _get('STORAGEBUCKET');
  static String get messagingSenderIdWeb => _get('MESSAGINGSENDERID');

  static String get apiKeyWeb => _get('APIKEYWEB');
  static String get appIdWeb => _get('APPIDWEB');
  static String get authDomainWeb => _get('AUTHDOMAINWEB');
  static String get measurementIdWeb => _get('MEASUREMENTIDWEB');

  static String get apiKeyAndroid => _get('APIKEYANDROID');
  static String get appIdAndroid => _get('APPIDANDROID');

  static String get apiKeyIos => _get('APIKEYIOS');
  static String get appIdIos => _get('APPIDIOS');
  static String get iosBundleId => _get('IOSBUNDLEID');
  static String get iosClientId => _get('IOSCLIENTID');

  static String _get(String name) => dotenv.env[name] ?? '';
}