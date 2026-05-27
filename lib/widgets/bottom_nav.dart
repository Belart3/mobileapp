import 'dart:ui';

import 'package:flutter/material.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({super.key});

  @override 
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10), 
        width: double.maxFinite,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(32), 
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 4, sigmaY: 4),
            child: Container(
              padding: const EdgeInsets.all(4),
              decoration: BoxDecoration(
                color: const Color.fromRGBO(255, 255, 255, 0.40),
                borderRadius: BorderRadius.circular(32),
                border: Border.all(
                  width: 1,
                  color: const Color(0xFFE6E6E6),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                mainAxisSize: MainAxisSize.min, 
                children: [
                  Container(
                    width: 77,
                    padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                    decoration: BoxDecoration(
                      color: const Color(0xFF6366F1),
                      borderRadius: BorderRadius.circular(32),
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min, 
                      mainAxisAlignment: MainAxisAlignment.center,
                      spacing: 4,
                      children: [
                        const Image(
                          image: AssetImage('assets/icons/home.png'),
                          height: 24,
                          width: 24,
                        ),
                        Text(
                          'Home',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                            fontWeight: FontWeight.w600, 
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    width: 77,
                    padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                      borderRadius: BorderRadius.circular(32),
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min, 
                      mainAxisAlignment: MainAxisAlignment.center,
                      spacing: 4,
                      children: [
                        const Image(
                          image: AssetImage('assets/icons/credit-card.png'),
                          height: 24,
                          width: 24,
                        ),
                        Text(
                          'Cards',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 12,
                            fontWeight: FontWeight.w600, 
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    width: 77,
                    padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                      borderRadius: BorderRadius.circular(32),
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min, 
                      mainAxisAlignment: MainAxisAlignment.center,
                      spacing: 4,
                      children: [
                        const Image(
                          image: AssetImage('assets/icons/profile.png'),
                          height: 24,
                          width: 24,
                        ),
                        Text(
                          'Profile',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 12,
                            fontWeight: FontWeight.w600, 
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}