import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
import 'package:personal_setting_personal_information_facebook_pay/commons/routes/push_to_new_screen.dart';
import 'package:personal_setting_personal_information_facebook_pay/commons/widgets/information_component_widget.dart';
import 'package:personal_setting_personal_information_facebook_pay/commons/widgets/text_content_widget.dart';
import 'package:personal_setting_personal_information_facebook_pay/modules/SETTINGS/PERSONAL_PAGE/sub_modules_1/private_rule_settings_modules/private_rule_shortcut_modules/check_important_settings_modules/check_important_settings_common.dart';
import 'package:personal_setting_personal_information_facebook_pay/modules/SETTINGS/PERSONAL_PAGE/sub_modules_1/private_rule_settings_modules/private_rule_shortcut_modules/check_important_settings_modules/facebook_advertising_options_modules/facebook_advertising_options_commons.dart';
import 'package:personal_setting_personal_information_facebook_pay/modules/SETTINGS/PERSONAL_PAGE/sub_modules_1/private_rule_settings_modules/private_rule_shortcut_modules/check_important_settings_modules/how_people_can_find_you_on_facebook_modules/how_people_can_find_you_on_facebook_common.dart';
import 'package:personal_setting_personal_information_facebook_pay/modules/SETTINGS/PERSONAL_PAGE/sub_modules_1/private_rule_settings_modules/private_rule_shortcut_modules/check_important_settings_modules/how_to_protect_your_account_modules/how_to_protect_your_account_commons.dart';
import 'package:personal_setting_personal_information_facebook_pay/modules/SETTINGS/PERSONAL_PAGE/sub_modules_1/private_rule_settings_modules/private_rule_shortcut_modules/check_important_settings_modules/set_your_data_on_facebook_modules/set_your_data_on_facebook_commons.dart';
import 'package:personal_setting_personal_information_facebook_pay/modules/SETTINGS/PERSONAL_PAGE/sub_modules_1/private_rule_settings_modules/private_rule_shortcut_modules/check_important_settings_modules/who_can_see_what_you_share_modules/block_module/block_page.dart';
import 'package:personal_setting_personal_information_facebook_pay/modules/SETTINGS/PERSONAL_PAGE/sub_modules_1/private_rule_settings_modules/private_rule_shortcut_modules/check_important_settings_modules/who_can_see_what_you_share_modules/information_on_personal_module/information_on_personal_page_page.dart';
import 'package:personal_setting_personal_information_facebook_pay/modules/SETTINGS/PERSONAL_PAGE/sub_modules_1/private_rule_settings_modules/private_rule_shortcut_modules/check_important_settings_modules/who_can_see_what_you_share_modules/post_and_story_module/post_and_story_page.dart';
import 'package:personal_setting_personal_information_facebook_pay/modules/SETTINGS/PERSONAL_PAGE/sub_modules_1/private_rule_settings_modules/private_rule_shortcut_modules/check_important_settings_modules/who_can_see_what_you_share_modules/who_can_see_what_you_share_commons.dart';
import 'package:personal_setting_personal_information_facebook_pay/modules/SETTINGS/setting_commons/general_settings_common.dart';

class WhoCanSeeWhatYouSharePage extends StatelessWidget {
  WhoCanSeeWhatYouSharePage({required this.path, required this.name});
  String path;
  String name;

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
                children: [_buildContent(path, name)],
              ),
            ),
          ),
          Container(
            height: 90,
            color: Colors.transparent,
            child: Column(children: [
              Padding(
                padding: EdgeInsets.only(bottom: 10),
                child: Divider(
                  height: 10,
                  color: Colors.white,
                ),
              ),
              Expanded(
                  child: Center(
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      fixedSize: Size(width * 0.9, 40)),
                  child: Text("Tiep tuc"),
                  onPressed: (() {
                    Widget nextRoute;
                    switch (name) {
                      case "who_can_see_what_you_share":
                        nextRoute = InformationOnPersonalPagePage();
                        break;

                      case "how_to_protect_your_account":
                        nextRoute = PostAndStoryPage();
                        break;

                      case "how_people_can_find_you_on_facebook":
                        nextRoute = BlockPage();
                        break;

                      case "set_your_data_on_facebook":
                        nextRoute = InformationOnPersonalPagePage();
                        break;
                      default:
                        nextRoute = InformationOnPersonalPagePage();
                        break;
                    }
                    pushToNextScreen(context, nextRoute);
                  }),
                ),
              ))
            ]),
          )
        ]),
      ),
    );
  }

  Widget _buildContent(String path, String name) {
    String title = "";
    String subTitle = "";
    var contents;

    switch (name) {
      case "who_can_see_what_you_share":
        title = WhoCanSeeWhatYouShareCommon.WHO_CAN_SEE_WHAT_YOU_SHARE_TITLE;
        subTitle =
            WhoCanSeeWhatYouShareCommon.WHO_CAN_SEE_WHAT_YOU_SHARE_SUBTITLE;
        contents =
            WhoCanSeeWhatYouShareCommon.WHO_CAN_SEE_WHAT_YOU_SHARE_CONTENTS;
        break;

      case "how_to_protect_your_account":
        title =
            HowToProtectYourAccountCommons.HOW_TO_PROTECT_YOUR_ACCOUNT_TITLE;
        subTitle =
            HowToProtectYourAccountCommons.HOW_TO_PROTECT_YOUR_ACCOUNT_SUBTITLE;
        contents =
            HowToProtectYourAccountCommons.HOW_TO_PROTECT_YOUR_ACCOUNT_CONTENTS;
        break;

      case "how_people_can_find_you_on_facebook":
        title = HowPeopleCanFindYouOnFacebookCommons
            .HOW_PEOPLE_CAN_FIND_YOU_ON_FACEBOOK_TITLE;
        subTitle = HowPeopleCanFindYouOnFacebookCommons
            .HOW_PEOPLE_CAN_FIND_YOU_ON_FACEBOOK_SUBTITLE;
        contents = HowPeopleCanFindYouOnFacebookCommons
            .HOW_PEOPLE_CAN_FIND_YOU_ON_FACEBOOK_CONTENTS;
        break;

      case "set_your_data_on_facebook":
        title = SetYourDataOnFacebookCommons.SET_YOUR_DATA_ON_FACEBOOK_TITLE;
        subTitle =
            SetYourDataOnFacebookCommons.SET_YOUR_DATA_ON_FACEBOOK_SUBTITLE;
        contents =
            SetYourDataOnFacebookCommons.SET_YOUR_DATA_ON_FACEBOOK_CONTENTS;
        break;
      default:
        title = FacebookAdvertisementOptionsCommons
            .FACEBOOK_ADVERTISEMENT_OPTIONS_TITLE;
        subTitle = FacebookAdvertisementOptionsCommons
            .FACEBOOK_ADVERTISEMENT_OPTIONS_SUBTITLE;
        contents = FacebookAdvertisementOptionsCommons
            .FACEBOOK_ADVERTISEMENT_OPTIONS_CONTENTS;
        break;
    }
    return Column(
      children: [
        // img
        Container(
          margin: EdgeInsets.only(bottom: 15),
          child: Image.asset(path),
        ),
        Container(
          margin: EdgeInsets.only(bottom: 5),
          child: buildTextContent(title, true, fontSize: 24),
        ),
        buildTextContent(subTitle, false, fontSize: 20),
        SizedBox(
          height: 10,
        ),
        ListView.builder(
            padding: EdgeInsets.zero,
            shrinkWrap: true,
            itemCount: contents["data"].length,
            itemBuilder: ((context, index) {
              return GeneralComponent(
                [
                  buildTextContent(contents["data"][index]["content"], false,
                      colorWord: Colors.grey)
                ],
                prefixWidget: Container(
                  padding: EdgeInsets.only(right: 15),
                  child: SvgPicture.asset(
                    contents["data"][index]["icon"],
                    height: 20,
                    color: Colors.white,
                  ),
                ),
                padding: EdgeInsets.fromLTRB(0, 10, 5, 5),
              );
            })),
      ],
    );
  }
}
