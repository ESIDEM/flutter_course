import 'package:flutter/material.dart';


class ButtonControl extends StatelessWidget{

  final Function addProduct;

  ButtonControl(this.addProduct);

  @override
  Widget build(BuildContext context) {

    return RaisedButton(
      onPressed: () {
       addProduct("New Tester");
      },
      child: Text("Add Product"),
    );
  }

}