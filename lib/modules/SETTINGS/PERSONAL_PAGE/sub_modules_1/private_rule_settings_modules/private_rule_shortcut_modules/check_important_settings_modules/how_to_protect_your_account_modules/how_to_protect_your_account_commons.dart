import 'package:personal_setting_personal_information_facebook_pay/modules/SETTINGS/setting_commons/general_settings_common.dart';

class HowToProtectYourAccountCommons {
  static const HOW_TO_PROTECT_YOUR_ACCOUNT_TITLE = "Cách bảo vệ tài khoản";
  static const HOW_TO_PROTECT_YOUR_ACCOUNT_SUBTITLE =
      "Hãy cùng xem một vài bước hướng dẫn để bảo vệ tài khoản của bạn nhé.";
  static const Map<String, dynamic> HOW_TO_PROTECT_YOUR_ACCOUNT_CONTENTS = {
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

class LoginWarningCommons {
  static const LOGIN_WARNING_APPAR_TITLE = "Cảnh báo đăng nhập";
  static const LOGIN_WARNING_TITLE = "Bật cảnh báo";
  static const LOGIN_WARNING_SUBTITLE =
      "Khi bật cảnh báo, bạn sẽ biết nếu có người đăng nhập vào tài khoản của bạn từ địa điểm lạ. CHúng tôi sẽ cho bạn biết lần đăng nhập đó được thực hiện ở đâu và trên thiết bị nào.";
  static const Map<String, dynamic> LOGIN_WARNING_CONTENTS = {
    "key": "login_warning",
    "data": [
      {
        "key": "facebook",
        "icon": SettingCommons.PATH_ICON + "bell_icon.svg",
        "title": "Facebook",
        "subTitle": "Chúng tôi sẽ gửi cho bạn thông báo trên Facebook",
      },
      {
        "key": "email",
        "icon": SettingCommons.PATH_ICON + "bell_icon.svg",
        "title": "Email",
        "subTitle": "Chúng tôi sẽ gửi cảnh báo đến a@gmail.com",
      },
    ]
  };
  static const String LOGIN_WARNING_SKIP = "Bỏ qua";
}

class PasswordCommons {
  static const PASSWORD_APPAR_TITLE = "Mật khẩu";
  static const PASSWORD_TITLE = "Có ai biết mật khẩu của bạn không ?";
  static const PASSWORD_SUBTITLE =
      "Nếu bạn dùng mật khẩu Facebook ở cả nơi khác trên mạng thì tài khoản sẽ ít an toàn hơn. Hãy chọn mật khẩu mạnh hơn để bảo vệ chính mình và bạn bè trên Facebook.";
  static const PASSWORD_CHANGE_PASSWORD = "Đổi mật khẩu";
  static const Map<String, dynamic> LOGIN_WARNING_CONTENTS = {
    "key": "login_warning",
    "data": [
      {
        "key": "facebook",
        "icon": SettingCommons.PATH_ICON + "bell_icon.svg",
        "title": "Facebook",
        "subTitle": "Chúng tôi sẽ gửi cho bạn thông báo trên Facebook",
      },
      {
        "key": "email",
        "icon": SettingCommons.PATH_ICON + "bell_icon.svg",
        "title": "Email",
        "subTitle": "Chúng tôi sẽ gửi cảnh báo đến a@gmail.com",
      },
    ]
  };
  static const String PASSWORD_SKIP = "Bỏ qua";
}
