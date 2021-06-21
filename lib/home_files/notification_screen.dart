import 'package:flutter/material.dart';
import '../common_files/app_bar.dart';

class NotificationScreen extends StatefulWidget {
  @override
  _NotificationScreenState createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(50),
        child: PrimaryAppBar(
          appBarTitle: 'Notifications',
          isMutual: false,
          icon: Icon(Icons.arrow_forward_ios_rounded),
        ),
      ),
    );
  }
}
