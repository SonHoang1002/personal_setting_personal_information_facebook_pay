import 'package:personal_setting_personal_information_facebook_pay/modules/SETTINGS/setting_commons/general_settings_common.dart';

class BlockCommons {
  static const String BLOCK_APPBAR_TITLE = "Chặn";
  static const String BLOCK_TITLE =
      "Khi bạn chặn ai đó, họ sẽ không xem được nội dung bạn đăng trên dòng thời gian của mình, gắn thẻ bạn, mời bạn tham gia sự kiện hoặc nhóm, bắt đầu cuộc trò chuyện với bạn hay thêm bạn làm bạn bè.";
  static const String BLOCK_TIP =
      "Mẹo: Khi bạn chặn ai đó, chúng tôi sẽ không cho họ biết đâu";

static const Map<String, dynamic> BLOCK_ADD_TO_BLOCK_LIST = {
    "key": "add_to_block_list",
    "title": "Thêm vào danh sách chặn",
    "icon": SettingCommons.PATH_ICON + "bell_icon.svg",
    // "data": [
    //   {"name": "abc"},
    //   {"name": "sdfh"},
    //   {"name": "sdjfier"},
    // ]
  };
  static const Map<String, dynamic> BLOCK_SEE_BLOCK_LIST = {
    "key": "see_block_list",
    "title": "Xem danh sách chặn của bạn",
    "icon": SettingCommons.PATH_ICON + "bell_icon.svg",
    "data": [
      {"name": "abc"},
      {"name": "sdfh"},
      {"name": "sdjfier"},
    ]
  };
}
