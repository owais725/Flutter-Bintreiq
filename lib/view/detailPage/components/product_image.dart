import 'package:flutter/material.dart';
import '../../../models/products_model.dart';
import '../../../util/constant.dart';
import '../../../util/size_config.dart';

class ProductImage extends StatefulWidget {
  const ProductImage({
    Key? key,
    required this.product,
  }) : super(key: key);

  final Product product;

  @override
  State<ProductImage> createState() => _ProductImageState();
}

class _ProductImageState extends State<ProductImage> {
  int selectionImage = 0;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
            width: getScreenWidth(238),
            child: AspectRatio(
              aspectRatio: 0.9,
              child: Image.asset(widget.product.images[selectionImage]),
            )),
        Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          ...List.generate(widget.product.images.length,
              (index) => productImagePreview(index))
        ])
      ],
    );
  }

  GestureDetector productImagePreview(int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selectionImage = index;
        });
      },
      child: Container(
        margin: EdgeInsets.only(right: getScreenWidth(15)),
        padding: EdgeInsets.all(getScreenWidth(8)),
        height: getScreenWidth(48),
        width: getScreenWidth(48),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            border: Border.all(
                color: selectionImage == index
                    ? kPrimaryColor
                    : Colors.transparent)),
        child: Image.asset(widget.product.images[index]),
      ),
    );
  }
}
