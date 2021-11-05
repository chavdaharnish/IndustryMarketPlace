import 'package:flutter/material.dart';
import 'package:flutter_course/app/home/Models/product.dart';
import 'package:flutter_course/app/dashboard/constants.dart';

class Description extends StatelessWidget {
  final Product product;
  const Description({Key key, this.product}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: kDefaultPaddin),
      child: Text(
        product.specification,
        style: TextStyle(height: 1.5),
      ),
    );
  }
}
