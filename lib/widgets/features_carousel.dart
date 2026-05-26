import 'package:flutter/material.dart';

class FeaturesCarousel extends StatelessWidget {
  const FeaturesCarousel({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 140,
      color: Colors.transparent,
      margin: EdgeInsets.fromLTRB(20, 0, 0, 0),
      child: CarouselView(
        itemExtent: 300,
        shrinkExtent: 300,
        shape: ShapeBorder.lerp(
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          0.5,
        ),
        children: [
          Container(
            padding: EdgeInsets.all(12),
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
              color: Color(0xFF6366F1),
            ),
            child: Stack(
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  spacing: 8,
                  children: [
                    Text(
                      'Enjoy fast on-chain \nwithdrawals',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 12,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    TextButton(
                      onPressed: () {},
                      style: TextButton.styleFrom(
                        backgroundColor: Colors.white,
                        minimumSize: Size.zero,
                        padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(32),
                        ),
                      ),
                      child: Text(
                        'Make Withdrawal Now',
                        style: TextStyle(
                          color: Color(0xFF6366F1),
                          fontSize: 12,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ],
                ),
                Positioned(
                  bottom: -10, // Pulls the image down slightly so it clips cleanly at the card edge
                  right: 0,    // Pins the image to the right edge of the card
                  width: 120,  // Restrict width so it doesn't overlap your text area
                  height: 120, 
                  child: Image.asset(
                    'assets/images/feature-1.png',
                    fit: BoxFit.cover,
                  ),
                )
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.all(12),
            decoration: BoxDecoration(
              image: DecorationImage(
                opacity: 0.8,
                image: AssetImage('assets/images/ripple-pattern.png'),
                fit: BoxFit.cover,
                repeat: ImageRepeat.noRepeat,
                colorFilter: ColorFilter.mode(
                Color(0xFF10B981), 
                  BlendMode.multiply,
                ),
              ),
              color: Color(0xFF10B981),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  spacing: 8,
                  children: [
                    Text(
                      'Get paid globally with our \nvirtual bank accounts',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 12,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    TextButton(
                      onPressed: () {},
                      style: TextButton.styleFrom(
                        backgroundColor: Colors.white,
                        minimumSize: Size.zero,
                        padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(32),
                        ),
                      ),
                      child: Text(
                        'Create Virtual Account',
                        style: TextStyle(
                          color: Color(0xFF10B981),
                          fontSize: 12,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      )
    );
  }
}