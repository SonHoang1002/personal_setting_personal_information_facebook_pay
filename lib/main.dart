import 'package:flutter/material.dart';
import 'package:personal_setting_personal_information_facebook_pay/tests/counter_provider.dart';
import 'package:provider/provider.dart';

import 'modules/personal_setting/export_private_setting_screen.dart';

void main() {
  Provider.debugCheckInvalidValueType = null;
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider<CounterProvider>(
        create: (context) => CounterProvider(),
      ),
    ],
    child: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),

      // setting 
      home: OnBoardSettingPage(),
      // test
      // setting 
      // home: TestScreen(),
    );
  }
}
