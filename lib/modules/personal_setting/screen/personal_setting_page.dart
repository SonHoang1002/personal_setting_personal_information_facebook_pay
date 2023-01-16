import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:personal_setting_personal_information_facebook_pay/commons/constants/personal_setting_common.dart';
import 'package:personal_setting_personal_information_facebook_pay/commons/widgets/general_component.dart';
import 'package:personal_setting_personal_information_facebook_pay/commons/widgets/title_description_and_content_list.dart';

class PersonalSettingsPage extends StatefulWidget {
  @override
  State<PersonalSettingsPage> createState() => _PersonalSettingsPageState();
}

class _PersonalSettingsPageState extends State<PersonalSettingsPage> {
  late double width = 0;
  late double height = 0;

  String _selectedBottomNavigator = "Trang chủ";

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    width = size.width;
    height = size.height;
    return Scaffold(
      backgroundColor: Colors.grey[900],
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
                    child: SizedBox(
                      height: 35,
                      child: TextFormField(
                        onChanged: ((value) {}),
                        textAlign: TextAlign.left,
                        style: const TextStyle(color: Colors.white),
                        decoration: InputDecoration(
                            prefixIcon: Icon(
                              FontAwesomeIcons.search,
                              color: Colors.grey,
                              size: 13,
                            ),
                            fillColor: Colors.grey[800],
                            filled: true,
                            contentPadding: EdgeInsets.fromLTRB(0, 5, 0, 0),
                            hintText: SettingCommon.PLACE_HOLDER_SEARCH,
                            hintStyle:
                                TextStyle(color: Colors.white, fontSize: 14),
                            border: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(17)))),
                      ),
                    ),
                  ),
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
                      // private rules
                      TitleDescriptionAndContentListWidget(
                        title: PersonalSettingsCommon.PRIVATE_TITLE,
                        subTitle: PersonalSettingsCommon.PRIVATE_DESCRIPTION,
                        contentList:
                            PersonalSettingsCommon.PRIVATE_INFORMATION_LIST,
                        height: 355,
                      ),
                      // notification
                      TitleDescriptionAndContentListWidget(
                        title: PersonalSettingsCommon.NOTIFICATION_TITLE,
                        subTitle:
                            PersonalSettingsCommon.NOTIFICATION_DESCRIPTION,
                        contentList: PersonalSettingsCommon
                            .NOTIFICATION_INFORMATION_LIST,
                        height: 340,
                      ),
                      // your information in facebook
                      TitleDescriptionAndContentListWidget(
                        title: PersonalSettingsCommon
                            .YOUR_INFORMATION_IN_FACEBOOK_TITLE,
                        subTitle: PersonalSettingsCommon
                            .YOUR_INFORMATION_IN_FACEBOOK_DESCRIPTION,
                        contentList: PersonalSettingsCommon
                            .YOUR_INFORMATION_IN_FACEBOOK_INFORMATION_LIST,
                        height: 290,
                      ),
                      //  file and contact
                      TitleDescriptionAndContentListWidget(
                        title: PersonalSettingsCommon.FEED_SETTINGS_TITLE,
                        subTitle:
                            PersonalSettingsCommon.FEED_SETTINGS_DESCRIPTION,
                        contentList: PersonalSettingsCommon
                            .FEED_SETTINGS_INFORMATION_LIST,
                        height: 120,
                      ),
                      //  file and contact
                      TitleDescriptionAndContentListWidget(
                        title: PersonalSettingsCommon.STORY_TITLE,
                        subTitle:
                            PersonalSettingsCommon.STORY_DESCRIPTION,
                        contentList: PersonalSettingsCommon
                            .STORY_INFORMATION_LIST,
                        height: 70,
                      ),
                      TitleDescriptionAndContentListWidget(
                        title: PersonalSettingsCommon.SHORTCUT_TITLE,
                        subTitle:
                            PersonalSettingsCommon.SHORTCUT_DESCRIPTION,
                        contentList: PersonalSettingsCommon
                            .SHORTCUT_INFORMATION_LIST,
                        height: 70,
                      ),
                      Container(height: 50,)
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
