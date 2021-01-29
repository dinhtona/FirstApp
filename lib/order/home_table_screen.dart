import 'package:FirstApp/pages/cart_screen.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'bloc/cart_bloc.dart';
import 'coffee_grid_header.dart';
import 'coffee_item.dart';
import 'order_provider_model.dart';

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
        label: BlocBuilder<CartBloc, CartState>(
          builder: (context, state) {
            if (state is CartLoading) {
              return const CircularProgressIndicator();
            }
            if (state is CartLoaded) {
              return Text('${state.cart.totalItem}',
                  style: const TextStyle(color: Colors.white));
            }
            return const SizedBox();
          },
        ),

        // Consumer<OrderModel>(
        //   builder: (context, cart, child) {
        //     // print('cart.listOrderF.length: ${cart}');
        //     total = cart.totalItem(widget.tableID);
        //     return BlocBuilder<CartBloc, CartState>(builder: (context, state) {
        //       if (state is CartLoading) {
        //         return const CircularProgressIndicator();
        //       }
        //       if (state is CartLoaded) {
        //         return Text('${state.cart.totalItem}',
        //             style: const TextStyle(color: Colors.white));
        //       }
        //       return const Text('');
        //     });
        //   },
        // ),
        heroTag: 'btnCart',
        icon: Icon(Icons.shopping_cart),
        onPressed: () {
          // print('total: ${total.toString()}');
          if (total <= 0)
            Scaffold.of(context).showSnackBar(
              SnackBar(
                backgroundColor: Colors.yellow[700],
                content: Text('Bạn chưa thêm món nào !'),
              ),
            );
          else
            Navigator.push(context, MaterialPageRoute(builder: (_) {
              return CartScreen(idTable: widget.tableID);
            }));
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endTop,
    );
  }
}
