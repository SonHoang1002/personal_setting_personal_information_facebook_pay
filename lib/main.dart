import 'package:flutter/material.dart';
import 'package:personal_setting_personal_information_facebook_pay/modules/SETTINGS/general_settings_page.dart';
import 'package:personal_setting_personal_information_facebook_pay/providers/route_provider.dart';
import 'package:personal_setting_personal_information_facebook_pay/tests/counter_provider.dart';
import 'package:personal_setting_personal_information_facebook_pay/tests/test_screen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MultiProvider(providers: [
    ChangeNotifierProvider(create: (_) => CounterProvider(),),
    ChangeNotifierProvider(create: (_)=> RouteProvider())
  ], child: MyApp()));
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
      // home: PersonalSettingsPage(),
      home: GeneralSettingsPage(),
      // test
      // setting
      // home: TestScreen(),
    );
  }
}
