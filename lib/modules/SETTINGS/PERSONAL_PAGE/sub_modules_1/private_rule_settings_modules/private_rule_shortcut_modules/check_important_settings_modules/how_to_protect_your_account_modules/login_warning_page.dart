import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
import 'package:personal_setting_personal_information_facebook_pay/commons/routes/push_to_new_screen.dart';
import 'package:personal_setting_personal_information_facebook_pay/commons/widgets/bottom_navigator_bar_widget.dart';
import 'package:personal_setting_personal_information_facebook_pay/commons/widgets/information_component_widget.dart';
import 'package:personal_setting_personal_information_facebook_pay/commons/widgets/show_bottom_sheet_widget.dart';
import 'package:personal_setting_personal_information_facebook_pay/commons/widgets/text_content_widget.dart';
import 'package:personal_setting_personal_information_facebook_pay/modules/SETTINGS/PERSONAL_PAGE/sub_modules_1/private_rule_settings_modules/private_rule_shortcut_modules/check_important_settings_modules/check_important_settings_common.dart';
import 'package:personal_setting_personal_information_facebook_pay/modules/SETTINGS/PERSONAL_PAGE/sub_modules_1/private_rule_settings_modules/private_rule_shortcut_modules/check_important_settings_modules/how_to_protect_your_account_modules/how_to_protect_your_account_commons.dart';
import 'package:personal_setting_personal_information_facebook_pay/modules/SETTINGS/PERSONAL_PAGE/sub_modules_1/private_rule_settings_modules/private_rule_shortcut_modules/check_important_settings_modules/how_to_protect_your_account_modules/password_page.dart';
import 'package:personal_setting_personal_information_facebook_pay/modules/SETTINGS/PERSONAL_PAGE/sub_modules_1/private_rule_settings_modules/private_rule_shortcut_modules/check_important_settings_modules/who_can_see_what_you_share_modules/block_module/block_page.dart';
import 'package:personal_setting_personal_information_facebook_pay/modules/SETTINGS/PERSONAL_PAGE/sub_modules_1/private_rule_settings_modules/private_rule_shortcut_modules/check_important_settings_modules/who_can_see_what_you_share_modules/post_and_story_module/post_and_story_commons.dart';
import 'package:personal_setting_personal_information_facebook_pay/modules/SETTINGS/PERSONAL_PAGE/sub_modules_1/private_rule_settings_modules/private_rule_shortcut_modules/check_important_settings_modules/who_can_see_what_you_share_modules/post_and_story_module/selection_for_post_and_story_modules/selection_default_object_page.dart';
import 'package:personal_setting_personal_information_facebook_pay/modules/SETTINGS/PERSONAL_PAGE/sub_modules_1/private_rule_settings_modules/private_rule_shortcut_modules/check_important_settings_modules/who_can_see_what_you_share_modules/post_and_story_module/selection_for_post_and_story_modules/selection_private_rule_of_story_page.dart';
import 'package:personal_setting_personal_information_facebook_pay/modules/SETTINGS/setting_commons/general_settings_common.dart';

import '../../../../../../../../../commons/widgets/content_and_status_widget.dart';

class LoginWarningPage extends StatelessWidget {
  late double width = 0;
  late double height = 0;

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
        child: Column(children: [
          // pop icon
          Container(
            margin: EdgeInsets.only(top: 60, bottom: 10),
            child: Row(
                // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 10, right: 50),
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
                  Container(
                      child: buildTextContent(
                          LoginWarningCommons.LOGIN_WARNING_APPAR_TITLE,
                          true,fontSize:20,)),
                ]),
          ),
          // main content
          Expanded(
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              // color: Colors.grey[900],
              child: ListView(
                padding: EdgeInsets.symmetric(vertical: 5),
                children: [
                  // title
                  buildTextContent(
                      LoginWarningCommons.LOGIN_WARNING_TITLE, true,
                      fontSize: 22),
                  SizedBox(
                    height: 5,
                  ),
                  buildTextContent(
                      LoginWarningCommons.LOGIN_WARNING_SUBTITLE, false,
                      fontSize: 15,colorWord: Colors.grey),
                  ListView.builder(
                      shrinkWrap: true,
                      padding: EdgeInsets.zero,
                      itemCount: LoginWarningCommons
                          .LOGIN_WARNING_CONTENTS["data"].length,
                      itemBuilder: ((context, index) {
                        final data =
                            LoginWarningCommons.LOGIN_WARNING_CONTENTS["data"];
                        return GeneralComponent(
                          [
                            buildTextContent(data[index]["title"], true,
                                fontSize: 17),
                            buildTextContent(data[index]["subTitle"], true,
                                fontSize: 14, colorWord: Colors.grey)
                          ],
                          prefixWidget: Container(
                              height: 40,
                              width: 40,
                              margin: EdgeInsets.only(right: 10),
                              decoration: BoxDecoration(
                                  color: Colors.grey[800],
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(20))),
                              padding: EdgeInsets.all(10),
                              child: SvgPicture.asset(
                                data[index]["icon"],
                                color: Colors.white,
                              )),
                          suffixWidget: Container(
                            height: 30,
                            width: 30,
                            child: Checkbox(
                              onChanged: ((value) {}),
                              value: true,
                            ),
                          ),
                        );
                      }))
                ],
              ),
            ),
          ),
          // navigator
          Container(
            height: 80,
            color: Colors.transparent,
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 20,
                    padding: EdgeInsets.only(left: 15),
                    child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        padding: EdgeInsets.zero,
                        shrinkWrap: true,
                        itemCount: 3,
                        itemBuilder: ((context, index) {
                          return Container(
                            margin: EdgeInsets.only(right: 5),
                            height: 20,
                            width: 20,
                            decoration: BoxDecoration(
                                color: index < 1 ? Colors.blue : Colors.white,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10))),
                          );
                        })),
                  ),
                  Container(
                      margin: EdgeInsets.only(right: 10),
                      child: ElevatedButton(
                        onPressed: (() {
                          pushToNextScreen(context, PasswordPage());
                        }),
                        child: Text(LoginWarningCommons.LOGIN_WARNING_SKIP),
                      ))
                ]),
          ),
          buildBottomNavigatorBarWidget(context)
        ]),
      ),
    );
  }
}
