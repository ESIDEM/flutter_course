import 'package:flutter/material.dart';

import './products.dart';
import './button_control.dart';

class ProductManager extends StatefulWidget {

  final String initialProduct;

  ProductManager(this.initialProduct);

  @override
  State<StatefulWidget> createState() {
    return _ProductStateManager();
  }
}

class _ProductStateManager extends State<ProductManager> {
  List<String> _product = [];
  @override
  void initState() {
    _product.add(widget.initialProduct);
    super.initState();
  }

  void _addProduct(String product){

    setState(() {
      _product.add(product);
    });
  }
  @override
  Widget build(BuildContext context) {
    return Column( children: [Container(
      margin: EdgeInsets.all(10.0),
      child: ButtonControl(_addProduct)
    ),
    Products(_product)
    ]);
  }
}
