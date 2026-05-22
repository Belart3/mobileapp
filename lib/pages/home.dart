import 'package:flutter/material.dart';
import 'package:mobileapp/widgets/custom_app_bar.dart';
import 'package:mobileapp/widgets/balance_card.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  static const Color backgroundColor = Color(0xFFF4F4F4);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: CustomAppBar(),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            BalanceCard(),
          ]
        ),
      )
    );
  }
}
