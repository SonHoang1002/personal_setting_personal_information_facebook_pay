import 'package:personal_setting_personal_information_facebook_pay/modules/SETTINGS/setting_commons/general_settings_common.dart';

class CompleteCommons {
  static const String COMPLETE_TITLE = "Tất cả đã xong";
  static const String COMPLETE_SUBTITLE =
      "Cám ơn bạn đã xem lại có thể nhìn thấy nội dung mà bạn chia sẻ. Bạn có thể thay đổi bất kỳ lúc nào trong phần Cài đặt.";
  static const Map<String, dynamic> COMPLETE_CONTENTS = {
    "key": "complete",
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
  static const String COMPLETE_NEXT = "Xem chủ đề khác";
}
