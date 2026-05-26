import 'package:flutter/material.dart';

class CompleteProfile extends StatelessWidget {
  const CompleteProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      margin: EdgeInsets.fromLTRB(20, 0, 20, 0),
      decoration: BoxDecoration(
        color: Color(0xFF6366F1),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        spacing: 12,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                spacing: 8,
                children: [
                  Image(
                    image: AssetImage('assets/icons/alert.png'),
                    height: 24,
                    width: 24,
                  ),
                  Text(
                    'Complete Your Profile',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      letterSpacing: -0.36,
                    ),
                  ),
                ],
              ),
              Container(
                padding: EdgeInsets.all(8),
                width: 40,
                height: 40,
                decoration: BoxDecoration(
                  color: Color.fromRGBO(255, 255, 255, 0.2),
                  shape: BoxShape.circle,
                ),
                child: Icon(
                  Icons.close,
                  color: Colors.white,
                  size: 24,
                ),
              ),
            ]
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Your profile is almost complete. \nTap here to complete it and \nunlock all features.',
                textAlign: TextAlign.start,
                style: TextStyle(
                  color: Color(0xFFE6E6E6),
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  letterSpacing: -0.28,
                ),
              ),
              Stack(
                alignment: Alignment.center,
                children: [
                  CircularProgressIndicator(
                    color: Color(0xFFE6E6E6),
                    strokeWidth: 4,
                    constraints: BoxConstraints(
                      minHeight: 42,
                      minWidth: 42,
                    ),
                    backgroundColor: Color.fromRGBO(255, 255, 255, 0.2),
                    semanticsValue: '80%',
                    semanticsLabel: '80%',
                    strokeAlign: 1,
                    value: 0.8,
                  ),
                  Text(
                    '80%',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                      letterSpacing: -0.28,
                    ),
                  ),
                ]
              ),
            ]
          )
        ]
      ),
    );
  }
}