import 'package:personal_setting_personal_information_facebook_pay/modules/SETTINGS/setting_commons/general_settings_common.dart';

class FacebookAdvertisementOptionsCommons {
  static const FACEBOOK_ADVERTISEMENT_OPTIONS_TITLE =
      "Tùy chọn quảng cáo trên Facebook";
  static const FACEBOOK_ADVERTISEMENT_OPTIONS_SUBTITLE =
      "Hãy cùng xem một vài bước hướng dẫn để bảo vệ tài khoản của bạn nhé.";
  static const Map<String, dynamic> FACEBOOK_ADVERTISEMENT_OPTIONS_CONTENTS = {
    "key": "facebook_advertising_options",
    "data": [
      {
        "key": "application_and_website",
        "icon": SettingCommons.PATH_ICON + "bell_icon.svg",
        "content": "Tìm hiểu về quảng cáo"
      },
      {
        "key": "location",
        "icon": SettingCommons.PATH_ICON + "bell_icon.svg",
        "content": "Thông tin trên trang cá nhân"
      },
      {
        "key": "location",
        "icon": SettingCommons.PATH_ICON + "bell_icon.svg",
        "content": "Tương tác trên mạng xã hội"
      },
    ]
  };
  static const String WHO_CAN_SEE_WHAT_YOU_SHARE_NEXT = "Tiếp tục";
}
