import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:personal_setting_personal_information_facebook_pay/commons/constants/personal_setting_common.dart';
import 'package:personal_setting_personal_information_facebook_pay/commons/routes/push_to_new_screen.dart';
import 'package:personal_setting_personal_information_facebook_pay/commons/widgets/bottom_navigator_bar_widget.dart';
import 'package:personal_setting_personal_information_facebook_pay/commons/widgets/information_component_widget.dart';
import 'package:personal_setting_personal_information_facebook_pay/commons/widgets/text_content_widget.dart';
import 'package:personal_setting_personal_information_facebook_pay/commons/widgets/title_description_and_content_list.dart';
import 'package:personal_setting_personal_information_facebook_pay/modules/SETTINGS/PERSONAL_PAGE/sub_modules_1/private_rule_settings_modules/private_rule_settings_commons.dart';
import 'package:personal_setting_personal_information_facebook_pay/modules/SETTINGS/PERSONAL_PAGE/sub_modules_1/private_rule_settings_modules/private_rule_shortcut_modules/check_important_settings_modules/check_important_settings_page.dart';
import 'package:personal_setting_personal_information_facebook_pay/modules/SETTINGS/setting_commons/general_settings_common.dart';

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
                margin: EdgeInsets.only(top: 60, bottom: 10),
                child:
                    Row(mainAxisAlignment: MainAxisAlignment.start, children: [
                  Container(
                    // height: 70,
                    child: GestureDetector(
                      onTap: () => Navigator.of(context).pop(),
                      child: Icon(
                        SettingCommons.BACK_ICON_DATA,
                        color: Colors.white,
                        size: 25,
                      ),
                    ),
                  ),
                  Expanded(
                      child: Center(
                    child: Text(
                      PrivateRuleSettingsCommons.PRIVATE_RULES_APPBAR_TITLE,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 17,
                          fontWeight: FontWeight.bold),
                    ),
                  )),
                ]),
              ),
              Divider(height: 10, color: Colors.black),
              // main content
              Expanded(
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  color: Colors.grey[900],
                  child: ListView(
                    padding: EdgeInsets.symmetric(vertical: 5),
                    children: [
                      // PRIVATE_RULE_SHORTCUT
                      Container(
                        margin: EdgeInsets.only(top: 10),
                        child: Column(children: [
                          // title
                          buildTextContent(
                              PrivateRuleSettingsCommons
                                  .PRIVATE_RULE_SHORTCUT["title"],
                              true,
                              fontSize: 20),
                          // content
                          Container(
                            margin: EdgeInsets.only(top: 10),
                            child: ListView.builder(
                                shrinkWrap: true,
                                padding: EdgeInsets.symmetric(vertical: 5),
                                itemCount: PrivateRuleSettingsCommons
                                    .PRIVATE_RULE_SHORTCUT["data"].length,
                                itemBuilder: ((context, index) {
                                  return Column(
                                    children: [
                                      GestureDetector(
                                        onTap: () {
                                          switch (PrivateRuleSettingsCommons
                                                  .PRIVATE_RULE_SHORTCUT["data"]
                                              [index]["key"]) {
                                            case "check_out_a_few_important_settings":
                                              pushToNextScreen(context,
                                                  CheckImportantSettingsPage());
                                          }
                                        },
                                        child: GeneralComponent(
                                          [
                                            buildTextContent(
                                                PrivateRuleSettingsCommons
                                                        .PRIVATE_RULE_SHORTCUT[
                                                    "data"][index]["subTitle"],
                                                true,
                                                fontSize: 17),
                                            SizedBox(
                                              height: 5,
                                            ),
                                            buildTextContent(
                                                PrivateRuleSettingsCommons
                                                        .PRIVATE_RULE_SHORTCUT[
                                                    "data"][index]["content"],
                                                false,
                                                fontSize: 15,
                                                colorWord: Colors.grey),
                                          ],
                                          suffixWidget: Container(
                                            child: Icon(
                                              PrivateRuleSettingsCommons
                                                      .PRIVATE_RULE_SHORTCUT[
                                                  "data"][index]["icon"],
                                              color: Colors.white,
                                              size: 19,
                                            ),
                                          ),
                                          padding:
                                              EdgeInsets.symmetric(vertical: 5),
                                        ),
                                      ),
                                      Divider(
                                        height: 10,
                                        color: Colors.white,
                                      )
                                    ],
                                  );
                                })),
                          ),
                        ]),
                      ),
                      // ACTIVITY_OF_YOU
                      Container(
                        margin: EdgeInsets.only(top: 10),
                        child: Column(children: [
                          // title
                          buildTextContent(
                            PrivateRuleSettingsCommons.ACTIVITY_OF_YOU["title"],
                            true,
                            fontSize: 20,
                          ),
                          // content
                          Container(
                            margin: EdgeInsets.only(top: 10),
                            child: ListView.builder(
                                shrinkWrap: true,
                                padding: EdgeInsets.symmetric(vertical: 5),
                                itemCount: PrivateRuleSettingsCommons
                                    .ACTIVITY_OF_YOU["data"].length,
                                itemBuilder: ((context, index) {
                                  return Column(
                                    children: [
                                      GeneralComponent(
                                        [
                                          buildTextContent(
                                            PrivateRuleSettingsCommons
                                                    .ACTIVITY_OF_YOU["data"]
                                                [index]["subTitle"],
                                            true,
                                            fontSize: 17,
                                          ),
                                          PrivateRuleSettingsCommons
                                                              .ACTIVITY_OF_YOU[
                                                          "data"][index]
                                                      ["content"] ==
                                                  ""
                                              ? Container()
                                              : Column(
                                                  children: [
                                                    SizedBox(
                                                      height: 5,
                                                    ),
                                                    buildTextContent(
                                                        PrivateRuleSettingsCommons
                                                                    .ACTIVITY_OF_YOU[
                                                                "data"][index]
                                                            ["content"],
                                                        false,
                                                        fontSize: 15,
                                                        colorWord: Colors.grey)
                                                  ],
                                                ),
                                        ],
                                        suffixWidget: Container(
                                          child: Icon(
                                            PrivateRuleSettingsCommons
                                                    .ACTIVITY_OF_YOU["data"]
                                                [index]["icon"],
                                            color: Colors.white,
                                            size: 19,
                                          ),
                                        ),
                                        padding:
                                            EdgeInsets.symmetric(vertical: 5),
                                      ),
                                      Divider(
                                        height: 10,
                                        color: Colors.white,
                                      )
                                    ],
                                  );
                                })),
                          ),
                        ]),
                      ),
                      // WAY_TO_FIND_AND_CONTACT_WITH_YOU
                      Container(
                        margin: EdgeInsets.only(top: 10),
                        child: Column(children: [
                          // title
                          buildTextContent(
                            PrivateRuleSettingsCommons
                                .WAY_TO_FIND_AND_CONTACT_WITH_YOU["title"],
                            true,
                            fontSize: 20,
                          ),
                          // content
                          Container(
                            margin: EdgeInsets.only(top: 10),
                            child: ListView.builder(
                                shrinkWrap: true,
                                padding: EdgeInsets.symmetric(vertical: 5),
                                itemCount: PrivateRuleSettingsCommons
                                    .WAY_TO_FIND_AND_CONTACT_WITH_YOU["data"]
                                    .length,
                                itemBuilder: ((context, index) {
                                  return Column(
                                    children: [
                                      GeneralComponent(
                                        [
                                          buildTextContent(
                                            PrivateRuleSettingsCommons
                                                    .WAY_TO_FIND_AND_CONTACT_WITH_YOU[
                                                "data"][index]["subTitle"],
                                            true,
                                            fontSize: 17,
                                          ),
                                          PrivateRuleSettingsCommons
                                                          .WAY_TO_FIND_AND_CONTACT_WITH_YOU[
                                                      "data"][index]["key"] ==
                                                  "who_can_see_your_friends_list"
                                              ? buildTextContent(
                                                  PrivateRuleSettingsCommons
                                                      .ADDTIONAL_FOR_WHO_CAN_SEE_FRIEND_LIST_OF_YOU,
                                                  false,
                                                  colorWord: Colors.white,
                                                  fontSize: 16)
                                              : SizedBox(),
                                          PrivateRuleSettingsCommons
                                                          .WAY_TO_FIND_AND_CONTACT_WITH_YOU[
                                                      "data"][index]["content"] ==
                                                  ""
                                              ? Container()
                                              : Column(
                                                  children: [
                                                    SizedBox(
                                                      height: 5,
                                                    ),
                                                    buildTextContent(
                                                        PrivateRuleSettingsCommons
                                                                    .WAY_TO_FIND_AND_CONTACT_WITH_YOU[
                                                                "data"][index]
                                                            ["content"],
                                                        false,
                                                        fontSize: 15,
                                                        colorWord: Colors.grey)
                                                  ],
                                                ),
                                        ],
                                        suffixWidget: Container(
                                          child: Icon(
                                            PrivateRuleSettingsCommons
                                                    .WAY_TO_FIND_AND_CONTACT_WITH_YOU[
                                                "data"][index]["icon"],
                                            color: Colors.white,
                                            size: 19,
                                          ),
                                        ),
                                        padding:
                                            EdgeInsets.symmetric(vertical: 5),
                                      ),
                                      Divider(
                                        height: 10,
                                        color: Colors.white,
                                      )
                                    ],
                                  );
                                })),
                          ),
                        ]),
                      ),
                      SizedBox(
                        height: 37,
                      )
                    ],
                  ),
                ),
              ),
            ]),
            // bottom navigator
            buildBottomNavigatorBarWidget(context)
          ],
        ),
      ),
    );
  }
}
