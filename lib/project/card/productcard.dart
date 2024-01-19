import 'package:ecommerce_kit/src/ecommerce_kit.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class EcommerceTest extends StatefulWidget {
  const EcommerceTest({super.key});

  @override
  State<EcommerceTest> createState() => _EcommerceTestState();
}

class _EcommerceTestState extends State<EcommerceTest> {
  int quantity = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Ecommerce Test'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Row(
                children: [
                  EcommerceElement.productCard(),
                  EcommerceElement.productCard(),
                  // EcommerceElement.productCard(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
