import 'package:bintreiq/models/cart.dart';
import 'package:bintreiq/util/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'cart_item_card.dart';

class CartBody extends StatefulWidget {
  const CartBody({Key? key}) : super(key: key);

  @override
  State<CartBody> createState() => _CartBodyState();
}

class _CartBodyState extends State<CartBody> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: getScreenWidth(20)),
      child: ListView.builder(
        itemCount: demoCart.length,
        itemBuilder: (context, index) => Padding(
          padding: EdgeInsets.symmetric(vertical: getScreenWidth(10)),
          child: Dismissible(
            direction: DismissDirection.endToStart,
            key: Key(demoCart[index].product.id.toString()),
            background: Container(
              padding: EdgeInsets.symmetric(horizontal: getScreenWidth(20)),
              decoration: BoxDecoration(
                  color: const Color(0xFFFFE6E6),
                  borderRadius: BorderRadius.circular(15)),
              child: Row(
                children: [
                  const Spacer(),
                  SvgPicture.asset("assets/icons/Trash.svg")
                ],
              ),
            ),
            onDismissed: (direction) {
              setState(() {
                demoCart.removeAt(index);
              });
            },
            child: CartItemCard(
              cart: demoCart[index],
            ),
          ),
        ),
      ),
    );
  }
}
