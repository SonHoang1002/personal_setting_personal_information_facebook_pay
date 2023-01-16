import 'package:flutter/cupertino.dart';

class SettingCommon {
  static const IconData BACK_ICON_DATA = CupertinoIcons.back;
  static const PATH_IMG = "assets/images/";
  static const PATH_ICON = "assets/icons/";
}

class OnBoardingSettingCommon {
  static const PLACE_HOLDER_SEARCH = "Tìm kiếm cài đặt";
  static const PERSONAL_PAGE_TITLE = "Trang cá nhân";
  static const PERSONAL_PAGE_DESCRIPTION =
      "Kiểm soát các tùy chọn của trang cá nhân này như quyền riêng tư, thông báo và các cài đặt khác";
  static List<dynamic> USER_EXAMPLE = [
    SettingCommon.PATH_IMG + "cat_7.png",
    "Cài đặt trang cá nhân",
    "Dành cho USER_NAME"
  ];
}
