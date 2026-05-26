import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class Carousel extends StatefulWidget {
  const Carousel({super.key});

  @override
  State<Carousel> createState() => _CarouselState();
}

class _CarouselState extends State<Carousel> {
  final CarouselSliderController buttonCarouselController = CarouselSliderController();
  int currentIndex = 0;

  final slideData = [
    {
      'title': 'Enjoy fast on-chain \nwithdrawals',
      'buttonText': 'Make Withdrawal Now',
      'imagePath': 'assets/images/feature-1.png',
      'color': '0xFF7C3AED',
    },
    {
      'title': 'Get paid globally with our \nvirtual bank accounts',
      'buttonText': 'create virtual account',
      'imagePath': 'assets/images/feature-2.png',
      'color': '0xFF10B981',
    },
    {
      'title': 'Get paid globally with our \nvirtual bank accounts',
      'buttonText': 'create virtual account',
      'imagePath': 'assets/images/feature-2.png',
      'color': '0xFF10B981',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CarouselSlider (
          carouselController: buttonCarouselController,
          options: CarouselOptions(
            onPageChanged: (index, reason) {
              setState(() {
                currentIndex = index;
              });
            },
            height: 120,
            autoPlay: true,
            autoPlayInterval: Duration(seconds: 3),
            viewportFraction: 0.8,
            disableCenter: true,
          ),
          items: slideData.map((i) => Builder(
            builder: (BuildContext context) {
              return Container(
                width: MediaQuery.of(context).size.width,
                clipBehavior: Clip.hardEdge,
                margin: EdgeInsets.fromLTRB(20, 0, 0, 0),
                decoration: BoxDecoration(
                  image: DecorationImage( 
                    opacity: 0.5,
                    image: AssetImage('assets/images/ripple-pattern.png'),
                    fit: BoxFit.cover,
                    repeat: ImageRepeat.noRepeat,
                    colorFilter: ColorFilter.mode(
                    Color(int.parse(i['color']!)), 
                      BlendMode.multiply,
                    ),
                  ),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Positioned(
                      right: 0,
                      bottom: -35,
                      child: Image.asset(
                        i['imagePath']!,
                        width: 180,
                        height: 180,
                        fit: BoxFit.contain,
                      ),
                    ),
                    Positioned(  
                      left: 12,
                      top: 12,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        spacing: 8,
                        children: [
                          Text(
                            i['title']!,
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
                              i['buttonText']!,
                              style: TextStyle(
                                color: Color(0xFF7C3AED),
                                fontSize: 12,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        ]
                      ),
                    ),
                  ]
                ),
              );
            },
          )).toList(),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          spacing: 8,
          children: List.generate(slideData.length, (index) => GestureDetector(
            onTap: () {
              buttonCarouselController.animateToPage(index);
            },
            child: AnimatedContainer(
              margin: EdgeInsets.symmetric(vertical: 6),
              width: currentIndex == index ? 52 : 17,
              height: 6,
              decoration: BoxDecoration(
                color: currentIndex == index ? Color(0xFF7C3AED) : Color(0xFFCCCCCC),
                borderRadius: BorderRadius.circular(20),
              ),
              duration: Duration(milliseconds: 300),
            ),
          )),
        )
      ]
    );
  }
}

