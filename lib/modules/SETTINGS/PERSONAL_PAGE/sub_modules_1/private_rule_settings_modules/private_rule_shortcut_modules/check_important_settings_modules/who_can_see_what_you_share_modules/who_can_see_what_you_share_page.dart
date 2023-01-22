import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
import 'package:personal_setting_personal_information_facebook_pay/commons/routes/push_to_new_screen.dart';
import 'package:personal_setting_personal_information_facebook_pay/commons/widgets/information_component_widget.dart';
import 'package:personal_setting_personal_information_facebook_pay/commons/widgets/text_content_widget.dart';
import 'package:personal_setting_personal_information_facebook_pay/modules/SETTINGS/PERSONAL_PAGE/sub_modules_1/private_rule_settings_modules/private_rule_shortcut_modules/check_important_settings_modules/check_important_settings_common.dart';
import 'package:personal_setting_personal_information_facebook_pay/modules/SETTINGS/PERSONAL_PAGE/sub_modules_1/private_rule_settings_modules/private_rule_shortcut_modules/check_important_settings_modules/who_can_see_what_you_share_modules/who_can_see_what_you_share_commons.dart';
import 'package:personal_setting_personal_information_facebook_pay/modules/SETTINGS/setting_commons/general_settings_common.dart';

class WhoCanSeeWhatYouSharePage extends StatelessWidget {
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
          // pop icon and search setting input
          Container(
            margin: EdgeInsets.only(top: 60, bottom: 10),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 10),
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
                  // img
                  Container(
                    margin: EdgeInsets.only(bottom: 15),
                    child: Image.asset(
                        SettingCommons.PATH_IMG + "example_cover_img_1.jpg"),
                  ),
                  Container(
                    margin: EdgeInsets.only(bottom: 5),
                    child: buildTextContent(
                        WhoCanSeeWhatYouShareCommon
                            .WHO_CAN_SEE_WHAT_YOU_SHARE_TITLE,
                        true,
                        fontSize: 24),
                  ),
                  buildTextContent(
                      WhoCanSeeWhatYouShareCommon
                          .WHO_CAN_SEE_WHAT_YOU_SHARE_SUBTITLE,
                      false,
                      fontSize: 20),
                  SizedBox(
                    height: 10,
                  ),
                  ListView.builder(
                      padding: EdgeInsets.zero,
                      shrinkWrap: true,
                      itemCount: WhoCanSeeWhatYouShareCommon
                          .WHO_CAN_SEE_WHAT_YOU_SHARE_CONTENTS["data"].length,
                      itemBuilder: ((context, index) {
                        return GeneralComponent(
                          [
                            buildTextContent(
                                WhoCanSeeWhatYouShareCommon
                                        .WHO_CAN_SEE_WHAT_YOU_SHARE_CONTENTS[
                                    "data"][index]["content"],
                                false,colorWord: Colors.grey)
                          ],
                          prefixWidget: Container(
                            padding: EdgeInsets.only(right: 15),
                            child: SvgPicture.asset(WhoCanSeeWhatYouShareCommon
                                    .WHO_CAN_SEE_WHAT_YOU_SHARE_CONTENTS["data"]
                                [index]["icon"], height: 20,color: Colors.white,),
                           
                          ),
                          padding: EdgeInsets.fromLTRB(0, 10, 5, 5),
                        );
                      }))
                ],
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
