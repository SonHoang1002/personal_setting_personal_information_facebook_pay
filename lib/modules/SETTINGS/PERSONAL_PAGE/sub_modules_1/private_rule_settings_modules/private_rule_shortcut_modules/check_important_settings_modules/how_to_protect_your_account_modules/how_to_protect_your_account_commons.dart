import 'package:personal_setting_personal_information_facebook_pay/modules/SETTINGS/setting_commons/general_settings_common.dart';

class HowToProtectYourAccountCommons {
  static const HOW_TO_PROTECT_YOUR_ACCOUNT_TITLE = "Cách bảo vệ tài khoản";
  static const HOW_TO_PROTECT_YOUR_ACCOUNT_SUBTITLE =
      "Hãy cùng xem một vài bước hướng dẫn để bảo vệ tài khoản của bạn nhé.";
   static const Map<String, dynamic>HOW_TO_PROTECT_YOUR_ACCOUNT_CONTENTS = {
    "key": "how_to_protect_account",
    "data": [
      {
        "key": "turn_on_login_warning",
        "icon": SettingCommons.PATH_ICON + "bell_icon.svg",
        "content": "Bật cảnh báo đăng nhập"
      },
      {
        "key": "OK_password",
        "icon": SettingCommons.PATH_ICON + "bell_icon.svg",
        "content": "Mật khẩu OK"
      },
      {
        "key": "turn_on_2-factor_authentication",
        "icon": SettingCommons.PATH_ICON + "bell_icon.svg",
        "content": "Bật tính năng xác thực 2 yếu tố"
      }
    ]
  };
  static const String WHO_CAN_SEE_WHAT_YOU_SHARE_NEXT = "Tiếp tục";
}
