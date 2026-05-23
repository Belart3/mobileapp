import 'package:flutter/material.dart';

class ActionsCard extends StatelessWidget {
  const ActionsCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(
          color: Color(0xFFE6E6E6),
          width: 1,
        )
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            spacing: 4,
            children: [
              Container(
                height: 56,
                width: 56,
                decoration: BoxDecoration(
                  color: Color(0xFF6366F1),
                  shape: BoxShape.circle,
                ),
                child: Icon(
                  Icons.add,
                  color: Colors.white,
                  size: 24,
                ),
              ),
              Text(
                'Add Funds',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                ),
              )
            ]
          ),
          Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            spacing: 4,
            children: [
              Container(
                height: 56,
                width: 56,
                decoration: BoxDecoration(
                  color: Color.fromRGBO(99, 102, 241, 0.08),
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: Color.fromRGBO(99, 102, 241, 0.10),
                    width: 1,
                  )
                ),
                child: Image(
                  image: AssetImage('assets/icons/withdraw.png'),
                  color: Color(0xFF6366F1),
                  width: 24,
                  height: 24,
                ),
              ),
              Text(
                'Withdraw',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                ),
              )
            ]
          ),
          Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            spacing: 4,
            children: [
              Container(
                height: 56,
                width: 56,
                decoration: BoxDecoration(
                  color: Color.fromRGBO(99, 102, 241, 0.08),
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: Color.fromRGBO(99, 102, 241, 0.10),
                    width: 1,
                  )
                ),
                child: Image(
                  image: AssetImage('assets/icons/accounts.png'),
                  color: Color(0xFF6366F1),
                  width: 24,
                  height: 24,
                ),
              ),
              Text(
                'Accounts',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                ),
              )
            ]
          )
        ]
      ),
    );
  }
}