import 'package:flutter/material.dart';
import 'package:flutter_azin_shop_app/constants/Constants.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class BannerSlider extends StatelessWidget {
  const BannerSlider({super.key});
  @override
  Widget build(BuildContext context) {
    final PageController controller = PageController(viewportFraction: 0.8);
    return Column(
      children: [
        SizedBox(
          height: 177.0,
          child: PageView.builder(
            controller: controller,
            itemCount: 9,
            itemBuilder: (context, index) {
              return Container(
                margin: const EdgeInsets.only(
                  left: 10.0,
                  right: 10.0,
                ),
                height: 177.0,
                color: azinRed,
                child: const Text('alireza'),
              );
            },
          ),
        ),
        SmoothPageIndicator(
          controller: controller,
          count: 3,
          effect: const ExpandingDotsEffect(
            dotColor: Colors.white,
            activeDotColor: azinBlue,
            dotHeight: 10.0,
            dotWidth: 10.0,
            spacing: 5.0,
          ),
        )
      ],
    );
  }
}
