import 'package:FirstApp/models/coffee_item.dart';
import 'package:FirstApp/models/order.dart';
import 'package:FirstApp/pages/cart_screen.dart';
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
  int total = 0;
  @override
  Widget build(BuildContext context) {
    // final mainWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: CoffeeGridHeader(
        tableID: widget.tableID,
      ),
      floatingActionButton: new FloatingActionButton.extended(
        backgroundColor: Colors.pinkAccent,
        label: Consumer<OrderModel>(
          builder: (context, cart, child) {
            // print('cart.listOrderF.length: ${cart}');
            total = cart.totalItem(widget.tableID);
            return Text(total.toString());
          },
        ),
        heroTag: 'btnCart',
        icon: Icon(Icons.shopping_cart),
        onPressed: () {
          print('total: ${total.toString()}');
          if (total <= 0)
            Scaffold.of(context).showSnackBar(
              SnackBar(
                backgroundColor: Colors.yellow[700],
                content: Text('Bạn chưa thêm món nào !'),
              ),
            );
          else
            Navigator.push(context, MaterialPageRoute(builder: (_) {
              return CartScreen( idTable: widget.tableID);
            }));
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endTop,
    );
  }
}
