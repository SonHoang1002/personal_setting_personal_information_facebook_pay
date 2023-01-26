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
import 'package:personal_setting_personal_information_facebook_pay/modules/SETTINGS/PERSONAL_PAGE/sub_modules_1/private_rule_settings_modules/private_rule_shortcut_modules/check_important_settings_modules/check_important_settings_page.dart';
import 'package:personal_setting_personal_information_facebook_pay/modules/SETTINGS/PERSONAL_PAGE/sub_modules_1/private_rule_settings_modules/private_rule_shortcut_modules/check_important_settings_modules/who_can_see_what_you_share_page.dart';
import 'package:personal_setting_personal_information_facebook_pay/modules/SETTINGS/setting_commons/general_settings_common.dart';
import 'package:personal_setting_personal_information_facebook_pay/providers/choose_object_provider.dart';
import 'package:provider/provider.dart';

import '../../../../../../../../../commons/widgets/content_and_status_widget.dart';
import 'information_on_personal_commons.dart';

class InformationOnPersonalPagePage extends StatelessWidget {
  late double width = 0;
  late double height = 0;

  String _selectedBottomNavigator = "Trang chủ";
  final listChooseObject = InformationOnPersonalPageCommons
      .INFORMATION_ON_PERSONAL_PAGE_CHOOSE_PHONE_STATUS
      .map((e) => e["title"])
      .toList();
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    width = size.width;
    height = size.height;
    // listChooseObject.forEach(
    //   (element) {
    //     print(element);
    //   },
    // );
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
                          InformationOnPersonalPageCommons
                              .INFORMATION_ON_PERSONAL_PAGE_APPBAR_TITLE,
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
                      InformationOnPersonalPageCommons
                          .INFORMATION_ON_PERSONAL_PAGE_TITLE,
                      false),
                  // phone
                  buildContentAndStatusWidget(
                      InformationOnPersonalPageCommons
                          .INFORMATION_ON_PERSONAL_PAGE_PHONE["title"],
                      contents: InformationOnPersonalPageCommons
                          .INFORMATION_ON_PERSONAL_PAGE_PHONE["data"],
                      function: () {
                    _buildContentForBottomSheet(
                        context,
                        240,
                        "Chọn đối tượng",
                        InformationOnPersonalPageCommons
                            .INFORMATION_ON_PERSONAL_PAGE_CHOOSE_PHONE_STATUS);
                  }),
                  // email
                  buildContentAndStatusWidget(
                      InformationOnPersonalPageCommons
                          .INFORMATION_ON_PERSONAL_PAGE_EMAIL["title"],
                      contents: InformationOnPersonalPageCommons
                          .INFORMATION_ON_PERSONAL_PAGE_EMAIL["data"],
                      function: () {
                    _buildContentForBottomSheet(
                        context,
                        240,
                        "Chọn đối tượng",
                        InformationOnPersonalPageCommons
                            .INFORMATION_ON_PERSONAL_PAGE_CHOOSE_EMAIL_STATUS);
                  }),
                  // birthday 4
                  buildContentAndStatusWidget(
                      InformationOnPersonalPageCommons
                          .INFORMATION_ON_PERSONAL_PAGE_BIRTHDAY["title"],
                      contents: InformationOnPersonalPageCommons
                          .INFORMATION_ON_PERSONAL_PAGE_BIRTHDAY["data"],
                      function: () {
                    _buildContentForBottomSheet(
                        context,
                        270,
                        "Chọn đối tượng",
                        InformationOnPersonalPageCommons
                            .INFORMATION_ON_PERSONAL_PAGE_CHOOSE_BIRTHDAY_STATUS);
                  }),
                  // relationship 3
                  buildContentAndStatusWidget(
                      InformationOnPersonalPageCommons
                              .INFORMATION_ON_PERSONAL_PAGE_RELATIONSHIP_STATUS[
                          "title"],
                      contents: InformationOnPersonalPageCommons
                              .INFORMATION_ON_PERSONAL_PAGE_RELATIONSHIP_STATUS[
                          "data"], function: () {
                    _buildContentForBottomSheet(
                        context,
                        240,
                        "Chọn đối tượng",
                        InformationOnPersonalPageCommons
                            .INFORMATION_ON_PERSONAL_PAGE_CHOOSE_RELATIONSHIP_STATUS);
                  }),
                  buildContentAndStatusWidget(
                      InformationOnPersonalPageCommons
                          .INFORMATION_ON_PERSONAL_PAGE_PROVINCE["title"],
                      contents: InformationOnPersonalPageCommons
                          .INFORMATION_ON_PERSONAL_PAGE_PROVINCE["data"],
                      function: () {
                    _buildContentForBottomSheet(
                        context,
                        240,
                        "Chọn đối tượng",
                        InformationOnPersonalPageCommons
                            .INFORMATION_ON_PERSONAL_PAGE_CHOOSE_PROVINCE_STATUS);
                  }),
                  buildContentAndStatusWidget(
                      InformationOnPersonalPageCommons
                              .INFORMATION_ON_PERSONAL_PAGE_FRIEND_AND_FOLLOW[
                          "title"],
                      contents: InformationOnPersonalPageCommons
                              .INFORMATION_ON_PERSONAL_PAGE_FRIEND_AND_FOLLOW[
                          "data"], function: () {
                    _buildContentForBottomSheet(
                        context,
                        320,
                        "Chọn đối tượng",
                        InformationOnPersonalPageCommons
                            .INFORMATION_ON_PERSONAL_PAGE_CHOOSE_FRIEND_AND_FOLLOW_STATUS);
                  }),
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

_buildContentForBottomSheet(
  BuildContext context,
  double height,
  String title,
  dynamic data,
) {
  final listChoose = data.map((e) => e["key"]).toList();
  showBottomSheetCheckImportantSettings(context, height, "Chọn đối tượng",
      widget: StatefulBuilder(builder: (context, setStateFull) {
    return ListView.builder(
        padding: EdgeInsets.zero,
        shrinkWrap: true,
        itemCount: data.length,
        itemBuilder: ((context, index) {
          return GeneralComponent(
            [
              buildTextContent(data[index]["title"], true),
              buildTextContent(data[index]["subTitle"], false,
                  fontSize: 15, colorWord: Colors.grey)
            ],
            prefixWidget: Container(
              height: 40,
              width: 40,
              margin: EdgeInsets.only(right: 10),
              padding: EdgeInsets.all(5),
              child: SvgPicture.asset(data[index]["icon"], color: Colors.white),
            ),
            suffixWidget: Container(
              height: 30,
              width: 30,
              child: Radio(
                  value: listChoose[index],
                  groupValue: Provider.of<ChooseObjectProvider>(
                    context,
                  ).getChooseObjectProvider,
                  onChanged: ((value) {
                    Provider.of<ChooseObjectProvider>(context, listen: false)
                        .setChooseObjectProvider(
                      value as String,
                    );
                    setStateFull(
                      () {},
                    );
                  })),
            ),
            padding: EdgeInsets.all(5),
          );
        }));
  }));
}
