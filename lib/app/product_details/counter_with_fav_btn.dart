import 'package:flutter/material.dart';
import 'package:flutter_course/app/product_details/cart_counter.dart';
import 'package:flutter_svg/svg.dart';
class CounterWithFavBtn  extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        CartCounter(),
        Container(
          padding: EdgeInsets.all(8),
          height: 32,
          width: 32,
          decoration: BoxDecoration(
            color: Color(0xFFFF6464),
            shape: BoxShape.circle,
          ),
          child: SvgPicture.asset("assets/heart.svg"),
        )
      ],
    );
  }
}
