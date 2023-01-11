import 'package:flutter/material.dart';

class CartilhaPage extends StatefulWidget {
  final String title;
  const CartilhaPage({Key? key, this.title = 'CartilhaPage'}) : super(key: key);
  @override
  CartilhaPageState createState() => CartilhaPageState();
}
class CartilhaPageState extends State<CartilhaPage> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(
        children: <Widget>[],
      ),
    );
  }
}