import 'package:personal_setting_personal_information_facebook_pay/modules/SETTINGS/setting_commons/general_settings_common.dart';

class CheckPrivateRuleComponentCommons {
  static const String CHECK_PRIVATE_RULE_COMPONENT_TITLE =
      "Ai có thể nhìn thấy nội dung bạn chia sẻ";
  static const String CHECK_PRIVATE_RULE_COMPONENT_SUBTITLE =
      "Chúng tôi sẽ giải thích rõ các lựa chọn để bạn có quyết định phù hợp.";
  static const Map<String, dynamic> CHECK_PRIVATE_RULE_COMPONENT_CONTENTS = {
    "key": "check_private_rule_component",
    "data": [
      {
        "key": "information_on_personal_page",
        "icon": SettingCommons.PATH_ICON + "bell_icon.svg",
        "content": "Thông tin trên trang cá nhân"
      },
      {
        "key": "post_and_story",
        "icon": SettingCommons.PATH_ICON + "bell_icon.svg",
        "content": "Bài viết và tin"
      },
      {
        "key": "block",
        "icon": SettingCommons.PATH_ICON + "bell_icon.svg",
        "content": "Chặn"
      }
    ]
  };
  static const String WHO_CAN_SEE_WHAT_YOU_SHARE_NEXT = "Tiếp tục";
}
