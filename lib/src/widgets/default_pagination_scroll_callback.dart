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
          if (notification.metrics.pixels >
              (notification.metrics.maxScrollExtent * notifyExtent)) {
            if (callbackCondition) {
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
