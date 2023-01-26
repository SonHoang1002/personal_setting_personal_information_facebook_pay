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
import 'package:personal_setting_personal_information_facebook_pay/modules/SETTINGS/PERSONAL_PAGE/sub_modules_1/private_rule_settings_modules/private_rule_shortcut_modules/check_important_settings_modules/who_can_see_what_you_share_modules/post_and_story_module/post_and_story_commons.dart';
import 'package:personal_setting_personal_information_facebook_pay/modules/SETTINGS/PERSONAL_PAGE/sub_modules_1/private_rule_settings_modules/private_rule_shortcut_modules/check_important_settings_modules/who_can_see_what_you_share_modules/post_and_story_module/selection_for_post_and_story_modules/selection_default_object_page.dart';
import 'package:personal_setting_personal_information_facebook_pay/modules/SETTINGS/PERSONAL_PAGE/sub_modules_1/private_rule_settings_modules/private_rule_shortcut_modules/check_important_settings_modules/who_can_see_what_you_share_modules/post_and_story_module/selection_for_post_and_story_modules/selection_private_rule_of_story_page.dart';
import 'package:personal_setting_personal_information_facebook_pay/modules/SETTINGS/PERSONAL_PAGE/sub_modules_1/private_rule_settings_modules/private_rule_shortcut_modules/check_important_settings_modules/who_can_see_what_you_share_page.dart';
import 'package:personal_setting_personal_information_facebook_pay/modules/SETTINGS/setting_commons/general_settings_common.dart';

import '../../../../../../../../../commons/widgets/content_and_status_widget.dart';

class PostAndStoryPage extends StatelessWidget {
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
                          PostAndStoryCommons.POST_AND_STORY_APPBAR_TITLE,
                          false)),
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
                      PostAndStoryCommons.POST_AND_STORY_TITLE, false),
                  // default object
                  buildContentAndStatusWidget(
                      PostAndStoryCommons
                          .POST_AND_STORY_DEFAULT_OBJECT["title"],
                      contents: PostAndStoryCommons
                          .POST_AND_STORY_DEFAULT_OBJECT["data"], function: () {
                    pushToNextScreen(context, SelectionDefaultObjectPage());
                  }),
                  buildContentAndStatusWidget(
                      PostAndStoryCommons.POST_AND_STORY_STORY["title"],
                      contents: PostAndStoryCommons
                          .POST_AND_STORY_STORY["data"], function: () {
                    pushToNextScreen(
                        context, SelectionPrivateRuleOfStoryPage());
                  }),
                  buildContentAndStatusWidget(
                      PostAndStoryCommons
                          .POST_AND_STORY_OLD_STORY_LIMITATION["title"],
                      contents: PostAndStoryCommons
                          .POST_AND_STORY_OLD_STORY_LIMITATION["data"]),
                  ElevatedButton(
                    onPressed: () {},
                    child: Text(
                      "Giới hạn",
                      style: TextStyle(color: Colors.white, fontSize: 17),
                    ),
                    style: ElevatedButton.styleFrom(
                        fixedSize: Size(width * 0.9, 40),
                        backgroundColor: Colors.grey[800]),
                  )
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
                                color: Colors.blue,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10))),
                          );
                        })),
                  ),
                  Container(
                      margin: EdgeInsets.only(right: 10),
                      child: ElevatedButton(
                        onPressed: (() {}),
                        child: Text("Tiep tuc"),
                      ))
                ]),
          ),
          buildBottomNavigatorBarWidget(context)
        ]),
      ),
    );
  }
}
