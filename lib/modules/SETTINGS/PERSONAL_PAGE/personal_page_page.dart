import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:personal_setting_personal_information_facebook_pay/commons/widgets/bottom_navigator_bar_widget.dart';
import 'package:personal_setting_personal_information_facebook_pay/commons/widgets/information_component_widget.dart';
import 'package:personal_setting_personal_information_facebook_pay/commons/widgets/title_description_and_content_list.dart';
import 'package:personal_setting_personal_information_facebook_pay/modules/SETTINGS/PERSONAL_PAGE/personal_page_common.dart';
import 'package:personal_setting_personal_information_facebook_pay/modules/SETTINGS/PERSONAL_PAGE/sub_modules_1/private_rule_settings_modules/private_rule_settings_page.dart';
import 'package:personal_setting_personal_information_facebook_pay/modules/SETTINGS/setting_commons/general_settings_common.dart';

class PersonalSettingsPage extends StatelessWidget {
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
                        SettingCommons.BACK_ICON_DATA,
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
                            hintText:
                                SettingCommons.PLACE_HOLDER_SEARCH_APPBAR_TITLE,
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
                  // padding: const EdgeInsets.symmetric(horizontal: 15),
                  color: Colors.grey[900],
                  child: ListView(
                    padding: EdgeInsets.zero,
                    children: [
                      // private rules
                      TitleDescriptionAndContentListWidget(
                          title: PersonalPageCommon.PRIVATE_TITLE,
                          subTitle: PersonalPageCommon.PRIVATE_DESCRIPTION,
                          listView: Container(
                            height: 305,
                            child: ListView.builder(
                                padding: EdgeInsets.zero,
                                itemCount: PersonalPageCommon
                                    .PRIVATE_INFORMATION_LIST.length,
                                itemBuilder: ((context, index) {
                                  return GestureDetector(
                                    onTap: () {
                                      // final list = PersonalPageCommon
                                      //     .PRIVATE_INFORMATION_LIST;
                                      //////////////////////////h/////////////////////////////////////////////////////////////////////
                                      switch (PersonalPageCommon
                                              .PRIVATE_INFORMATION_LIST[index]
                                          ["key"]) {
                                        case "private_rule":
                                          {
                                            Navigator.of(context).push(
                                                MaterialPageRoute(
                                                    builder: (_) =>
                                                        PrivateRulesSettingPage()));
                                            break;
                                          }
                                        case "personal_page_and_tag":
                                          {
                                            {
                                              ScaffoldMessenger.of(context)
                                                  .showSnackBar(SnackBar(
                                                      content: Text(
                                                          "Trang ca nhan ...")));
                                              break;
                                            }
                                          }
                                        case "public_post":
                                          {
                                            {
                                              ScaffoldMessenger.of(context)
                                                  .showSnackBar(SnackBar(
                                                      content: Text(
                                                          "Bài viết công khai ...")));
                                              break;
                                            }
                                          }
                                        case "block":
                                          {
                                            {
                                              ScaffoldMessenger.of(context)
                                                  .showSnackBar(SnackBar(
                                                      content: Text(
                                                          "Bài viết công khai ...")));
                                              break;
                                            }
                                          }
                                        default:
                                          {
                                            ScaffoldMessenger.of(context)
                                                .showSnackBar(SnackBar(
                                                    content: Text(
                                                        "Trạng thái hoạt động ...")));
                                            break;
                                          }
                                      }
                                    },
                                    child: GeneralComponent(
                                      [
                                        Text(
                                            PersonalPageCommon
                                                    .PRIVATE_INFORMATION_LIST[
                                                index]["data"]["title"],
                                            style: TextStyle(
                                                fontSize: 15,
                                                fontWeight: FontWeight.bold,
                                                color: Colors.white)),
                                        Text(
                                            PersonalPageCommon
                                                    .PRIVATE_INFORMATION_LIST[
                                                index]["data"]["subTitle"],
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
                                          PersonalPageCommon
                                                  .PRIVATE_INFORMATION_LIST[
                                              index]["data"]["icon"],
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
                        title: PersonalPageCommon.NOTIFICATION_TITLE,
                        subTitle: PersonalPageCommon.NOTIFICATION_DESCRIPTION,
                        listView: Container(
                          height: 340,
                          child: ListView.builder(
                              padding: EdgeInsets.zero,
                              itemCount: PersonalPageCommon
                                  .NOTIFICATION_INFORMATION_LIST.length,
                              itemBuilder: ((context, index) {
                                return GestureDetector(
                                  onTap: () {
                                    ////
                                  },
                                  child: GeneralComponent(
                                    [
                                      Text(
                                          PersonalPageCommon
                                                  .NOTIFICATION_INFORMATION_LIST[
                                              index]["data"]["title"],
                                          style: TextStyle(
                                              fontSize: 15,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.white)),
                                      Text(
                                          PersonalPageCommon
                                                  .NOTIFICATION_INFORMATION_LIST[
                                              index]["data"]["subTitle"],
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
                                        PersonalPageCommon
                                                .NOTIFICATION_INFORMATION_LIST[
                                            index]["data"]["icon"],
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
                        title: PersonalPageCommon
                            .YOUR_INFORMATION_IN_FACEBOOK_TITLE,
                        subTitle: PersonalPageCommon
                            .YOUR_INFORMATION_IN_FACEBOOK_DESCRIPTION,
                        listView: Container(
                          height: 290,
                          child: ListView.builder(
                              padding: EdgeInsets.zero,
                              itemCount: PersonalPageCommon
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
                                          PersonalPageCommon
                                                  .YOUR_INFORMATION_IN_FACEBOOK_INFORMATION_LIST[
                                              index]["data"]["title"],
                                          style: TextStyle(
                                              fontSize: 15,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.white)),
                                      Text(
                                          PersonalPageCommon
                                                  .YOUR_INFORMATION_IN_FACEBOOK_INFORMATION_LIST[
                                              index]["data"]["subTitle"],
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
                                        PersonalPageCommon
                                                .YOUR_INFORMATION_IN_FACEBOOK_INFORMATION_LIST[
                                            index]["data"]["icon"],
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
                        title: PersonalPageCommon.FEED_SETTINGS_TITLE,
                        subTitle: PersonalPageCommon.FEED_SETTINGS_DESCRIPTION,
                        listView: Container(
                          height: 120,
                          child: ListView.builder(
                              padding: EdgeInsets.zero,
                              itemCount: PersonalPageCommon
                                  .FEED_SETTINGS_INFORMATION_LIST.length,
                              itemBuilder: ((context, index) {
                                return GestureDetector(
                                  onTap: () {
                                    ////
                                  },
                                  child: GeneralComponent(
                                    [
                                      Text(
                                          PersonalPageCommon
                                                  .FEED_SETTINGS_INFORMATION_LIST[
                                              index]["data"]["title"],
                                          style: TextStyle(
                                              fontSize: 15,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.white)),
                                      Text(
                                          PersonalPageCommon
                                                  .FEED_SETTINGS_INFORMATION_LIST[
                                              index]["data"]["subTitle"],
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
                                        PersonalPageCommon
                                                .FEED_SETTINGS_INFORMATION_LIST[
                                            index]["data"]["icon"],
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
                        title: PersonalPageCommon.STORY_TITLE,
                        subTitle: PersonalPageCommon.STORY_DESCRIPTION,
                        listView: Container(
                          height: 70,
                          child: ListView.builder(
                              padding: EdgeInsets.zero,
                              itemCount: PersonalPageCommon
                                  .STORY_INFORMATION_LIST.length,
                              itemBuilder: ((context, index) {
                                return GestureDetector(
                                  onTap: () {
                                    ////
                                  },
                                  child: GeneralComponent(
                                    [
                                      Text(
                                          PersonalPageCommon
                                                  .STORY_INFORMATION_LIST[index]
                                              ["data"]["title"],
                                          style: TextStyle(
                                              fontSize: 15,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.white)),
                                      Text(
                                          PersonalPageCommon
                                                  .STORY_INFORMATION_LIST[index]
                                              ["data"]["subTitle"],
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
                                        PersonalPageCommon
                                                .STORY_INFORMATION_LIST[index]
                                            ["data"]["icon"],
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
                        title: PersonalPageCommon.SHORTCUT_TITLE,
                        subTitle: PersonalPageCommon.SHORTCUT_DESCRIPTION,
                        listView: Container(
                          height: 70,
                          child: ListView.builder(
                              padding: EdgeInsets.zero,
                              itemCount: PersonalPageCommon
                                  .SHORTCUT_INFORMATION_LIST.length,
                              itemBuilder: ((context, index) {
                                return GestureDetector(
                                  onTap: () {
                                    ////
                                  },
                                  child: GeneralComponent(
                                    [
                                      Text(
                                          PersonalPageCommon
                                                  .SHORTCUT_INFORMATION_LIST[
                                              index]["data"]["title"],
                                          style: TextStyle(
                                              fontSize: 15,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.white)),
                                      Text(
                                          PersonalPageCommon
                                                  .SHORTCUT_INFORMATION_LIST[
                                              index]["data"]["subTitle"],
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
                                        PersonalPageCommon
                                                .SHORTCUT_INFORMATION_LIST[
                                            index]["data"]["icon"],
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
            
            buildBottomNavigatorBarWidget(context)  ],
        ),
      ),
    );
  }
}
