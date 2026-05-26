import 'package:flutter/material.dart';

class BalanceCard extends StatelessWidget {
  const BalanceCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      margin: EdgeInsets.fromLTRB(20, 0, 20, 0),
      decoration: BoxDecoration(
        image: DecorationImage(
          opacity: 0.8,
          image: AssetImage('assets/images/ripple-pattern.png'),
          fit: BoxFit.cover,
          repeat: ImageRepeat.noRepeat,
          colorFilter: ColorFilter.mode(
          Color(0xFF6366F1), 
            BlendMode.multiply,
          ),
        ),
        borderRadius: BorderRadius.circular(20),
        color: Color(0xFF6366F1),
      ),
      child: Column(
        spacing: 12,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [ 
              //total balance and view icon
              Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                spacing: 4,
                children: [
                  Text(
                    'Total Balance',
                    style: TextStyle(
                      color: Color(0xFFCCCCCC),
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Image(
                    image: AssetImage('assets/icons/view.png'),
                    height: 16,
                    width: 16,
                  ),
                ],
              ),
              Container(
                padding: EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: Color.fromRGBO(255, 255, 255, 0.2),
                  borderRadius: BorderRadius.circular(32),
                ),
                child: Row(
                  spacing: 4,
                  children: [
                    Text(
                      'NGN',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 12,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Image(
                      image: AssetImage('assets/icons/arrow-down.png'),
                      height: 12,
                      width: 12,
                    ),
                  ]
                )
              )
            ],
          ),
          //balance amount and change
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                '\$12,345.67',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 32,
                  fontWeight: FontWeight.w700,
                  letterSpacing: -1,
                ),
              ),
            ]
          )
        ]
      )
    );
  }
}