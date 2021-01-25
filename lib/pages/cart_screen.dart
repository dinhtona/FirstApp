import 'package:flutter/material.dart';

class CartScreen extends StatefulWidget {
  final int idTable;

  const CartScreen({Key key, @required this.idTable}) : super(key: key);

  @override
  _CartScreenState createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
          "Phiếu Order bàn ${widget.idTable}",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text(
            'Go back!',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
