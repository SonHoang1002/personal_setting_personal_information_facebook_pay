import 'package:personal_setting_personal_information_facebook_pay/modules/SETTINGS/setting_commons/general_settings_common.dart';

class HowPeopleCanFindYouOnFacebookCommons {
  static const String HOW_PEOPLE_CAN_FIND_YOU_ON_FACEBOOK_TITLE =
      "Cách mọi người có thể tìm thấy bạn trên Facebook";
  static const String HOW_PEOPLE_CAN_FIND_YOU_ON_FACEBOOK_SUBTITLE =
      "Chúng tôi sẽ giải thích rõ các lựa chọn để bạn có quyết định phù hợp.";
  static const Map<String, dynamic> HOW_PEOPLE_CAN_FIND_YOU_ON_FACEBOOK_CONTENTS = {
    "key": "how_people_can_find_you_on_facebook",
    "data": [
      {
        "key": "add_friend_request",
        "icon": SettingCommons.PATH_ICON + "bell_icon.svg",
        "content": "Lời mời kết bạn"
      },
      {
        "key": "phone_and_email",
        "icon": SettingCommons.PATH_ICON + "bell_icon.svg",
        "content": "Số điện thoại và email"
      },
      {
        "key": "search_tool",
        "icon": SettingCommons.PATH_ICON + "bell_icon.svg",
        "content": "Công cụ tìm kiếm"
      }
    ]
  };
  static const String WHO_CAN_SEE_WHAT_YOU_SHARE_NEXT = "Tiếp tục";
}
