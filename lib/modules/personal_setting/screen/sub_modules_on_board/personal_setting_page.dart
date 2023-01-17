import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:personal_setting_personal_information_facebook_pay/commons/constants/personal_setting_common.dart';
import 'package:personal_setting_personal_information_facebook_pay/commons/widgets/general_component.dart';
import 'package:personal_setting_personal_information_facebook_pay/commons/widgets/title_description_and_content_list.dart';
import 'package:personal_setting_personal_information_facebook_pay/modules/personal_setting/screen/sub_modules_on_board/sub_module_personal_setting/private_rule_settings._page.dart';

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
                          listView: Container(
                            height: 355,
                            child: ListView.builder(
                                padding: EdgeInsets.zero,
                                itemCount: PersonalSettingsCommon
                                    .PRIVATE_INFORMATION_LIST.length,
                                itemBuilder: ((context, index) {
                                  return GestureDetector(
                                    onTap: () {
                                      // final list = PersonalSettingsCommon
                                      //     .PRIVATE_INFORMATION_LIST;
                                      // switch (PersonalSettingsCommon
                                      //     .PRIVATE_INFORMATION_LIST[index]
                                      //     .title) {
                                      //   case "Quyền riêng tư":
                                      //   case "Trang cá nhân và gắn thẻ":
                                        
                                      // }
                                      // for (int i = 0;
                                      //     i <
                                      //         PersonalSettingsCommon
                                      //             .PRIVATE_INFORMATION_LIST
                                      //             .length;
                                      //     i++) {
                                      //   if (PersonalSettingsCommon
                                      //           .PRIVATE_INFORMATION_LIST[index]
                                      //           .title ==
                                      //       PersonalSettingsCommon
                                      //           .PRIVATE_INFORMATION_LIST[i]
                                      //           .title) {
                                      //     Navigator.of(context).push(
                                      //         MaterialPageRoute(
                                      //             builder: (_) =>
                                      //                 PrivateRulesSettingPage()));
                                      //     return;
                                      //   }
                                      // }
                                    },
                                    child: GeneralComponent(
                                      [
                                        Text(
                                            PersonalSettingsCommon
                                                .PRIVATE_INFORMATION_LIST[index]
                                                .title,
                                            style: TextStyle(
                                                fontSize: 15,
                                                fontWeight: FontWeight.bold,
                                                color: Colors.white)),
                                        Text(
                                            PersonalSettingsCommon
                                                .PRIVATE_INFORMATION_LIST[index]
                                                .description,
                                            style: TextStyle(
                                                fontSize: 15,
                                                color: Colors.grey)),
                                      ],
                                      prefixWidget: Container(
                                        height: 40,
                                        width: 40,
                                        padding: EdgeInsets.all(7),
                                        margin: EdgeInsets.only(right: 10),
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(20))),
                                        child: SvgPicture.asset(
                                          PersonalSettingsCommon
                                              .PRIVATE_INFORMATION_LIST[index]
                                              .pathSvg,
                                          color: Colors.white,
                                        ),
                                      ),
                                      changeBackground: Colors.transparent,
                                      padding: EdgeInsets.fromLTRB(0, 5, 0, 7),
                                    ),
                                  );
                                })),
                          )),
                      // notification
                      TitleDescriptionAndContentListWidget(
                        title: PersonalSettingsCommon.NOTIFICATION_TITLE,
                        subTitle:
                            PersonalSettingsCommon.NOTIFICATION_DESCRIPTION,
                        listView: Container(
                          height: 340,
                          child: ListView.builder(
                              padding: EdgeInsets.zero,
                              itemCount: PersonalSettingsCommon
                                  .NOTIFICATION_INFORMATION_LIST.length,
                              itemBuilder: ((context, index) {
                                return GestureDetector(
                                  onTap: () {
                                    ////
                                  },
                                  child: GeneralComponent(
                                    [
                                      Text(
                                          PersonalSettingsCommon
                                                  .NOTIFICATION_INFORMATION_LIST[
                                              index][1],
                                          style: TextStyle(
                                              fontSize: 15,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.white)),
                                      Text(
                                          PersonalSettingsCommon
                                                  .NOTIFICATION_INFORMATION_LIST[
                                              index][2],
                                          style: TextStyle(
                                              fontSize: 15,
                                              color: Colors.grey)),
                                    ],
                                    prefixWidget: Container(
                                      height: 40,
                                      width: 40,
                                      padding: EdgeInsets.all(7),
                                      margin: EdgeInsets.only(right: 10),
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(20))),
                                      child: SvgPicture.asset(
                                        PersonalSettingsCommon
                                                .NOTIFICATION_INFORMATION_LIST[
                                            index][0],
                                        color: Colors.white,
                                      ),
                                    ),
                                    changeBackground: Colors.transparent,
                                    padding: EdgeInsets.fromLTRB(0, 5, 0, 7),
                                  ),
                                );
                              })),
                        ),
                      ),
                      // your information in facebook
                      TitleDescriptionAndContentListWidget(
                        title: PersonalSettingsCommon
                            .YOUR_INFORMATION_IN_FACEBOOK_TITLE,
                        subTitle: PersonalSettingsCommon
                            .YOUR_INFORMATION_IN_FACEBOOK_DESCRIPTION,
                        listView: Container(
                          height: 290,
                          child: ListView.builder(
                              padding: EdgeInsets.zero,
                              itemCount: PersonalSettingsCommon
                                  .YOUR_INFORMATION_IN_FACEBOOK_INFORMATION_LIST
                                  .length,
                              itemBuilder: ((context, index) {
                                return GestureDetector(
                                  onTap: () {
                                    ////
                                  },
                                  child: GeneralComponent(
                                    [
                                      Text(
                                          PersonalSettingsCommon
                                                  .YOUR_INFORMATION_IN_FACEBOOK_INFORMATION_LIST[
                                              index][1],
                                          style: TextStyle(
                                              fontSize: 15,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.white)),
                                      Text(
                                          PersonalSettingsCommon
                                                  .YOUR_INFORMATION_IN_FACEBOOK_INFORMATION_LIST[
                                              index][2],
                                          style: TextStyle(
                                              fontSize: 15,
                                              color: Colors.grey)),
                                    ],
                                    prefixWidget: Container(
                                      height: 40,
                                      width: 40,
                                      padding: EdgeInsets.all(7),
                                      margin: EdgeInsets.only(right: 10),
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(20))),
                                      child: SvgPicture.asset(
                                        PersonalSettingsCommon
                                                .YOUR_INFORMATION_IN_FACEBOOK_INFORMATION_LIST[
                                            index][0],
                                        color: Colors.white,
                                      ),
                                    ),
                                    changeBackground: Colors.transparent,
                                    padding: EdgeInsets.fromLTRB(0, 5, 0, 7),
                                  ),
                                );
                              })),
                        ),
                      ),
                      //  file and contact
                      TitleDescriptionAndContentListWidget(
                        title: PersonalSettingsCommon.FEED_SETTINGS_TITLE,
                        subTitle:
                            PersonalSettingsCommon.FEED_SETTINGS_DESCRIPTION,
                        listView: Container(
                          height: 120,
                          child: ListView.builder(
                              padding: EdgeInsets.zero,
                              itemCount: PersonalSettingsCommon
                                  .FEED_SETTINGS_INFORMATION_LIST.length,
                              itemBuilder: ((context, index) {
                                return GestureDetector(
                                  onTap: () {
                                    ////
                                  },
                                  child: GeneralComponent(
                                    [
                                      Text(
                                          PersonalSettingsCommon
                                                  .FEED_SETTINGS_INFORMATION_LIST[
                                              index][1],
                                          style: TextStyle(
                                              fontSize: 15,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.white)),
                                      Text(
                                          PersonalSettingsCommon
                                                  .FEED_SETTINGS_INFORMATION_LIST[
                                              index][2],
                                          style: TextStyle(
                                              fontSize: 15,
                                              color: Colors.grey)),
                                    ],
                                    prefixWidget: Container(
                                      height: 40,
                                      width: 40,
                                      padding: EdgeInsets.all(7),
                                      margin: EdgeInsets.only(right: 10),
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(20))),
                                      child: SvgPicture.asset(
                                        PersonalSettingsCommon
                                                .FEED_SETTINGS_INFORMATION_LIST[
                                            index][0],
                                        color: Colors.white,
                                      ),
                                    ),
                                    changeBackground: Colors.transparent,
                                    padding: EdgeInsets.fromLTRB(0, 5, 0, 7),
                                  ),
                                );
                              })),
                        ),
                      ),
                      //  file and contact
                      TitleDescriptionAndContentListWidget(
                        title: PersonalSettingsCommon.STORY_TITLE,
                        subTitle: PersonalSettingsCommon.STORY_DESCRIPTION,
                        listView: Container(
                          height: 70,
                          child: ListView.builder(
                              padding: EdgeInsets.zero,
                              itemCount: PersonalSettingsCommon
                                  .STORY_INFORMATION_LIST.length,
                              itemBuilder: ((context, index) {
                                return GestureDetector(
                                  onTap: () {
                                    ////
                                  },
                                  child: GeneralComponent(
                                    [
                                      Text(
                                          PersonalSettingsCommon
                                              .STORY_INFORMATION_LIST[index][1],
                                          style: TextStyle(
                                              fontSize: 15,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.white)),
                                      Text(
                                          PersonalSettingsCommon
                                              .STORY_INFORMATION_LIST[index][2],
                                          style: TextStyle(
                                              fontSize: 15,
                                              color: Colors.grey)),
                                    ],
                                    prefixWidget: Container(
                                      height: 40,
                                      width: 40,
                                      padding: EdgeInsets.all(7),
                                      margin: EdgeInsets.only(right: 10),
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(20))),
                                      child: SvgPicture.asset(
                                        PersonalSettingsCommon
                                            .STORY_INFORMATION_LIST[index][0],
                                        color: Colors.white,
                                      ),
                                    ),
                                    changeBackground: Colors.transparent,
                                    padding: EdgeInsets.fromLTRB(0, 5, 0, 7),
                                  ),
                                );
                              })),
                        ),
                      ),
                      // SHORT CUT
                      TitleDescriptionAndContentListWidget(
                        title: PersonalSettingsCommon.SHORTCUT_TITLE,
                        subTitle: PersonalSettingsCommon.SHORTCUT_DESCRIPTION,
                        listView: Container(
                          height: 70,
                          child: ListView.builder(
                              padding: EdgeInsets.zero,
                              itemCount: PersonalSettingsCommon
                                  .SHORTCUT_INFORMATION_LIST.length,
                              itemBuilder: ((context, index) {
                                return GestureDetector(
                                  onTap: () {
                                    ////
                                  },
                                  child: GeneralComponent(
                                    [
                                      Text(
                                          PersonalSettingsCommon
                                                  .SHORTCUT_INFORMATION_LIST[
                                              index][1],
                                          style: TextStyle(
                                              fontSize: 15,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.white)),
                                      Text(
                                          PersonalSettingsCommon
                                                  .SHORTCUT_INFORMATION_LIST[
                                              index][2],
                                          style: TextStyle(
                                              fontSize: 15,
                                              color: Colors.grey)),
                                    ],
                                    prefixWidget: Container(
                                      height: 40,
                                      width: 40,
                                      padding: EdgeInsets.all(7),
                                      margin: EdgeInsets.only(right: 10),
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(20))),
                                      child: SvgPicture.asset(
                                        PersonalSettingsCommon
                                                .SHORTCUT_INFORMATION_LIST[
                                            index][0],
                                        color: Colors.white,
                                      ),
                                    ),
                                    changeBackground: Colors.transparent,
                                    padding: EdgeInsets.fromLTRB(0, 5, 0, 7),
                                  ),
                                );
                              })),
                        ),
                      ),
                      Container(
                        height: 50,
                      )
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
