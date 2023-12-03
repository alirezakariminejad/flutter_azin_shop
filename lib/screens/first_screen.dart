import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_azin_shop_app/constants/Constants.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.transparent,
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: AlignmentDirectional.topStart,
              end: AlignmentDirectional.bottomEnd,
              colors: [Color(0xFF58AEE8), azinBlue],
            ),
          ),
          child: Stack(
            alignment: Alignment.bottomCenter,
            children: [
              Positioned(
                bottom: 0,
                right: 0,
                left: 0,
                child: Container(
                  height: 516.0,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image:
                          AssetImage('assets/images/first_screen_pattern.png'),
                    ),
                  ),
                ),
              ),
              Positioned(
                bottom: 188.0,
                right: 44.0,
                child: SizedBox(
                  width: 230.0,
                  child: Directionality(
                    textDirection: TextDirection.rtl,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'اوج هـیـجـان با خرید محصولات اپل!',
                          style: TextStyle(
                            fontFamily: 'SM',
                            fontSize: 32.0,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(height: 22.0),
                        Container(
                          width: 70.0,
                          height: 70.0,
                          decoration: BoxDecoration(
                            color: Color(0xFF253DEE),
                            borderRadius: BorderRadius.circular(100.0),
                          ),
                          child: Image.asset('assets/images/arrow_right.png'),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              Positioned(
                bottom: 47,
                left: 0,
                right: 0,
                child: Column(
                  children: [
                    Text(
                      'From',
                      style: TextStyle(
                        fontFamily: 'GB',
                        fontSize: 14.0,
                        color: Color(0xFF86A5F8),
                      ),
                    ),
                    Text(
                      'Alireza',
                      style: TextStyle(
                        fontFamily: 'GB',
                        fontSize: 16.0,
                        color: azinWhite,
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
