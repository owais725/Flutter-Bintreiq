import 'package:bintreiq/componets/custom_default_button.dart';
import 'package:bintreiq/models/cart.dart';
import 'package:bintreiq/util/constant.dart';
import 'package:bintreiq/util/size_config.dart';
import 'package:bintreiq/view/cart/components/body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Padding(
          padding: EdgeInsets.symmetric(vertical: getScreenWidth(20)),
          child: Column(
            children: [
              const Text(
                'Your Cart',
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
              Text('${demoCart.length} Items',
                  style: Theme.of(context).textTheme.caption),
            ],
          ),
        ),
      ),
      body: const CartBody(),
      bottomNavigationBar: const CheckOutCart(),
    );
  }
}

class CheckOutCart extends StatelessWidget {
  const CheckOutCart({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(
            horizontal: getScreenWidth(30), vertical: getScreenWidth(15)),
        height: getScreenWidth(174),
        decoration: BoxDecoration(
            borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(30), topRight: Radius.circular(30)),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                  offset: const Offset(0, -5),
                  blurRadius: 3,
                  spreadRadius: 2,
                  color: Colors.black.withOpacity(0.15))
            ]),
        child: SafeArea(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                children: [
                  Container(
                    padding: const EdgeInsets.all(10),
                    height: getScreenWidth(40),
                    width: getScreenWidth(40),
                    decoration: BoxDecoration(
                        color: const Color(0xFFF5F6F9),
                        borderRadius: BorderRadius.circular(10)),
                    child: SvgPicture.asset("assets/icons/receipt.svg"),
                  ),
                  const Spacer(),
                  const Text('Add Voucher code'),
                  const SizedBox(width: 10),
                  const Icon(
                    Icons.arrow_forward_ios,
                    size: 12,
                    color: kTextColor,
                  )
                ],
              ),
              SizedBox(height: getScreenHeight(20)),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text.rich(TextSpan(text: 'Total:\n', children: [
                    TextSpan(
                        text: "\$337.25",
                        style: TextStyle(fontSize: 16, color: Colors.black))
                  ])),
                  SizedBox(
                    width: getScreenWidth(190),
                    child: CustomButton(
                      text: "Check Out",
                      press: () {},
                    ),
                  )
                ],
              )
            ],
          ),
        ));
  }
}
