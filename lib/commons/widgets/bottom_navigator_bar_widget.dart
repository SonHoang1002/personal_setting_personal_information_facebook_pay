import 'package:flutter/material.dart';
import 'package:personal_setting_personal_information_facebook_pay/providers/route_provider.dart';
import 'package:provider/provider.dart';

import '../../modules/SETTINGS/setting_commons/general_settings_common.dart';

// Widget BottomNavigatorBarWidget(BuildContext context) {
//   List<bool> routeList = Provider.of<RouteProvider>(
//     context,
//   ).getRouteList;
//   return Column(
//     mainAxisAlignment: MainAxisAlignment.end,
//     children: [
//       Container(
//         height: 50,
//         color: Colors.grey[800],
//         child: ListView.separated(
//             separatorBuilder: (context, index) {
//               return Container(width: 5,);
//             },
//             scrollDirection: Axis.horizontal,
//             // shrinkWrap: true,
//             padding: EdgeInsets.zero,
//             itemCount: SettingCommons.BOTTOM_NAVIGATOR_ITEM_LIST.length,
//             itemBuilder: ((context, index) {
//               return GestureDetector(
//                 onTap: (() {
//                   Provider.of<RouteProvider>(context, listen: false)
//                       .setRouteProvider(index);
//                 }),
//                 child: Container(
//                   height: 50,
//                   child: Column(
//                       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                       children: [
//                         // Container(height: 8, color: Colors.blue),
//                         SettingCommons.BOTTOM_NAVIGATOR_ITEM_LIST[index][0]
//                                 is IconData
//                             ? Container(
//                                 height: routeList[index] ? 35 : 30,
//                                 width: routeList[index] ? 35 : 30,
//                                 child: Icon(
//                                   SettingCommons
//                                       .BOTTOM_NAVIGATOR_ITEM_LIST[index][0],
//                                   color: Provider.of<RouteProvider>(context)
//                                           .getRouteList[index]
//                                       ? Colors.blue
//                                       : Colors.white,
//                                   size: 22,
//                                 ),
//                               )
//                             : Container(
//                                 height: routeList[index] ? 35 : 30,
//                                 width: routeList[index] ? 35 : 30,
//                                 padding: EdgeInsets.all(5),
//                                 decoration: BoxDecoration(
//                                     borderRadius:
//                                         BorderRadius.all(Radius.circular(15))),
//                                 child: Image.asset(
//                                   SettingCommons
//                                       .BOTTOM_NAVIGATOR_ITEM_LIST[index][0],
//                                 ),
//                               ),
//                         Wrap(
//                           children: [
//                             Text(
//                               SettingCommons.BOTTOM_NAVIGATOR_ITEM_LIST[index]
//                                   [1],
//                               style: TextStyle(
//                                   color: Provider.of<RouteProvider>(context)
//                                           .getRouteList[index]
//                                       ? Colors.blue
//                                       : Colors.white,
//                                   fontSize: Provider.of<RouteProvider>(context)
//                                           .getRouteList[index]
//                                       ? 12
//                                       : 10),
//                             )
//                           ],
//                         )
//                       ]),
//                 ),
//               );
//             })),
//       )
//     ],
//   );
// }

Widget buildBottomNavigatorBarWidget(BuildContext context) {
  // List<bool> routeList = Provider.of<RouteProvider>(
  //   context,
  // ).getRouteList;
  return Column(
    mainAxisAlignment: MainAxisAlignment.end,
    children: [
      Container(
        color: Colors.grey[800],
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: SettingCommons.BOTTOM_NAVIGATOR_ITEM_LIST.map((item) {
            int index = SettingCommons.BOTTOM_NAVIGATOR_ITEM_LIST.indexOf(item);
            return GestureDetector(
              onTap: (() {
                Provider.of<RouteProvider>(context, listen: false)
                    .setRouteProvider(index);
              }),
              child: Container(
                height: 50,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      item[0] is IconData
                          ? Container(
                              height: Provider.of<RouteProvider>(
                                context,
                              ).getRouteList[index]
                                  ? 35
                                  : 30,
                              width: Provider.of<RouteProvider>(
                                context,
                              ).getRouteList[index]
                                  ? 35
                                  : 30,
                              child: Icon(
                                item[0],
                                color: Provider.of<RouteProvider>(
                                  context,
                                ).getRouteList[index]
                                    ? Colors.blue
                                    : Colors.white,
                                size: 22,
                              ),
                            )
                          : Container(
                              height: Provider.of<RouteProvider>(
                                context,
                              ).getRouteList[index]
                                  ? 35
                                  : 30,
                              width: Provider.of<RouteProvider>(
                                context,
                              ).getRouteList[index]
                                  ? 35
                                  : 30,
                              padding: EdgeInsets.all(5),
                              decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(15))),
                              child: Image.asset(
                                item[0],
                              ),
                            ),
                      Wrap(
                        children: [
                          Text(
                            item[1],
                            style: TextStyle(
                                color: Provider.of<RouteProvider>(
                                  context,
                                ).getRouteList[index]
                                    ? Colors.blue
                                    : Colors.white,
                                fontSize: Provider.of<RouteProvider>(
                                  context,
                                ).getRouteList[index]
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
  );
}
