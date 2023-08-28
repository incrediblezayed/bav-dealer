import 'package:dealerapp/src/app/model/notification_model.dart';
import 'package:dealerapp/src/utils/global_exports.dart';
import 'package:dealerapp/src/widgets/notification_card.dart';
import 'package:iconsax/iconsax.dart';

class NotificationPage extends StatefulWidget {
  const NotificationPage({super.key});

  @override
  State<NotificationPage> createState() => _NotificationPageState();
}

class _NotificationPageState extends State<NotificationPage> {
  List<NotificationModel> notificationList = [
    NotificationModel(
      title: 'your test order has been successfully delivered',
      dateTime: DateTime.now(),
      subtitle:
          'orem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,',
      notificationType: NotificationType.orderNotification,
    ),
    NotificationModel(
      title: 'Your password has been successfully changed',
      dateTime: DateTime.now(),
      subtitle:
          'orem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,',
      notificationType: NotificationType.passwordNotification,
    ),
    NotificationModel(
      title: 'Your profile has been successfully updated',
      dateTime: DateTime.now(),
      subtitle:
          'orem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,',
      notificationType: NotificationType.profileNotification,
    ),
    NotificationModel(
      title: 'Your security settings has been successfully updated',
      dateTime: DateTime.now(),
      subtitle:
          'orem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,',
      notificationType: NotificationType.securityNotification,
    ),
  ];
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).textTheme;
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: AppTheme.scaffoldBgColor,
        leading: GestureDetector(
          onTap: () {
            AppRoutes.pop();
          },
          child: const Icon(
            Iconsax.arrow_left,
            color: AppTheme.textColor,
          ),
        ),
        title: Text(
          'Notification',
          style: theme.headlineLarge,
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(vertical: 20.h, horizontal: 20.w),
        child: ListView(
          physics: const BouncingScrollPhysics(),
          children: notificationList
              .map(
                (e) => Padding(
                  padding: const EdgeInsets.only(bottom: 10),
                  child: NotificationCard(
                    notificationModel: e,
                  ),
                ),
              )
              .toList(),
        ),
      ),
    );
  }
}
