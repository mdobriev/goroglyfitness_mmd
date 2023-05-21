import 'package:app/src/app.dart';
import 'package:flutter/material.dart';
//import 'package:parse_server_sdk';
import 'package:parse_server_sdk_flutter/parse_server_sdk_flutter.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final keyApplicationId = 'appId';
  final keyClientKey = 'clientKey';
  final keyParseServerUrl = 'http://192.168.10.234:1337/parse';

  await Parse().initialize(keyApplicationId, keyParseServerUrl,
      clientKey: keyClientKey, autoSendSessionId: true);

  runApp(const MyApp());
}
//void main() {
 // runApp(const MyApp());
//}