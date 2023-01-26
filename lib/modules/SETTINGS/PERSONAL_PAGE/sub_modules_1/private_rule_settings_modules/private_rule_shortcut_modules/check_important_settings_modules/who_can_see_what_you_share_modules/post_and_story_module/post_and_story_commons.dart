import 'package:personal_setting_personal_information_facebook_pay/modules/SETTINGS/setting_commons/general_settings_common.dart';

class PostAndStoryCommons {
  static const String POST_AND_STORY_APPBAR_TITLE = "Bài viết và tin";

  static const String POST_AND_STORY_TITLE =
      "Bạn là người quyết định bài viết và tin của mình sẽ hiển thị với ai.";
  static const Map<String, dynamic> POST_AND_STORY_DEFAULT_OBJECT = {
    "key": "default_object",
    "title": "Đối tượng mặc định",
    "data": [
      {
        "content":
            "Đối tượng mặc định của bạn là Bạn bè. Đây sẽ là đối tượng của các bài viết trong tương lai. Tuy nhiên, bất cứ lúc nào bạn cũng có thể thay đổi đối tượng của riêng một bài viết nào đó.",
        "status": "Bạn bè"
      },
    ]
  };

  static const Map<String, dynamic> POST_AND_STORY_STORY = {
    "key": "story",
    "title": "Tin",
    "data": [
      {
        "content":
            "Kiểm soát ai có thể xem tin. Tin hiển thị trên Facebook và Messenger trong 24 giờ",
        "status": "Chỉ mình tôi"
      },
    ]
  };

  static const Map<String, dynamic> POST_AND_STORY_OLD_STORY_LIMITATION = {
    "key": "old_story_limitation",
    "title": "Giới hạn bài viết cũ",
    "data": [
      {
        "content":
            "Thay đổi người xem được bài viết cũ từ Bạn của bạn bè hoặc Công khai thành chỉ Bạn bè. Bất kì ai được gắn thẻ trong những bài viết này và bạn bè đều vẫn xem được bài viết.",
        
      },
    ]
  };
}
