import 'package:flutter/material.dart';

import './products.dart';

class ProductManager extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _ProductStateManager();
  }
}

class _ProductStateManager extends State<ProductManager> {
  List<String> _product = ["Food Tester"];

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column( children: [Container(
      margin: EdgeInsets.all(10.0),
      child: RaisedButton(
        onPressed: () {
          setState(() {
            _product.add("Advanced Food Tester");
          });
        },
        child: Text("Add Product"),
      ),
    ),
    Products(_product)
    ]);
  }
}
