import 'package:flutter/material.dart';

import 'models/notification.dart';

class DynamicListViewDemo extends StatelessWidget {
  DynamicListViewDemo({super.key});

  List<NotificationModel> notificationList = [
    NotificationModel(
        title: 'First Notification',
        description: 'First Description',
        time: '11:45'),
    NotificationModel(
        title: 'Second Notification',
        description: 'Second Description',
        time: '1:45'),
    NotificationModel(
        title: 'Third Notification',
        description: 'Third Description',
        time: '12:45'),
    NotificationModel(
        title: 'Fourth Notification',
        description: 'Fourth Description',
        time: '12:45'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Notifications"),
      ),
      body: ListView.builder(
          itemCount: notificationList.length,
          itemBuilder: (context, i) {
            return Card(
              elevation: 5,
              child: ListTile(
                leading: Icon(Icons.message),
                title: Text(notificationList[i].title),
                subtitle: Text(notificationList[i].description),
                trailing: Text(notificationList[i].time),
              ),
            );
          }),
    );
  }
}
