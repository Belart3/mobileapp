import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      title: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start ,
        crossAxisAlignment: CrossAxisAlignment.center,
        spacing: 8,
        children: [
          CircleAvatar(
            backgroundImage: AssetImage('assets/images/avatar.png'),
            radius: 20,
          ),
          Text(
            'Hi, Endurance',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w600,
              height: 1.5
            )
          ),
        ],
      ),
      actions: [
        Container(
          padding: EdgeInsets.all(8),
          margin: EdgeInsets.only(right: 20),
          height: 40,
          width: 40,
          decoration: BoxDecoration(
            color: Colors.white,
            shape: BoxShape.circle,
          ),
          child: Image(
            image: AssetImage('assets/icons/notification.png'),
            height: 24,
            width: 24,
          ),
        )
      ],
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}