import 'package:bintreiq/view/detailPage/components/body.dart';
import 'package:flutter/material.dart';
import '../../componets/custom_appbar.dart';
import '../../models/products_model.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ProductDetailArguments agrs =
        ModalRoute.of(context)!.settings.arguments as ProductDetailArguments;
    return Scaffold(
      backgroundColor: Colors.white60,
      //const Color(0xFFF0F0F5),
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          children: [
            const CustomAppBar(),
            DetailScreenBody(product: agrs.product)
          ],
        ),
      )),
    );

    //  body: DetailScreenBody()
  }
}

class ProductDetailArguments {
  final Product product;

  ProductDetailArguments({required this.product});
}
