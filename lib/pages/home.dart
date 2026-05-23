import 'package:flutter/material.dart';
import 'package:mobileapp/widgets/custom_app_bar.dart';
import 'package:mobileapp/widgets/balance_card.dart';
import 'package:mobileapp/widgets/actions_card.dart';
import 'package:mobileapp/widgets/complete_profile.dart';
import 'package:mobileapp/widgets/features_carousel.dart';

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
          spacing: 20,
          children: [
            BalanceCard(),
            ActionsCard(),
            CompleteProfile(),
            FeaturesCarousel(),
          ]
        ),
      )
    );
  }
}
