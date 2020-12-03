import 'package:board_pro/api/notifications/board_notification.dart';

class Utils {
  Map<int, List<BoardNotification>> getMap(List<BoardNotification> list) {
    Map<int, List<BoardNotification>> result =
        Map<int, List<BoardNotification>>();

    for (int i = 0; i < list.length; i++) {
      BoardNotification notification = list[i];

      if (result.isNotEmpty && result.containsKey(notification.created.day)) {
        List<BoardNotification> iterationList =
            result[notification.created.day];
        iterationList.add(notification);
        result[notification.created.day] = iterationList;
      } else {
        List<BoardNotification> iterationList = List<BoardNotification>();
        iterationList.add(notification);
        result[notification.created.day] = iterationList;
      }
    }
    return result;
  }
}
