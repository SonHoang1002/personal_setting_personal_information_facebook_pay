import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:personal_setting_personal_information_facebook_pay/commons/constants/personal_setting_common.dart';

class OnBoardSettingPage extends StatelessWidget {
  late double width = 0;
  late double height = 0;


  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    width = size.width;
    height = size.height;
    return Scaffold(
        backgroundColor: Colors.black,
        body: GestureDetector(
          onTap: (() {
            FocusManager.instance.primaryFocus!.unfocus();
          }),
          child: Column(children: [
            Expanded(
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                color: Colors.black87,
                child: Column(
                  children: [
                    // navigator and search setting input
                    Container(
                      margin: EdgeInsets.only(top: 50, bottom: 10),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              height: 50,
                              child: GestureDetector(
                                onTap: () => Navigator.of(context).pop(),
                                child: Icon(
                                  SettingCommon.BACK_ICON_DATA,
                                  color: Colors.white,
                                  // size: 14,
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
                                      contentPadding:
                                          EdgeInsets.fromLTRB(0, 5, 0, 0),
                                      hintText: OnBoardingSettingCommon.PLACE_HOLDER_SEARCH,
                                      hintStyle: TextStyle(
                                          color: Colors.white, fontSize: 14),
                                      border: OutlineInputBorder(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(17)))),
                                ),
                              ),
                            ),
                          ]),
                    ),
                    Row(
                      children: [
                        Text(
                          "CreatePostGroupCommon.TITLE[0]",
                          style: const TextStyle(
                              color: Colors.white,
                              fontSize: 22,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                  ],
                ),
              ),
            ),
          ]),
        ));
  }
}
