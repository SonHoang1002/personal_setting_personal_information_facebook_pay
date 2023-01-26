// set_your_data_on_facebook_

import 'package:personal_setting_personal_information_facebook_pay/modules/SETTINGS/setting_commons/general_settings_common.dart';

class SetYourDataOnFacebookCommons {
  static const SET_YOUR_DATA_ON_FACEBOOK_TITLE = "Cài đặt dữ liệu của bạn trên Fcebook";
  static const SET_YOUR_DATA_ON_FACEBOOK_SUBTITLE =
      "Hãy cùng xem một vài bước hướng dẫn để bảo vệ tài khoản của bạn nhé.";
   static const Map<String, dynamic>SET_YOUR_DATA_ON_FACEBOOK_CONTENTS = {
    "key": "set_your_data_on_facebook",
    "data": [
      {
        "key": "application_and_website",
        "icon": SettingCommons.PATH_ICON + "bell_icon.svg",
        "content": "Ứng dụng và trang web"
      },
      {
        "key": "location",
        "icon": SettingCommons.PATH_ICON + "bell_icon.svg",
        "content": "Vị trí"
      },
    ]
  };
  static const String WHO_CAN_SEE_WHAT_YOU_SHARE_NEXT = "Tiếp tục";
}
