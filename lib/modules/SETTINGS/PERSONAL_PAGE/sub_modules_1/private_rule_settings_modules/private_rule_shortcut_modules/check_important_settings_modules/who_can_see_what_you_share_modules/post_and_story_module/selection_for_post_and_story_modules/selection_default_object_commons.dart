import 'package:personal_setting_personal_information_facebook_pay/modules/SETTINGS/setting_commons/general_settings_common.dart';

class SelectionDefaultObjectCommons {
  static const SELECTION_DEFAULT_OBJECT_APPBAR_TITLE = "Đối tượng mặc định";
  static const SELECTION_DEFAULT_OBJECT_DESCRIPTION =
      "Đối tượng mặc định của bạn đã được đặt thành Bạn bè. Đây sẽ là đối tượng của các bài viết trong tương lai. Tuy nhiên, bất cứ lúc nào bạn cũng có thể thay đổi đối tượng của riêng một bài viết nào đó.";
  static const SELECTION_DEFAULT_OBJECT_TITLE = "Chọn đối tượng mặc định";
  static const Map<String, dynamic> SELECTION_DEFAULT_OBJECT_CONTENT = {
    "key": "selection_default_object",
    "data": [
      {
        "key": "public",
        "icon": SettingCommons.PATH_ICON + "bell_icon.svg",
        "title": "Công khai",
        "subTitle": "Bất kỳ ai ở trên hoặc ngoài Facebook",
        // "iconNext": SettingCommons.NEXT_ICON_DATA,
      },
      {
        "key": "friend",
        "icon": SettingCommons.PATH_ICON + "bell_icon.svg",
        "title": "Bạn bè",
        "subTitle": "Bạn bè của bạn trên Facebook",
        // "iconNext": "",
      },
      {
        "key": "friend_exception",
        "icon": SettingCommons.PATH_ICON + "bell_icon.svg",
        "title": "Bạn bè ngoại trừ",
        "subTitle": "Không hiển thị với một số bạn bè",
        "iconNext": SettingCommons.NEXT_ICON_DATA,
      },
      {
        "key": "specific_friends",
        "icon": SettingCommons.PATH_ICON + "bell_icon.svg",
        "title": "Bạn bè cụ thể",
        "subTitle": "Chỉ hiển thị với một số bạn bè",
        "iconNext": SettingCommons.NEXT_ICON_DATA
      },
      {
        "key": "private",
        "icon": SettingCommons.PATH_ICON + "bell_icon.svg",
        "title": "Chỉ mình tôi",
        "subTitle": "Chỉ mình tôi",
        // "iconNext": ""
      },
    ]
  };
}
