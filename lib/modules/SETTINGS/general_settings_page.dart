import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:personal_setting_personal_information_facebook_pay/commons/widgets/bottom_navigator_bar_widget.dart';
import 'package:personal_setting_personal_information_facebook_pay/commons/widgets/information_component_widget.dart';
import 'package:personal_setting_personal_information_facebook_pay/commons/widgets/title_description_and_content_list.dart';
import 'package:personal_setting_personal_information_facebook_pay/modules/SETTINGS/PERSONAL_PAGE/personal_page_page.dart';
import 'package:personal_setting_personal_information_facebook_pay/modules/SETTINGS/setting_commons/general_settings_common.dart';

class GeneralSettingsPage extends StatelessWidget {
  late double width = 0;

  late double height = 0;

  int _selectedIndex = 0;

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
                      Padding(
                        padding:
                            EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                        child: Column(
                          children: [
                            // personal page title
                            Row(
                              children: [
                                Text(
                                  SettingCommons.PERSONAL_PAGE_TITLE,
                                  style: const TextStyle(
                                      color: Colors.white,
                                      fontSize: 19,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                            // personal page description
                            Wrap(
                              children: [
                                Text(
                                  SettingCommons.PERSONAL_PAGE_DESCRIPTION,
                                  style: const TextStyle(
                                    color: Colors.grey,
                                    fontSize: 15,
                                  ),
                                ),
                              ],
                            ),
                            // user example
                            GestureDetector(
                              onTap: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (_) => PersonalSettingsPage()));
                              },
                              child: Container(
                                margin: EdgeInsets.only(top: 10),
                                child: GeneralComponent(
                                  [
                                    Text(SettingCommons.USER_EXAMPLE[1],
                                        style: TextStyle(
                                            fontSize: 15,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white)),
                                    Text(SettingCommons.USER_EXAMPLE[2],
                                        style: TextStyle(
                                            fontSize: 15, color: Colors.grey)),
                                  ],
                                  prefixWidget: Container(
                                      height: 40,
                                      width: 40,
                                      margin: EdgeInsets.only(right: 10),
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(20))),
                                      child: Image.asset(
                                          SettingCommons.USER_EXAMPLE[0])),
                                  changeBackground: Colors.transparent,
                                  padding: EdgeInsets.zero,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      // divider
                      setDivider(top: 10, bottom: 10),
                      // account
                      TitleDescriptionAndContentListWidget(
                        title: SettingCommons.ACCOUNT_TITLE,
                        subTitle: SettingCommons.ACCOUNT_DESCRIPTION,
                        listView: Container(
                          height: 380,
                          child: ListView.builder(
                              padding: EdgeInsets.zero,
                              itemCount: SettingCommons
                                  .ACCOUNT_INFORMATION_LIST.length,
                              itemBuilder: ((context, index) {
                                return GestureDetector(
                                  onTap: () {},
                                  child: GeneralComponent(
                                    [
                                      Text(
                                          SettingCommons
                                                  .ACCOUNT_INFORMATION_LIST[
                                              index]["data"]["title"],
                                          style: TextStyle(
                                              fontSize: 15,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.white)),
                                      Text(
                                          SettingCommons
                                                  .ACCOUNT_INFORMATION_LIST[
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
                                        SettingCommons
                                                .ACCOUNT_INFORMATION_LIST[index]
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
                      // security
                      TitleDescriptionAndContentListWidget(
                        title: SettingCommons.SECURITY_TITLE,
                        subTitle: SettingCommons.SECURITY_DESCRIPTION,
                        listView: Container(
                          height: 390,
                          child: ListView.builder(
                              padding: EdgeInsets.zero,
                              itemCount: SettingCommons
                                  .SECURITY_INFORMATION_LIST.length,
                              itemBuilder: ((context, index) {
                                return GestureDetector(
                                  onTap: () {
                                    ////
                                  },
                                  child: GeneralComponent(
                                    [
                                      Text(
                                          SettingCommons
                                                  .SECURITY_INFORMATION_LIST[
                                              index]["data"]["title"],
                                          style: TextStyle(
                                              fontSize: 15,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.white)),
                                      Text(
                                          SettingCommons
                                                  .SECURITY_INFORMATION_LIST[
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
                                        SettingCommons
                                                .SECURITY_INFORMATION_LIST[
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
                      //  advertisement
                      TitleDescriptionAndContentListWidget(
                        title: SettingCommons.ADVERTISEMENT_TITLE,
                        subTitle: SettingCommons.ADVERTISEMENT_DESCRIPTION,
                        listView: Container(
                          height: 90,
                          child: ListView.builder(
                              padding: EdgeInsets.zero,
                              itemCount: SettingCommons
                                  .ADVERTISEMENT_INFORMATION_LIST.length,
                              itemBuilder: ((context, index) {
                                return GestureDetector(
                                  onTap: () {
                                    ////
                                  },
                                  child: GeneralComponent(
                                    [
                                      Text(
                                          SettingCommons
                                                  .ADVERTISEMENT_INFORMATION_LIST[
                                              index]["data"]["title"],
                                          style: TextStyle(
                                              fontSize: 15,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.white)),
                                      Text(
                                          SettingCommons
                                                  .ADVERTISEMENT_INFORMATION_LIST[
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
                                        SettingCommons
                                                .SECURITY_INFORMATION_LIST[
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
                      // meta
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 10, vertical: 0),
                        child: Column(
                          children: [
                            // meta title
                            Row(
                              children: [
                                Text(
                                  "Meta",
                                  style: const TextStyle(
                                      color: Colors.white,
                                      fontSize: 19,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            // meta description
                            Row(
                              children: [
                                Text(
                                  SettingCommons.META_DESCRIPTION[0],
                                  style: const TextStyle(
                                      color: Colors.blue,
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                            Wrap(
                              children: [
                                Text(
                                  SettingCommons.META_DESCRIPTION[1],
                                  style: const TextStyle(
                                      color: Colors.grey,
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      setDivider(top: 10, bottom: 10),

                      // privacy title
                      TitleDescriptionAndContentListWidget(
                        title: SettingCommons.POLICY_TITLE,
                        listView: Container(
                          height: 120,
                          child: ListView.builder(
                              padding: EdgeInsets.zero,
                              itemCount: SettingCommons.POLICY_SUBTITLE.length,
                              itemBuilder: ((context, index) {
                                return Container(
                                  padding: EdgeInsets.symmetric(vertical: 5),
                                  child: Text(
                                    SettingCommons.POLICY_SUBTITLE[index]
                                        ["data"]!,
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 15),
                                  ),
                                );
                              })),
                        ),
                      ),
                      SizedBox(height: 40)
                    ],
                  ),
                ),
              ),
            ]),
            // bottom navigator
           buildBottomNavigatorBarWidget(context) ],
        ),
      ),
    );
  }
}
