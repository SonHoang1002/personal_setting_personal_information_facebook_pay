import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
import 'package:personal_setting_personal_information_facebook_pay/commons/routes/push_to_new_screen.dart';
import 'package:personal_setting_personal_information_facebook_pay/commons/widgets/information_component_widget.dart';
import 'package:personal_setting_personal_information_facebook_pay/commons/widgets/text_content_widget.dart';
import 'package:personal_setting_personal_information_facebook_pay/modules/SETTINGS/PERSONAL_PAGE/sub_modules_1/private_rule_settings_modules/private_rule_shortcut_modules/check_important_settings_modules/check_important_settings_common.dart';
import 'package:personal_setting_personal_information_facebook_pay/modules/SETTINGS/PERSONAL_PAGE/sub_modules_1/private_rule_settings_modules/private_rule_shortcut_modules/check_important_settings_modules/check_private_rule_component_page.dart';
import 'package:personal_setting_personal_information_facebook_pay/modules/SETTINGS/setting_commons/general_settings_common.dart';

import '../../../../../../../commons/widgets/show_bottom_sheet_widget.dart';

class CheckImportantSettingsPage extends StatelessWidget {
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
                        SettingCommons.CANCEL_ICON_DATA,
                        color: Colors.white,
                        size: 25,
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(right: 10),

                    // height: 70,
                    child: GestureDetector(
                      onTap: () {
                        showBottomSheetCheckImportantSettings(
                            context, 235, "Bạn có thể làm gì ?",
                            widget: Container(
                              child: ListView.builder(
                                  padding: EdgeInsets.zero,
                                  shrinkWrap: true,
                                  itemCount: CheckImportantSettingsCommon
                                      .CHECK_IMPORTANT_SETTINGS_BOTTOM_SHEET_CONTENTS[
                                          "data"]
                                      .length,
                                  itemBuilder: ((context, index) {
                                    return Container(
                                      margin: EdgeInsets.symmetric(vertical: 5),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          GestureDetector(
                                            onTap: (() {}),
                                            child: GeneralComponent(
                                              [
                                                buildTextContent(
                                                    CheckImportantSettingsCommon
                                                            .CHECK_IMPORTANT_SETTINGS_BOTTOM_SHEET_CONTENTS[
                                                        "data"][index]["title"],
                                                    true,
                                                    fontSize: 18),
                                                SizedBox(
                                                  height: 5,
                                                ),
                                                buildTextContent(
                                                    CheckImportantSettingsCommon
                                                            .CHECK_IMPORTANT_SETTINGS_BOTTOM_SHEET_CONTENTS[
                                                        "data"][index]["subTitle"],
                                                    true,
                                                    fontSize: 16,
                                                    colorWord: Colors.grey),
                                              ],
                                              prefixWidget: Container(
                                                padding: EdgeInsets.only(
                                                  right: 15,
                                                ),
                                                child: SvgPicture.asset(
                                                  CheckImportantSettingsCommon
                                                          .CHECK_IMPORTANT_SETTINGS_BOTTOM_SHEET_CONTENTS[
                                                      "data"][index]["icon"],
                                                  height: 20,
                                                  color: Colors.white,
                                                ),
                                              ),
                                              padding: EdgeInsets.symmetric(
                                                  horizontal: 5, vertical: 5),
                                              changeBackground:
                                                  Colors.transparent,
                                            ),
                                          ),
                                        ],
                                      ),
                                    );
                                  })),
                            ));
                      },
                      child: Icon(
                        SettingCommons.MENU_ICON_DATA,
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
                  SizedBox(
                    height: 5,
                  ),
                  // title
                  buildTextContent(
                      CheckImportantSettingsCommon
                          .CHECK_IMPORTANT_SETTINGS_TITLE,
                      true,
                      fontSize: 20),
                  //subTitle
                  buildTextContent(
                      CheckImportantSettingsCommon
                          .CHECK_IMPORTANT_SETTINGS_SUBTITLE,
                      true,
                      fontSize: 17,
                      colorWord: Colors.grey),
                  SizedBox(
                    height: 10,
                  ),
                  buildTextContent(
                      CheckImportantSettingsCommon
                          .CHECK_IMPORTANT_SETTINGS_QUESTION,
                      true,
                      fontSize: 17,
                      colorWord: Colors.grey),
                  Padding(
                    padding: EdgeInsets.only(top: 15),
                    child: GridView.builder(
                      padding: EdgeInsets.zero,
                      shrinkWrap: true,
                      gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                          maxCrossAxisExtent: 200,
                          childAspectRatio: 3 / 2,
                          crossAxisSpacing: 10,
                          mainAxisExtent: 200,
                          mainAxisSpacing: 10),
                      itemCount: CheckImportantSettingsCommon
                          .CHECK_IMPORTANT_SETTINGS_CONTENTS["data"].length,
                      itemBuilder: ((context, index) {
                        return GestureDetector(
                          onTap: (() {
                            pushToNextScreen(
                              context,
                              CheckPrivateRuleComponentPage(
                                  path: CheckImportantSettingsCommon
                                          .CHECK_IMPORTANT_SETTINGS_CONTENTS[
                                      "data"][index]["img"],
                                  name: CheckImportantSettingsCommon
                                          .CHECK_IMPORTANT_SETTINGS_CONTENTS[
                                      "data"][index]["key"]),
                            );
                          }),
                          child: _buildCheckImportantSettingContentItem(
                              CheckImportantSettingsCommon
                                      .CHECK_IMPORTANT_SETTINGS_CONTENTS["data"]
                                  [index]["img"],
                              CheckImportantSettingsCommon
                                      .CHECK_IMPORTANT_SETTINGS_CONTENTS["data"]
                                  [index]["content"]),
                        );
                      }),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  buildTextContent(
                      CheckImportantSettingsCommon
                          .CHECK_IMPORTANT_SETTINGS_ADDITINAL_INFORMATION,
                      true,
                      fontSize: 17,
                      colorWord: Colors.grey),
                  SizedBox(
                    height: 37,
                  )
                ],
              ),
            ),
          ),
        ]),
      ),
    );
  }
}

Widget _buildCheckImportantSettingContentItem(String path, String title,
    {double? height, double? width}) {
  return Container(
    height: height ?? 0,
    width: width ?? 0,
    decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(10)),
        color: Colors.grey[800]),
    child: ClipRRect(
      borderRadius: BorderRadius.circular(10.0),
      child: Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
        Expanded(
          flex: 5,
          child: Image.asset(
            path,
            fit: BoxFit.fitWidth,
          ),
        ),
        Flexible(
          flex: 4,
          child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              child: buildTextContent(title, true, fontSize: 19)),
        )
      ]),
    ),
  );
}

// showBottomSheetCheckImportantSettings(BuildContext context) {
//   showMaterialModalBottomSheet(
//       backgroundColor: Colors.transparent,
//       context: context,
//       builder: (context) {
//         return StatefulBuilder(builder: (context, setStateFull) {
//           return Container(
//             padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
//             height: 235,
//             decoration: BoxDecoration(
//                 color: Colors.grey[900],
//                 borderRadius: BorderRadius.only(
//                     topRight: Radius.circular(15),
//                     topLeft: Radius.circular(15))),
//             child: Column(children: [
//               // drag and drop navbar
//               Container(
//                 padding: EdgeInsets.only(top: 5),
//                 margin: EdgeInsets.only(bottom: 15),
//                 child: Container(
//                   height: 4,
//                   width: 40,
//                   decoration: BoxDecoration(
//                       color: Colors.grey,
//                       borderRadius: BorderRadius.only(
//                           topRight: Radius.circular(15),
//                           topLeft: Radius.circular(15))),
//                 ),
//               ),
//               //  title
//               Text(
//                 "Bạn có thể làm gì ?",
//                 style: TextStyle(
//                     color: Colors.white,
//                     fontSize: 20,
//                     fontWeight: FontWeight.bold),
//               ),
//               //content
//               Padding(
//                 padding: EdgeInsets.symmetric(horizontal: 10),
//                 child: Divider(
//                   height: 10,
//                   color: Colors.white,
//                 ),
//               ),
//               Container(
//                 child: ListView.builder(
//                     padding: EdgeInsets.zero,
//                     shrinkWrap: true,
//                     itemCount: CheckImportantSettingsCommon
//                         .CHECK_IMPORTANT_SETTINGS_BOTTOM_SHEET_CONTENTS["data"]
//                         .length,
//                     itemBuilder: ((context, index) {
//                       return Container(
//                         margin: EdgeInsets.symmetric(vertical: 5),
//                         child: Column(
//                           crossAxisAlignment: CrossAxisAlignment.start,
//                           mainAxisAlignment: MainAxisAlignment.start,
//                           children: [
//                             GestureDetector(
//                               onTap: (() {}),
//                               child: GeneralComponent(
//                                 [
//                                   buildTextContent(
//                                       CheckImportantSettingsCommon
//                                               .CHECK_IMPORTANT_SETTINGS_BOTTOM_SHEET_CONTENTS[
//                                           "data"][index]["title"],
//                                       true,
//                                       fontSize: 18),
//                                   SizedBox(
//                                     height: 5,
//                                   ),
//                                   buildTextContent(
//                                       CheckImportantSettingsCommon
//                                               .CHECK_IMPORTANT_SETTINGS_BOTTOM_SHEET_CONTENTS[
//                                           "data"][index]["subTitle"],
//                                       true,
//                                       fontSize: 16,
//                                       colorWord: Colors.grey),
//                                 ],
//                                 prefixWidget: Container(
//                                   padding: EdgeInsets.only(
//                                     right: 15,
//                                   ),
//                                   child: SvgPicture.asset(
//                                     CheckImportantSettingsCommon
//                                             .CHECK_IMPORTANT_SETTINGS_BOTTOM_SHEET_CONTENTS[
//                                         "data"][index]["icon"],
//                                     height: 20,
//                                     color: Colors.white,
//                                   ),
//                                 ),
//                                 padding: EdgeInsets.symmetric(
//                                     horizontal: 5, vertical: 5),
//                                 changeBackground: Colors.transparent,
//                               ),
//                             ),
//                           ],
//                         ),
//                       );
//                     })),
//               )
//             ]),
//           );
//         });
//       });
// }
