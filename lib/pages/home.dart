import 'package:flutter/material.dart';
import 'package:mobileapp/widgets/bottom_nav.dart';
import 'package:mobileapp/widgets/custom_app_bar.dart';
import 'package:mobileapp/widgets/balance_card.dart';
import 'package:mobileapp/widgets/actions_card.dart';
import 'package:mobileapp/widgets/complete_profile.dart';
import 'package:mobileapp/widgets/carousel.dart';
import 'package:mobileapp/widgets/recent_transactions.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  static const Color backgroundColor = Color(0xFFF4F4F4);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: CustomAppBar(),
      extendBody: true,
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Column(
              spacing: 20,
              children: [
                BalanceCard(),
                ActionsCard(),
                CompleteProfile(),
                Carousel(),
                RecentTransactions()
              ],
            ),
          ],
        )
      ),
      bottomNavigationBar: BottomNavBar(),
    );
  }
}
