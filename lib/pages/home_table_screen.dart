import 'package:FirstApp/models/coffee_item.dart';
import 'package:FirstApp/models/order.dart';
import 'package:FirstApp/ui_view/coffee_grid_header.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomeTable extends StatefulWidget {
  final AnimationController animationController;
  final List<CoffeeItem> lstItem;
  final int tableID;

  const HomeTable(this.tableID,
      {Key key, this.animationController, this.lstItem})
      : super(key: key);
  @override
  _HomeTableState createState() => _HomeTableState();
}

class _HomeTableState extends State<HomeTable> {
  @override
  Widget build(BuildContext context) {
    // final mainWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: CoffeeGridHeader(
        tableID: widget.tableID,
      ),
      floatingActionButton: FloatingActionButton.extended(
        backgroundColor: Colors.pinkAccent,
        label: Consumer<OrderModel>(
          builder: (context, cart, child) {
            // print('cart.listOrderF.length: ${cart}');
            return Text(cart.totalItem(widget.tableID).toString());
          },
        ),
        icon: Icon(Icons.shopping_cart),
        onPressed: () {},
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endTop,
    );
  }
}
