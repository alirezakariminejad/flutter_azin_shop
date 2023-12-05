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
        body: SafeArea(
          child: BannerSlider(),
        ),
      ),
    );
  }
}
