import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:personal_setting_personal_information_facebook_pay/commons/constants/personal_setting_common.dart';
import 'package:personal_setting_personal_information_facebook_pay/commons/widgets/general_component.dart';
import 'package:personal_setting_personal_information_facebook_pay/commons/widgets/title_description_and_content_list.dart';

class PrivateRulesSettingPage extends StatefulWidget {
  @override
  State<PrivateRulesSettingPage> createState() =>
      _PrivateRulesSettingPageState();
}

class _PrivateRulesSettingPageState extends State<PrivateRulesSettingPage> {
  late double width = 0;
  late double height = 0;

  String _selectedBottomNavigator = "Trang chủ";

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    width = size.width;
    height = size.height;
    return Scaffold(
      backgroundColor: Colors.red[900],
      body: GestureDetector(
        onTap: (() {
          FocusManager.instance.primaryFocus!.unfocus();
        }),
        child: Stack(
          children: [
            Column(children: [
              // pop icon and search setting input
              Container(
                margin: EdgeInsets.only(top: 50, bottom: 10),
                child:
                    Row(mainAxisAlignment: MainAxisAlignment.start, children: [
                  Container(
                    height: 50,
                    child: GestureDetector(
                      onTap: () => Navigator.of(context).pop(),
                      child: Icon(
                        SettingCommon.BACK_ICON_DATA,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Expanded(
                      child: Center(
                    child: Text(
                      PrivateRulesSettingCommon.PRIVATE_RULES_APPBAR_TITLE,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.bold),
                    ),
                  )),
                ]),
              ),
              // main content
              Expanded(
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  color: Colors.grey[900],
                  child: ListView(
                    padding: EdgeInsets.zero,
                    children: [
                       ],
                  ),
                ),
              ),
            ]),
            // bottom navigator
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  color: Colors.grey[800],
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children:
                        SettingCommon.BOTTOM_NAVIGATOR_ITEM_LIST.map((item) {
                      return GestureDetector(
                        onTap: (() {
                          setState(() {
                            _selectedBottomNavigator = item[1];
                          });
                        }),
                        child: Container(
                          height: 50,
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                // Container(height: 8, color: Colors.blue),
                                item[0] is IconData
                                    ? Container(
                                        height:
                                            item[1] == _selectedBottomNavigator
                                                ? 35
                                                : 30,
                                        width:
                                            item[1] == _selectedBottomNavigator
                                                ? 35
                                                : 30,
                                        child: Icon(
                                          item[0],
                                          color: item[1] ==
                                                  _selectedBottomNavigator
                                              ? Colors.blue
                                              : Colors.white,
                                          size: 22,
                                        ),
                                      )
                                    : Container(
                                        height:
                                            item[1] == _selectedBottomNavigator
                                                ? 35
                                                : 30,
                                        width:
                                            item[1] == _selectedBottomNavigator
                                                ? 35
                                                : 30,
                                        padding: EdgeInsets.all(5),
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(15))),
                                        child: Image.asset(
                                          item[0],
                                        ),
                                      ),
                                Wrap(
                                  children: [
                                    Text(
                                      item[1],
                                      style: TextStyle(
                                          color: item[1] ==
                                                  _selectedBottomNavigator
                                              ? Colors.blue
                                              : Colors.white,
                                          fontSize: item[1] ==
                                                  _selectedBottomNavigator
                                              ? 12
                                              : 10),
                                    )
                                  ],
                                )
                              ]),
                        ),
                      );
                    }).toList(),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
