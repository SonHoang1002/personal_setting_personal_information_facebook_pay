import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
import 'package:personal_setting_personal_information_facebook_pay/commons/routes/push_to_new_screen.dart';
import 'package:personal_setting_personal_information_facebook_pay/commons/widgets/bottom_navigator_bar_widget.dart';
import 'package:personal_setting_personal_information_facebook_pay/commons/widgets/information_component_widget.dart';
import 'package:personal_setting_personal_information_facebook_pay/commons/widgets/text_content_widget.dart';
import 'package:personal_setting_personal_information_facebook_pay/modules/SETTINGS/PERSONAL_PAGE/sub_modules_1/private_rule_settings_modules/private_rule_shortcut_modules/check_important_settings_modules/check_important_settings_common.dart';
import 'package:personal_setting_personal_information_facebook_pay/modules/SETTINGS/PERSONAL_PAGE/sub_modules_1/private_rule_settings_modules/private_rule_shortcut_modules/check_important_settings_modules/who_can_see_what_you_share_modules/block_module/block_commons.dart';
import 'package:personal_setting_personal_information_facebook_pay/modules/SETTINGS/PERSONAL_PAGE/sub_modules_1/private_rule_settings_modules/private_rule_shortcut_modules/check_important_settings_modules/who_can_see_what_you_share_modules/complete_module/complete_page.dart';
import 'package:personal_setting_personal_information_facebook_pay/modules/SETTINGS/PERSONAL_PAGE/sub_modules_1/private_rule_settings_modules/private_rule_shortcut_modules/check_important_settings_modules/who_can_see_what_you_share_modules/post_and_story_module/post_and_story_commons.dart';
import 'package:personal_setting_personal_information_facebook_pay/modules/SETTINGS/setting_commons/general_settings_common.dart';

import '../../../../../../../../../commons/widgets/content_and_status_widget.dart';

class BlockPage extends StatelessWidget {
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
                          BlockCommons.BLOCK_APPBAR_TITLE, false)),
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
                  Padding(
                    padding: const EdgeInsets.only(bottom: 20),
                    child: buildTextContent(BlockCommons.BLOCK_TITLE, false),
                  ),
                  // default object
                  Padding(
                    padding: const EdgeInsets.only(bottom: 10),
                    child: GeneralComponent(
                      [buildTextContent(BlockCommons.BLOCK_TIP, false)],
                      prefixWidget: Container(
                          height: 40,
                          width: 40,
                          padding: EdgeInsets.all(10),
                          margin: EdgeInsets.only(right: 10),
                          child: SvgPicture.asset(
                            BlockCommons.BLOCK_SEE_BLOCK_LIST["icon"],
                            color: Colors.blue,
                          )),
                      changeBackground: Colors.grey[800],
                    ),
                  ),
                  GeneralComponent(
                    [
                      Text(
                        BlockCommons.BLOCK_ADD_TO_BLOCK_LIST["title"],
                        style: TextStyle(
                            color: Colors.blue,
                            fontSize: 17,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                    prefixWidget: Container(
                        height: 40,
                        width: 40,
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            color: Colors.blue[200],
                            borderRadius:
                                BorderRadius.all(Radius.circular(20))),
                        margin: EdgeInsets.only(right: 10),
                        child: SvgPicture.asset(
                          BlockCommons.BLOCK_SEE_BLOCK_LIST["icon"],
                          color: Colors.blue,
                        )),
                  ),

                  GeneralComponent(
                    [
                      buildTextContent(
                          BlockCommons.BLOCK_SEE_BLOCK_LIST["title"], true),
                      buildTextContent(
                          "Bạn đã chặn ${BlockCommons.BLOCK_SEE_BLOCK_LIST["data"].length} người",
                          false),
                    ],
                    prefixWidget: Container(
                        height: 40,
                        width: 40,
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            color: Colors.grey[800],
                            borderRadius:
                                BorderRadius.all(Radius.circular(20))),
                        margin: EdgeInsets.only(right: 10),
                        child: SvgPicture.asset(
                          BlockCommons.BLOCK_SEE_BLOCK_LIST["icon"],
                          color: Colors.blue,
                        )),
                  ),
                  _buildBlockedComponent(
                      SettingCommons.PATH_IMG + "cat_1.png", "Nguyen Van A")
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
                        onPressed: (() {
                          pushToNextScreen(context, CompletePage());
                        }),
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

_buildBlockedComponent(
  String imgPath,
  String title,
) {
  return Container(
    // color: Colors.red,
    // padding: EdgeInsets.symmetric(horizontal: 10),
    child: Column(children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Container(
                height: 40,
                width: 40,
                margin: EdgeInsets.only(left: 10, right: 10),
                child: Image.asset(
                  imgPath,
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.max,
                children: [
                  buildTextContent(
                    title,
                    false,
                    fontSize: 16,
                    colorWord: Colors.white,
                  ),
                ],
              ),
            ],
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
                fixedSize: Size(85, 30), backgroundColor: Colors.blue),
            onPressed: (() {}),
            child: Text("Bo chan"),
          )
        ],
      ),
    ]),
  );
}
