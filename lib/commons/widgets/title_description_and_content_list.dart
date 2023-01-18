import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:personal_setting_personal_information_facebook_pay/commons/constants/personal_setting_common.dart';
import 'package:personal_setting_personal_information_facebook_pay/commons/widgets/information_component_widget.dart';
import 'package:personal_setting_personal_information_facebook_pay/modules/personal_setting/screen/on_board_setting_page.dart';
import 'package:personal_setting_personal_information_facebook_pay/modules/personal_setting/screen/sub_modules_on_board/sub_module_personal_setting/private_rule_settings._page.dart';

class TitleDescriptionAndContentListWidget extends StatelessWidget {
  final String title;
  final String subTitle;
 final Widget listView;
  // final double height;

  const TitleDescriptionAndContentListWidget({
    super.key,
    required this.title,
    required this.subTitle,
    // required this.height,
    required this.listView,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Row(
          children: [
            Text(
              title,
              style: const TextStyle(
                  color: Colors.white,
                  fontSize: 19,
                  fontWeight: FontWeight.bold),
            ),
          ],
        ),
        // account  description
        Container(
          alignment: Alignment.centerLeft,
          child: Wrap(
            textDirection: TextDirection.ltr,
            children: [
              Text(
                subTitle,
                textAlign: TextAlign.left,
                style: const TextStyle(
                  color: Colors.grey,
                  fontSize: 15,
                ),
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        // account content list
        listView,
        // divider
        setDivider(bottom: 10),
      ],
    );
  }
}

void pushToNewScreen(BuildContext context, Widget widgetClass) {
  Navigator.of(context).push(MaterialPageRoute(builder: (_) => widgetClass));
}

Widget setDivider(
    {double? left = 0,
    double? top = 0,
    double? right = 0,
    double? bottom = 0}) {
  return Container(
    margin:
        EdgeInsets.only(top: top!, bottom: bottom!, right: right!, left: left!),
    height: 4,
    color: Colors.black,
  );
}




// Container(
//           height: height,
//           child: ListView.builder(
//               padding: EdgeInsets.zero,
//               itemCount: contentList.length,
//               itemBuilder: ((context, index) {
//                 return GestureDetector(
//                   onTap: () {
//                     switch (contentList[index][0]) {
//                       case PersonalSettingsCommon.PRIVATE_TITLE:
//                         {
//                           pushToNewScreen(context, PrivateRulesSettingPage());
//                           break;
//                         }
//                       default:
//                         break;
//                     }
//                   },
//                   child: GeneralComponent(
//                     [
//                       Text(contentList[index][1],
//                           style: TextStyle(
//                               fontSize: 15,
//                               fontWeight: FontWeight.bold,
//                               color: Colors.white)),
//                       Text(contentList[index][2],
//                           style: TextStyle(fontSize: 15, color: Colors.grey)),
//                     ],
//                     prefixWidget: Container(
//                       height: 40,
//                       width: 40,
//                       padding: EdgeInsets.all(7),
//                       margin: EdgeInsets.only(right: 10),
//                       decoration: BoxDecoration(
//                           borderRadius: BorderRadius.all(Radius.circular(20))),
//                       child: SvgPicture.asset(
//                         contentList[index][0],
//                         color: Colors.white,
//                       ),
//                     ),
//                     changeBackground: Colors.transparent,
//                     padding: EdgeInsets.fromLTRB(0, 5, 0, 7),
//                   ),
//                 );
//               })),
//         ),