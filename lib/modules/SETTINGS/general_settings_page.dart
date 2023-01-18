import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:personal_setting_personal_information_facebook_pay/commons/constants/personal_setting_common.dart';
import 'package:personal_setting_personal_information_facebook_pay/commons/widgets/information_component_widget.dart';
import 'package:personal_setting_personal_information_facebook_pay/commons/widgets/title_description_and_content_list.dart';
import 'package:personal_setting_personal_information_facebook_pay/modules/personal_setting/export_personal_setting_screen.dart';

class OnBoardSettingPage extends StatefulWidget {
  @override
  State<OnBoardSettingPage> createState() => _OnBoardSettingPageState();
}

class _OnBoardSettingPageState extends State<OnBoardSettingPage> {
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
                        SettingCommon.BACK_ICON_DATA,
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
                            hintText: SettingCommon.PLACE_HOLDER_SEARCH,
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
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  color: Colors.grey[900],
                  child: ListView(
                    padding: EdgeInsets.zero,
                    children: [
                      // personal page title
                      Row(
                        children: [
                          Text(
                            OnBoardingSettingCommon.PERSONAL_PAGE_TITLE,
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
                            OnBoardingSettingCommon.PERSONAL_PAGE_DESCRIPTION,
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
                              Text(OnBoardingSettingCommon.USER_EXAMPLE[1],
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white)),
                              Text(OnBoardingSettingCommon.USER_EXAMPLE[2],
                                  style: TextStyle(
                                      fontSize: 15, color: Colors.grey)),
                            ],
                            prefixWidget: Container(
                                height: 40,
                                width: 40,
                                margin: EdgeInsets.only(right: 10),
                                decoration: BoxDecoration(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(20))),
                                child: Image.asset(
                                    OnBoardingSettingCommon.USER_EXAMPLE[0])),
                            changeBackground: Colors.transparent,
                            padding: EdgeInsets.zero,
                          ),
                        ),
                      ),
                      // divider
                      setDivider(top: 10, bottom: 10),
                      // account
                      TitleDescriptionAndContentListWidget(
                        title: OnBoardingSettingCommon.ACCOUNT_TITLE,
                        subTitle: OnBoardingSettingCommon.ACCOUNT_DESCRIPTION,
                        listView: Container(
                          height: 380,
                          child: ListView.builder(
                              padding: EdgeInsets.zero,
                              itemCount: OnBoardingSettingCommon
                                  .ACCOUNT_INFORMATION_LIST.length,
                              itemBuilder: ((context, index) {
                                return GestureDetector(
                                  onTap: () {
                                    // final list = OnBoardingSettingCommon
                                    //     .ACCOUNT_INFORMATION_LIST;
                                    // if(list[index][0]==list[0][0]){

                                    // }
                                  },
                                  child: GeneralComponent(
                                    [
                                      Text(
                                          OnBoardingSettingCommon
                                                  .ACCOUNT_INFORMATION_LIST[
                                              index][1],
                                          style: TextStyle(
                                              fontSize: 15,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.white)),
                                      Text(
                                          OnBoardingSettingCommon
                                                  .ACCOUNT_INFORMATION_LIST[
                                              index][2],
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
                                        OnBoardingSettingCommon
                                            .ACCOUNT_INFORMATION_LIST[index][0],
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
                        title: OnBoardingSettingCommon.SECURITY_TITLE,
                        subTitle: OnBoardingSettingCommon.SECURITY_DESCRIPTION,
                        listView: Container(
                          height: 390,
                          child: ListView.builder(
                              padding: EdgeInsets.zero,
                              itemCount: OnBoardingSettingCommon
                                  .SECURITY_INFORMATION_LIST.length,
                              itemBuilder: ((context, index) {
                                return GestureDetector(
                                  onTap: () {
                                    ////
                                  },
                                  child: GeneralComponent(
                                    [
                                      Text(
                                          OnBoardingSettingCommon
                                                  .SECURITY_INFORMATION_LIST[
                                              index][1],
                                          style: TextStyle(
                                              fontSize: 15,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.white)),
                                      Text(
                                          OnBoardingSettingCommon
                                                  .SECURITY_INFORMATION_LIST[
                                              index][2],
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
                                        OnBoardingSettingCommon
                                                .SECURITY_INFORMATION_LIST[
                                            index][0],
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
                        title: OnBoardingSettingCommon.ADVERTISEMENT_TITLE,
                        subTitle:
                            OnBoardingSettingCommon.ADVERTISEMENT_DESCRIPTION,
                        listView: Container(
                          height: 90,
                          child: ListView.builder(
                              padding: EdgeInsets.zero,
                              itemCount: OnBoardingSettingCommon
                                  .ADVERTISEMENT_INFORMATION_LIST.length,
                              itemBuilder: ((context, index) {
                                return GestureDetector(
                                  onTap: () {
                                    ////
                                  },
                                  child: GeneralComponent(
                                    [
                                      Text(
                                          OnBoardingSettingCommon
                                                  .ADVERTISEMENT_INFORMATION_LIST[
                                              index][1],
                                          style: TextStyle(
                                              fontSize: 15,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.white)),
                                      Text(
                                          OnBoardingSettingCommon
                                                  .ADVERTISEMENT_INFORMATION_LIST[
                                              index][2],
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
                                        OnBoardingSettingCommon
                                                .SECURITY_INFORMATION_LIST[
                                            index][0],
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
                            OnBoardingSettingCommon.META_DESCRIPTION[0],
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
                            OnBoardingSettingCommon.META_DESCRIPTION[1],
                            style: const TextStyle(
                                color: Colors.grey,
                                fontSize: 15,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      setDivider(top: 10, bottom: 10),
                      // privacy title
                      Row(
                        children: [
                          Text(
                            OnBoardingSettingCommon.POLICY_TITLE,
                            style: const TextStyle(
                                color: Colors.white,
                                fontSize: 19,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      // policy content list
                      Container(
                        height: 110,
                        child: ListView.builder(
                            padding: EdgeInsets.zero,
                            itemCount:
                                OnBoardingSettingCommon.POLICY_SUBTITLE.length,
                            itemBuilder: ((context, index) {
                              return Container(
                                padding: EdgeInsets.symmetric(vertical: 5),
                                child: Text(
                                  OnBoardingSettingCommon
                                      .POLICY_SUBTITLE[index],
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 15),
                                ),
                              );
                            })),
                      ),
                      setDivider(top: 10, bottom: 60)
                    ],
                  ),
                ),
              ),
            ]),
            // bottom navigator
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  color: Colors.grey[800],
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children:
                        SettingCommon.BOTTOM_NAVIGATOR_ITEM_LIST.map((item) {
                      return GestureDetector(
                        onTap: (() {
                          setState(() {
                            _selectedBottomNavigator = item[1];
                          });
                        }),
                        child: Container(
                          height: 50,
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                // Container(height: 8, color: Colors.blue),
                                item[0] is IconData
                                    ? Container(
                                        height:
                                            item[1] == _selectedBottomNavigator
                                                ? 35
                                                : 30,
                                        width:
                                            item[1] == _selectedBottomNavigator
                                                ? 35
                                                : 30,
                                        child: Icon(
                                          item[0],
                                          color: item[1] ==
                                                  _selectedBottomNavigator
                                              ? Colors.blue
                                              : Colors.white,
                                          size: 22,
                                        ),
                                      )
                                    : Container(
                                        height:
                                            item[1] == _selectedBottomNavigator
                                                ? 35
                                                : 30,
                                        width:
                                            item[1] == _selectedBottomNavigator
                                                ? 35
                                                : 30,
                                        padding: EdgeInsets.all(5),
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(15))),
                                        child: Image.asset(
                                          item[0],
                                        ),
                                      ),
                                Wrap(
                                  children: [
                                    Text(
                                      item[1],
                                      style: TextStyle(
                                          color: item[1] ==
                                                  _selectedBottomNavigator
                                              ? Colors.blue
                                              : Colors.white,
                                          fontSize: item[1] ==
                                                  _selectedBottomNavigator
                                              ? 12
                                              : 10),
                                    )
                                  ],
                                )
                              ]),
                        ),
                      );
                    }).toList(),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

// Container(
//   color: Colors.grey[800],
//   height: 50,
//   child: ListView.builder(
//       scrollDirection: Axis.horizontal,
//       itemCount:
//           SettingCommon.BOTTOM_NAVIGATOR_ITEM_LIST.length,
//       itemBuilder: ((context, index) {
//         return ;
//       })),
// )
// bottomNavigationBar: Container(
//         height: 65,
//         padding: EdgeInsets.zero,
//         child: BottomNavigationBar(
//             selectedIconTheme: IconThemeData(color: Colors.red, size: 40),
//             currentIndex: _selectedIndex,
//             onTap: (value) {
//               setState(() {
//                 _selectedIndex = value;
//               });
//             },
//             backgroundColor: Colors.blueAccent,
//             // fixedColor: Colors.blue,
//             selectedItemColor: Colors.blue,
//             items: SettingCommon.BOTTOM_NAVIGATOR_ITEM_LIST.map((item) {
//               return BottomNavigationBarItem(
//                   icon: item[0] is IconData
//                       ? Icon(
//                           item[0],
//                           color: Colors.white,
//                           size: 13,
//                         )
//                       : Container(
//                           height: 20,
//                           width: 20,
//                           decoration: BoxDecoration(
//                               borderRadius:
//                                   BorderRadius.all(Radius.circular(10))),
//                           child: Image.asset(item[0],),
//                         ),
//                   label: item[1]);
//             }).toList()),)
