import 'package:flutter/material.dart';

class DefaultScrollPaginationCallback extends StatelessWidget {
  final Widget child;
  final void Function() onLoadMore;
  final double notifyExtent;
  final bool callbackCondition;
  const DefaultScrollPaginationCallback(
      {super.key,
      required this.child,
      required this.onLoadMore,
      this.notifyExtent = 0.8,
      required this.callbackCondition});

  @override
  Widget build(BuildContext context) {
    return NotificationListener<ScrollNotification>(
      onNotification: (ScrollNotification notification) {
        if (notification is ScrollEndNotification) {
          print('${notification.metrics.pixels}, ===================');
          print(
              '${notification.metrics.maxScrollExtent * notifyExtent}, NOTIFYyyyyyyyyyy');
          print('$callbackCondition, CALLBACKKKKCONDITIONNNNN====');
          if (notification.metrics.pixels >
              (notification.metrics.maxScrollExtent * notifyExtent)) {
            print('CONDITION 1 SATISFIEDDDD');
            if (callbackCondition) {
              print('CONDITION 2 SATISFIEDDDDD');
              onLoadMore();
            }
          }
        }
        return true;
      },
      child: child,
    );
  }
}
