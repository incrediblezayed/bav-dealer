// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:dealerapp/src/app/model/notification_model.dart';
import 'package:dealerapp/src/utils/global_exports.dart';

class NotificationCard extends StatelessWidget {
  final NotificationModel notificationModel;

  const NotificationCard({
    required this.notificationModel,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).textTheme;
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
      // height: 100,
      width: double.maxFinite,
      decoration: BoxDecoration(
        color: notificationModel.notificationType.cardColor,
        borderRadius: BorderRadius.circular(16.r),
      ),
      child: Column(
        children: [
          Row(
            children: [
              CircleAvatar(
                backgroundColor: notificationModel.notificationType.iconColor,
                radius: 30,
                child: Image.asset(notificationModel.notificationType.icon),
              ),
              SizedBox(width: 10.w),
              Flexible(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      notificationModel.title,
                      style: theme.headlineMedium!.copyWith(
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(height: 10.h),
                    Text(
                      notificationModel.dateTime.toString(),
                      style: theme.labelMedium,
                    )
                  ],
                ),
              )
            ],
          ),
          SizedBox(height: 10.h),
          Text(
            notificationModel.subtitle,
            style: theme.headlineSmall!
                .copyWith(fontSize: 14.sp, fontWeight: FontWeight.w300),
          )
        ],
      ),
    );
  }
}
