import 'package:flutter/material.dart';
import 'package:flutter_azin_shop_app/constants/Constants.dart';

class ProductScreen extends StatefulWidget {
  const ProductScreen({super.key});

  @override
  State<ProductScreen> createState() => _ProductScreenState();
}

class _ProductScreenState extends State<ProductScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            children: [
              SizedBox(
                height: 200.0,
                child: PageView.builder(
                  itemCount: 9,
                  itemBuilder: (context, index) {
                    return Container(
                      height: 200.0,
                      color: azinRed,
                      child: const Text('alireza'),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
