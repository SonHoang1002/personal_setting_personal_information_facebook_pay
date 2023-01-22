import 'package:personal_setting_personal_information_facebook_pay/modules/SETTINGS/setting_commons/general_settings_common.dart';

class WhoCanSeeWhatYouShareCommon {
  static const String WHO_CAN_SEE_WHAT_YOU_SHARE_TITLE =
      "Ai có thể nhìn thấy nội dung bạn chia sẻ";
  static const String WHO_CAN_SEE_WHAT_YOU_SHARE_SUBTITLE =
      "Chúng tôi sẽ giải thích rõ các lựa chọn để bạn có quyết định phù hợp.";
  static const Map<String, dynamic> WHO_CAN_SEE_WHAT_YOU_SHARE_CONTENTS = {
    "key": "who_can_see_what_you_share",
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
