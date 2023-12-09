import 'package:flutter/material.dart';
import 'package:flutter_azin_shop_app/constants/Constants.dart';
import 'package:flutter_azin_shop_app/widgets/banner_slider.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class ProductScreen extends StatefulWidget {
  const ProductScreen({super.key});

  @override
  State<ProductScreen> createState() => _ProductScreenState();
}

class _ProductScreenState extends State<ProductScreen> {
  final PageController _controller = PageController(viewportFraction: 0.8);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: scaffoldGray,
        body: SafeArea(
          child: Container(
            width: 160.0,
            height: 216.0,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(15.0),
            ),
            child: Stack(
              alignment: AlignmentDirectional.bottomCenter,
              children: [
                Positioned(
                  bottom: 0,
                  child: Container(
                    width: 160.0,
                    height: 53.0,
                    decoration: const BoxDecoration(
                      color: azinBlue,
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(15.0),
                        bottomRight: Radius.circular(15.0),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  ListView CategoryHorizontaltemList() {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      reverse: true,
      itemCount: 16,
      padding: const EdgeInsets.only(right: 44.0),
      itemBuilder: (context, index) {
        return const Padding(
          padding: EdgeInsets.only(left: 20.0),
          child: CategoryHorizontaltem(),
        );
      },
    );
  }
}

class CategoryHorizontaltem extends StatelessWidget {
  const CategoryHorizontaltem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          alignment: AlignmentDirectional.center,
          children: [
            Container(
              height: 56.0,
              width: 56.0,
              decoration: const ShapeDecoration(
                color: azinGreen,
                shadows: [
                  BoxShadow(
                    color: azinGreen,
                    offset: Offset(0.0, 10.0),
                    blurRadius: 15.0,
                    spreadRadius: -5.0,
                  ),
                ],
                shape: ContinuousRectangleBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(40.0),
                  ),
                ),
              ),
            ),
            const Icon(
              Icons.computer_rounded,
              color: Colors.white,
              size: 26.0,
            ),
          ],
        ),
        const SizedBox(height: 10.0),
        const Text(
          'مک بوک',
          style: TextStyle(
            fontFamily: 'SM',
            fontSize: 12.0,
          ),
        ),
      ],
    );
  }
}
