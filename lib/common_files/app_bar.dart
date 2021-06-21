import 'package:flutter/material.dart';
import '../home_files/notification_screen.dart';

class PrimaryAppBar extends StatelessWidget {
  final appBarTitle;
  final isMutual;
  final opacity;
  final Icon icon;
  PrimaryAppBar({this.opacity, this.appBarTitle, this.isMutual, this.icon});

  @override
  Widget build(BuildContext context) {
    return PreferredSize(
      child: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text(
          appBarTitle,
          style: TextStyle(
              fontSize: 20,
              color: Color(0xFF064D9F),
              fontWeight: FontWeight.normal),
        ),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: isMutual == true
                ? Opacity(opacity: opacity, child: Icon(Icons.close))
                : icon,
            color: Color(0xFF064D9F),
          ),
        ],
      ),
    );
  }
}

class MainAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      centerTitle: true,
      title: RichText(
          text: TextSpan(children: [
        TextSpan(
            text: 'contact\cars',
            style: TextStyle(
              fontSize: 20,
              color: Color(0xFF064D9F),
            )),
        TextSpan(
          text: '.com',
          style: TextStyle(color: Color(0xFFFFBB38)),
        )
      ])),
      leading: IconButton(
        icon: Icon(Icons.notifications_none),
        iconSize: 25,
        color: Colors.black38,
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return NotificationScreen();
          }));
        },
      ),
    );
  }
}
