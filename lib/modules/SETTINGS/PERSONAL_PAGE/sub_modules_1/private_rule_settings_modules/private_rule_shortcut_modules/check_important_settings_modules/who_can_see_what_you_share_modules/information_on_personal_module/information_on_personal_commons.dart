import 'package:personal_setting_personal_information_facebook_pay/modules/SETTINGS/setting_commons/general_settings_common.dart';

class InformationOnPersonalPageCommons {
  static const String INFORMATION_ON_PERSONAL_PAGE_APPBAR_TITLE =
      "Thông tin trên trang cá nhân";

  static const String INFORMATION_ON_PERSONAL_PAGE_TITLE =
      "Vui lòng xem lại thông tin này trên trang cá nhân và quyết định người bạn muốn cho xem. Trang cá nhân của bạn có thể chứ nhiều thông tin hơn so với những gì liệt kê tại đây ?";

  static const Map<String, dynamic> INFORMATION_ON_PERSONAL_PAGE_PHONE = {
    "key": "phone",
    "title": "Số điện thoại",
    "data": [
      {"content": "036 6758 465", "status": "Bạn của bạn bè"},
    ]
  };

  static const Map<String, dynamic> INFORMATION_ON_PERSONAL_PAGE_EMAIL = {
    "key": "email",
    "title": "Email",
    "data": [
      {"content": "abc@gmail.com", "status": "Chỉ mình tôi"},
    ]
  };

  static const Map<String, dynamic> INFORMATION_ON_PERSONAL_PAGE_BIRTHDAY = {
    "key": "birthday",
    "title": "Sinh nhật",
    "data": [
      {"content": "1 tháng 7", "status": "Bạn của bạn bè"},
      {"content": "1905", "status": "Bạn của bạn bè"},
    ]
  };

  static const Map<String, dynamic>
      INFORMATION_ON_PERSONAL_PAGE_RELATIONSHIP_STATUS = {
    "key": "relationship_status",
    "title": "Tình trạng mối quan hệ",
    "data": [
      {"content": "Đã kết hôn", "status": "Công khai"},
    ]
  };

  static const Map<String, dynamic> INFORMATION_ON_PERSONAL_PAGE_PROVINCE = {
    "key": "province",
    "title": "Tỉnh/ thành phố hiện tại",
    "data": [
      {"content": "Hà Nội", "status": "Công khai"},
    ]
  };
  static const Map<String, dynamic>
      INFORMATION_ON_PERSONAL_PAGE_FRIEND_AND_FOLLOW = {
    "key": "friend_and_follow",
    "title": "Bạn bè và theo dõi",
    "data": [
      {
        "content":
            "Ai có thể xem danh sách bạn bè trên trang cá nhân của bạn ?",
        "status": "Chỉ mình tôi"
      },
      {
        "content":
            "Ai có thể nhìn thấy những người, Trang và danh sách mà bạn theo dõi ?",
        "status": "Chỉ mình tôi"
      },
    ]
  };

  static const List<Map<String, dynamic>>
      INFORMATION_ON_PERSONAL_PAGE_CHOOSE_PHONE_STATUS = [
    {
      "key": "public",
      "icon": SettingCommons.PATH_ICON + "bell_icon.svg",
      "title": "Công khai",
      "subTitle": "Bất kỳ ai ở trên hoặc ngoài Facebook",
      "isCheck": true
    },
    {
      "key": "friend",
      "icon": SettingCommons.PATH_ICON + "bell_icon.svg",
      "title": "Bạn bè",
      "subTitle": "Bạn bè của bạn trên Facebook",
      "isCheck": false
    },
    {
      "key": "private",
      "icon": SettingCommons.PATH_ICON + "bell_icon.svg",
      "title": "Chỉ mình tôi",
      "subTitle": "Chỉ mình tôi",
      "isCheck": false
    },
  ];
  static const List<Map<String, dynamic>>
      INFORMATION_ON_PERSONAL_PAGE_CHOOSE_EMAIL_STATUS = [
    {
      "key": "public",
      "icon": SettingCommons.PATH_ICON + "bell_icon.svg",
      "title": "Công khai",
      "subTitle": "Bất kỳ ai ở trên hoặc ngoài Facebook",
      "isCheck": true
    },
    {
      "key": "friend",
      "icon": SettingCommons.PATH_ICON + "bell_icon.svg",
      "title": "Bạn bè",
      "subTitle": "Bạn bè của bạn trên Facebook",
      "isCheck": false
    },
    {
      "key": "private",
      "icon": SettingCommons.PATH_ICON + "bell_icon.svg",
      "title": "Chỉ mình tôi",
      "subTitle": "Chỉ mình tôi",
      "isCheck": false
    },
  ];
  static const List<Map<String, dynamic>>
      INFORMATION_ON_PERSONAL_PAGE_CHOOSE_BIRTHDAY_STATUS = [
    {
      "key": "public",
      "icon": SettingCommons.PATH_ICON + "bell_icon.svg",
      "title": "Công khai",
      "subTitle": "Bất kỳ ai ở trên hoặc ngoài Facebook",
      "isCheck": true
    },
    {
      "key": "friend_of_friend",
      "icon": SettingCommons.PATH_ICON + "bell_icon.svg",
      "title": "Bạn của bạn bè",
      "subTitle": "Bạn của bạn bè",
      "isCheck": false
    },
    {
      "key": "friend",
      "icon": SettingCommons.PATH_ICON + "bell_icon.svg",
      "title": "Bạn bè",
      "subTitle": "Bạn bè của bạn trên Facebook",
      "isCheck": false
    },
    {
      "key": "private",
      "icon": SettingCommons.PATH_ICON + "bell_icon.svg",
      "title": "Chỉ mình tôi",
      "subTitle": "Chỉ mình tôi",
      "isCheck": false
    },
  ];
  static const List<Map<String, dynamic>>
      INFORMATION_ON_PERSONAL_PAGE_CHOOSE_PROVINCE_STATUS = [
    {
      "key": "public",
      "icon": SettingCommons.PATH_ICON + "bell_icon.svg",
      "title": "Công khai",
      "subTitle": "Bất kỳ ai ở trên hoặc ngoài Facebook",
      "isCheck": true
    },
    {
      "key": "friend",
      "icon": SettingCommons.PATH_ICON + "bell_icon.svg",
      "title": "Bạn bè",
      "subTitle": "Bạn bè của bạn trên Facebook",
      "isCheck": false
    },
    {
      "key": "private",
      "icon": SettingCommons.PATH_ICON + "bell_icon.svg",
      "title": "Chỉ mình tôi",
      "subTitle": "Chỉ mình tôi",
      "isCheck": false
    },
  ];
 static const List<Map<String, dynamic>>
      INFORMATION_ON_PERSONAL_PAGE_CHOOSE_RELATIONSHIP_STATUS = [
    {
      "key": "public",
      "icon": SettingCommons.PATH_ICON + "bell_icon.svg",
      "title": "Công khai",
      "subTitle": "Bất kỳ ai ở trên hoặc ngoài Facebook",
      "isCheck": true
    },
    {
      "key": "friend",
      "icon": SettingCommons.PATH_ICON + "bell_icon.svg",
      "title": "Bạn bè",
      "subTitle": "Bạn bè của bạn trên Facebook",
      "isCheck": false
    },
    {
      "key": "private",
      "icon": SettingCommons.PATH_ICON + "bell_icon.svg",
      "title": "Chỉ mình tôi",
      "subTitle": "Chỉ mình tôi",
      "isCheck": false
    },
  ];

 static const List<Map<String, dynamic>>
      INFORMATION_ON_PERSONAL_PAGE_CHOOSE_FRIEND_AND_FOLLOW_STATUS = [
    {
      "key": "public",
      "icon": SettingCommons.PATH_ICON + "bell_icon.svg",
      "title": "Công khai",
      "subTitle": "Bất kỳ ai ở trên hoặc ngoài Facebook",
      "isCheck": true
    },
    {
      "key": "friend",
      "icon": SettingCommons.PATH_ICON + "bell_icon.svg",
      "title": "Bạn bè",
      "subTitle": "Bạn bè của bạn trên Facebook",
      "isCheck": false
    },
      {
      "key": "friends_except",
      "icon": SettingCommons.PATH_ICON + "bell_icon.svg",
      "title": "Bạn bè ngoại trừ",
      "subTitle": "Không hiển thị với một số bạn bè",
      "isCheck": false
    },
      {
      "key": "specific_friends",
      "icon": SettingCommons.PATH_ICON + "bell_icon.svg",
      "title": "Bạn bè cụ thể",
      "subTitle": "Chỉ hiển thị với một số bạn bè",
      "isCheck": false
    },
    {
      "key": "private",
      "icon": SettingCommons.PATH_ICON + "bell_icon.svg",
      "title": "Chỉ mình tôi",
      "subTitle": "Chỉ mình tôi",
      "isCheck": false
    },
  ];


}
