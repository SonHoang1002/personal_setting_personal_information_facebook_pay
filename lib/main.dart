
import 'package:flutter/material.dart';
import 'package:personal_setting_personal_information_facebook_pay/tests/counter_provider.dart';
import 'package:personal_setting_personal_information_facebook_pay/tests/test_screen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(ChangeNotifierProvider(
        create: (_) => CounterProvider(),
        child: MyApp()));
}



class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
          title: 'Flutter Demo',
          theme: ThemeData(
            primarySwatch: Colors.blue,
          ),
          // setting
          // home: PersonalSettingsPage(),
          // home: OnBoardSettingPage(),
          // test
          // setting
          home: TestScreen(),
        );
  }
}

