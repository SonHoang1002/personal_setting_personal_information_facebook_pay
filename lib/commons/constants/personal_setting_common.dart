// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:personal_setting_personal_information_facebook_pay/modules/personal_setting/models/personal_setting_function_model.dart';

// class SettingCommon {
//   static const IconData BACK_ICON_DATA = CupertinoIcons.back;
//   static const PATH_IMG = "assets/images/";
//   static const PATH_ICON = "assets/icons/";

//   static const PLACE_HOLDER_SEARCH = "Tìm kiếm cài đặt";

//   static const List<List<dynamic>> BOTTOM_NAVIGATOR_ITEM_LIST = [
//     [Icons.home, "Trang chủ"],
//     [Icons.group, "Bạn bè"],
//     [Icons.food_bank_outlined, "MarketPlace"],
//     [Icons.personal_injury, "Trang cá nhân"],
//     [Icons.notifications_active, "Thông báo"],
//     [PATH_IMG + "cat_7.png", "Menu"],
//   ];
// }

// class OnBoardingSettingCommon {
//   static const PERSONAL_PAGE_TITLE = "Trang cá nhân";
//   static const PERSONAL_PAGE_DESCRIPTION =
//       "Kiểm soát các tùy chọn của trang cá nhân này như quyền riêng tư, thông báo và các cài đặt khác";
//   static List<dynamic> USER_EXAMPLE = [
//     SettingCommon.PATH_IMG + "cat_7.png",
//     "Cài đặt trang cá nhân",
//     "Dành cho USER_NAME"
//   ];

//   // account
//   static const ACCOUNT_TITLE = "Tài khoản";
//   static const ACCOUNT_DESCRIPTION =
//       "Quản lý phần cài đặt liên quan đến quyền, quảng cáo, hoạt động bên ngoài Facebook và thông tin khác về tài khoản.";

//   static List<List<dynamic>> ACCOUNT_INFORMATION_LIST = [
//     [
//       SettingCommon.PATH_ICON + "bell_icon.svg",
//       "Thông tin cá nhân",
//       "Cập nhật tên và thông tin liên hệ mà bạn kết nối với tài khoản Facebook của mình"
//     ],
//     [
//       SettingCommon.PATH_ICON + "bell_icon.svg",
//       "Dịch bài viết",
//       "Hãy cho chúng tôi biết tùy chọn dịch mà bạn muốn áp dụng cho bài viết của bạn bè và bài viết song ngữ"
//     ],
//     [
//       SettingCommon.PATH_ICON + "bell_icon.svg",
//       "Thanh toán quảng cáo",
//       "Thanh toán hoặc chỉnh sửa cài đặt thanh toán của bạn"
//     ],
//     [
//       SettingCommon.PATH_ICON + "bell_icon.svg",
//       "Facebook Pay",
//       "Quản lý cài đạt thanh toán, xem lịch sử thanh toán và nhận hỗ trợ qua tính năng chat trực tiếp"
//     ],
//     [
//       SettingCommon.PATH_ICON + "bell_icon.svg",
//       "Quyền truy cập và kiểm soát",
//       "Quản lý dữ liệu, sửa đổi người liên hệ thừa kế, vô hiệu hóa hoặc xoas tài khoản của bạn, vv"
//     ],
//   ];

//   // security
//   static const SECURITY_TITLE = "Bảo mật";
//   static const SECURITY_DESCRIPTION =
//       "Cập nhật cài đặt đăng nhập và quản lý game/ ứng dụng kết nối với tài khoản của bạn";
//   static List<List<dynamic>> SECURITY_INFORMATION_LIST = [
//     [
//       SettingCommon.PATH_ICON + "bell_icon.svg",
//       "Bảo mật vằ đăng nhập",
//       "Cập nhật cài đặt đăng nhập và quản lý game/ ứng dụng kết nối với tài khoản của bạn"
//     ],
//     [
//       SettingCommon.PATH_ICON + "bell_icon.svg",
//       "Vị trí",
//       "Quản lý cài đặt vị trí của bạn"
//     ],
//     [
//       SettingCommon.PATH_ICON + "bell_icon.svg",
//       "Ứng dụng và trang web",
//       "Quản lý thông tin bạn chia sẻ với các ứng dụng và trang web bạn đã đăng nhập bằng Facebook"
//     ],
//     [
//       SettingCommon.PATH_ICON + "bell_icon.svg",
//       "Hoạt động bên ngoài Facebook",
//       "Xem hoặc xóa hoạt động từ các doanh nghiệp và tổ chức mà bạn truy cập ngoài Facebook"
//     ],
//     [
//       SettingCommon.PATH_ICON + "bell_icon.svg",
//       "Tiện ích tích hơp cho doanh nghiệp",
//       "Xem và gỡ các tiện ích tích hợp cho doanh nghiệp mà bạn kết nối với tài khoản của mình để quản lý quảng cáo, trang cá nhân cùng thông tin doanh nghiệp khác"
//     ],
//   ];

//   // advertisement
//   static const ADVERTISEMENT_TITLE = "Quảng cáo";
//   static const ADVERTISEMENT_DESCRIPTION =
//       "Xem lại cách chúng tôi sử dụng dữ liệu để hiển thị cho bạn quảng cáo cho phù hợp hơn";
//   static List<List<dynamic>> ADVERTISEMENT_INFORMATION_LIST = [
//     [
//       SettingCommon.PATH_ICON + "bell_icon.svg",
//       "Tùy chọn nâng cao",
//       "Kiểm soát xem dữ liệu ảnh hưởng đến quảng cáo bạn nhìn thấy như thế nào và tìm hiểu thêm về cách quảng cáo hoạt động."
//     ],
//   ];

//   // meta
//   static const META_TITLE = "Meta";
//   static const List<String> META_DESCRIPTION = [
//     "Trung tâm tài khoản",
//     "Kiểm soát chế độ cài đặt khi kết nối các trải nghiệm, chẳng hạn như đăng nhập và chia sẻ tin, bài viết trên Fcebook, Instagram cũng như Messenger"
//   ];
//   static List<List<dynamic>> META_INFORMATION_LIST = [
//     [
//       SettingCommon.PATH_ICON + "bell_icon.svg",
//       "Tùy chọn nâng cao",
//       "Kiểm soát xem dữ liệu ảnh hưởng đến quảng cáo bạn nhìn thấy như thế nào và tìm hiểu thêm về cách quảng cáo hoạt động."
//     ],
//   ];
//   // policy

//   static const POLICY_TITLE = "Pháp lý và chính sách";
//   static const List<String> POLICY_SUBTITLE = [
//     "Điều khoản dịch vụ",
//     "Chính sách quyền riêng tư",
//     "Chính sách cookie",
//     "Tiêu chuẩn cộng đồng"
//   ];
// }

// class PersonalSettingsCommon {
//   // private
//   static const PRIVATE_TITLE = "Quyền riêng tư";
//   static const PRIVATE_DESCRIPTION =
//       "Kiểm soát người nhìn thấy hoạt động của bạn trên Facebook và cách chúng tôi dùng dữ liệu để cá nhân hóa trải nghiệm";
//   static List<PersonalSettingFunctionModel> PRIVATE_INFORMATION_LIST = [
//     PersonalSettingFunctionModel(
//         SettingCommon.PATH_ICON + "bell_icon.svg",
//         "Quyền riêng tư",
//         "Kiểm soát ai có thể kết bạn, liên hệ và xem trang cá nhân của bạn"),
//     PersonalSettingFunctionModel(
//         SettingCommon.PATH_ICON + "bell_icon.svg",
//         "Trang cá nhân và gắn thẻ",
//         "Quyết định người có thể tương tác với trang cá nhân và các bài viết của bạn trên Facebook"),
//     PersonalSettingFunctionModel(
//         SettingCommon.PATH_ICON + "bell_icon.svg",
//         "Bài viết công khai",
//         "Quản lý những ai có thể theo dõi trang cá nhân và bình luận về bài viết công khai của bạn"),
//     PersonalSettingFunctionModel(SettingCommon.PATH_ICON + "bell_icon.svg",
//         "Chặn", "Xem lại những người mà bạn đã chặn trước đó"),
//     PersonalSettingFunctionModel(SettingCommon.PATH_ICON + "bell_icon.svg",
//         "Trạng thái hoạt động", "Hiển thị khi bạn hoạt động"),
//   ];

//   // notification
//   static const NOTIFICATION_TITLE = "Thông báo";
//   static const NOTIFICATION_DESCRIPTION =
//       "Quyết định cách bạn muốn giao tiếp trên Facebook và chúng tôi nên thông báo cho bạn bằng cách nào";
//   static List<List<dynamic>> NOTIFICATION_INFORMATION_LIST = [
//     [
//       SettingCommon.PATH_ICON + "bell_icon.svg",
//       "Cài đặt thông báo",
//       "Chọn thông báo bạn muốn nhận và nới nhận thông báo"
//     ],
//     [
//       SettingCommon.PATH_ICON + "bell_icon.svg",
//       "Nhắn tin văn bản",
//       "Chỉnh sửa tùy chọn gửi và nhận tin nhắn văn bản"
//     ],
//     [
//       SettingCommon.PATH_ICON + "bell_icon.svg",
//       "Email",
//       "Quản lý thông báo qua email của bạn"
//     ],
//     [
//       SettingCommon.PATH_ICON + "bell_icon.svg",
//       "Bản xem trước tin nhắn",
//       "Chỉnh sửa các tùy chọn nhận bản xem trước tin nhắn trong ứng dụng và lời nhắc từ Messenger"
//     ],
//     [
//       SettingCommon.PATH_ICON + "bell_icon.svg",
//       "Dấu chấm thông báo",
//       "Chỉnh sửa tùy chọn hiển thị dấu chấm thông báo trên lối tắt"
//     ],
//   ];

//   // your informationin facebook
//   static const YOUR_INFORMATION_IN_FACEBOOK_TITLE =
//       "Thông tin của bạn trên Facebook";
//   static const YOUR_INFORMATION_IN_FACEBOOK_DESCRIPTION =
//       "Xem hoặc tải xuống thông tin trang cá nhân và quản lý hoạt động trên trang cá nhân của bạn";
//   static List<List<dynamic>> YOUR_INFORMATION_IN_FACEBOOK_INFORMATION_LIST = [
//     [
//       SettingCommon.PATH_ICON + "bell_icon.svg",
//       "Truy cập thông tin trên trang cá nhân",
//       "Xem thông tin trên trang cá nhân của bạn theo hạng mục."
//     ],
//     [
//       SettingCommon.PATH_ICON + "bell_icon.svg",
//       "Nhật ký hoạt động",
//       "Xem và quản lý hoạt động trên trang cá nhân của bạn."
//     ],
//     [
//       SettingCommon.PATH_ICON + "bell_icon.svg",
//       "Tải xuống thông tin trên trang cá nhân",
//       "Tải xuống bản sao thông tin trên trang cá nhân của bạn để lưu giữ hoặc chuyển sang dịch vụ khác."
//     ],
//     [
//       SettingCommon.PATH_ICON + "bell_icon.svg",
//       "Chuyển bản sao thông tin của bạn",
//       "Sao chép ảnh, video, bài viết hoặc thông tin khác sang dịch vụ khác."
//     ],
//   ];

//   // your informationin facebook
//   static const FILE_AND_CONTACT_TITLE = "File phương tiện và danh bạ";
//   static const FILE_AND_CONTACT_DESCRIPTION =
//       "Quản lý ảnh, video và âm thanh, đồng bộ danh bạ liên tục cũng như xóa dữ liệu lướt xem trên điện thoại của bạn.";
//   static List<List<dynamic>> FILE_AND_CONTACT_INFORMATION_LIST = [
//     [
//       SettingCommon.PATH_ICON + "bell_icon.svg",
//       "Video và ảnh",
//       "Quản lý tùy chọn của bạn về tải lên và phát lại."
//     ],
//     [
//       SettingCommon.PATH_ICON + "bell_icon.svg",
//       "Âm thanh",
//       "Quản lý tùy chọn của bạn về âm thanh video và trong ứng dụng."
//     ],
//     [
//       SettingCommon.PATH_ICON + "bell_icon.svg",
//       "Trình duyệt",
//       "Ngắt lịch sử trang web mà bạn đã truy cập khi lướt xem trên Facebook bằng điện thoại.  "
//     ],
//     [
//       SettingCommon.PATH_ICON + "bell_icon.svg",
//       "Tải danh ba lên",
//       "Liên tục tải lên người liên hệ mới thêm và mới cập nhật."
//     ],
//   ];

//   // Feed Setting
//   static const FEED_SETTINGS_TITLE = "Cài đặt Bảng feed";
//   static const FEED_SETTINGS_DESCRIPTION =
//       "Quản lý nội dung bạn nhìn thấy trong Bảng feed.";
//   static List<List<dynamic>> FEED_SETTINGS_INFORMATION_LIST = [
//     [
//       SettingCommon.PATH_ICON + "bell_icon.svg",
//       "Tùy chọn Bảng feed",
//       "Kiểm soát và tùy chỉnh Bảng feed."
//     ],
//     [
//       SettingCommon.PATH_ICON + "bell_icon.svg",
//       "Tùy chọn về cảm xúc",
//       "Kiểm soát xem có hiển thị tổng số cảm xúc về bài viết trên Facebook hay không."
//     ],
//   ];

//   // story
//   static const STORY_TITLE = "Tin";
//   static const STORY_DESCRIPTION = "Kiểm soát cách chia sẻ và lưu trữ tin.";
//   static List<List<dynamic>> STORY_INFORMATION_LIST = [
//     [
//       SettingCommon.PATH_ICON + "bell_icon.svg",
//       "Cài đặt tin",
//       "Chọn ai có thể xem tin của bạn và quản lý kho lưu trữ tin."
//     ],
//   ];

//   // ShortCUt
//   static const SHORTCUT_TITLE = "Lối tắt";
//   static const String SHORTCUT_DESCRIPTION =
//       "Truy cập dễ dàng hơn vào các dịch vụ trên Facebook mà bạn hay dùng nhất.";
//   static List<List<dynamic>> SHORTCUT_INFORMATION_LIST = [
//     [
//       SettingCommon.PATH_ICON + "bell_icon.svg",
//       "Thanh lối tắt",
//       "Quyết định xem Facebook có thể thêm lối tắt nào vào thanh lối tắt của bạn."
//     ],
//   ];
// }


