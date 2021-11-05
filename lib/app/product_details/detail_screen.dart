import 'package:flutter/material.dart';
import 'package:flutter_course/app/home/Models/product.dart';
import 'package:flutter_course/app/product_details/detail.dart';

class DetailScreen extends StatefulWidget {
  final Product product;

  DetailScreen({Key key, this.product}) : super(key: key);
  @override
  _DetailScreenState createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('Detail Page'),
      ),
      body: Details(product: widget.product, a: true),
    );
  }
}
