import 'package:FirstApp/order/bloc/cart_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:provider/provider.dart';

import 'models/item_order.dart';

class CoffeeItemCard extends StatefulWidget {
  final ItemOrder itemOrder;
  final int idTable;

  const CoffeeItemCard(
      {Key key, @required this.idTable, @required this.itemOrder})
      : super(key: key);

  @override
  _CoffeeItemCardState createState() => _CoffeeItemCardState();
}

class _CoffeeItemCardState extends State<CoffeeItemCard> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    ItemOrder item = widget.itemOrder;

    // var provider = Provider.of<OrderModel>(context);
    return BlocBuilder<CartBloc, CartState>(
      builder: (context, state) {
        if (state is CartLoaded) {
          int idx = state.cart.items.indexWhere((o) => o.id == item.id);
          int cout = 0;
          if (idx >= 0)
            cout =
                state.cart.items.where((o) => o.id == item.id).first.quantity;
          return Card(
            margin: EdgeInsets.all(5.0),
            shape: RoundedRectangleBorder(
              // side: BorderSide(color: Colors.white70, width: 1),
              borderRadius: BorderRadius.circular(4),
            ),
            color: Colors.white,
            child: Column(
              children: [
                Expanded(
                  flex: 6,
                  child: Stack(
                    alignment: AlignmentDirectional.bottomStart,
                    children: [
                      SizedBox.expand(
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(5.0),
                          child: Image.network(
                            item.imageURL,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Container(
                        // constraints:
                        //     BoxConstraints(minWidth: 100, maxWidth: 100),
                        decoration: BoxDecoration(
                          color: Colors.black45,
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(8),
                            bottomRight: Radius.circular(8),
                          ),
                        ),
                        padding: EdgeInsets.fromLTRB(2, 1, 4, 1),
                        child: Text(
                          item.name,
                          style: TextStyle(
                              color: Colors.white,
                              // backgroundColor: Colors.black38,
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'tahoma'),
                        ),
                      ),
                      cout > 0
                          ? Positioned(
                              top: -5,
                              right: -5,
                              child: Container(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 6, vertical: 2),
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.redAccent,
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey,
                                      offset: Offset(0.0, 1.0), //(x,y)
                                      blurRadius: 1,
                                    )
                                  ],
                                ),
                                alignment: Alignment.center,
                                child: Text(cout.toString(),
                                    style: TextStyle(color: Colors.white)),
                              ),
                            )
                          : Text(''),
                    ],
                    overflow: Overflow.visible,
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Row(
                    children: [
                      Expanded(
                        flex: 3,
                        child: SizedBox(),
                        // Center(
                        //   child: Text(
                        //     item.price,
                        //     style: TextStyle(
                        //       fontSize: 14,
                        //       fontWeight: FontWeight.bold,
                        //     ),
                        //   ),
                        // ),
                      ),
                      Expanded(
                        flex: 8,
                        child: Text(
                          item.price.toString(),
                          textAlign: TextAlign.end,
                          style: TextStyle(
                            fontSize: 14,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  flex: 3,
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 4),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Expanded(
                          flex: 4,
                          child: Container(
                            alignment: Alignment.center,
                            padding: EdgeInsets.all(5),
                            child: new RaisedButton(
                              // color: Colors.white,
                              // heroTag: null,
                              child: Icon(
                                Icons.remove,
                                size: 20,
                                color: Colors.redAccent,
                              ),
                              // label: Text(
                              //   '-',
                              //   style: TextStyle(
                              //     color: Colors.red,
                              //     fontSize: 16,
                              //   ),
                              // ),
                              elevation: 2,
                              // tooltip: 'Bớt 1',
                              // backgroundColor: Colors.white,
                              onPressed: () {
                                // print(
                                //     'item.id: ${item.id} == widget.coffeeItem.id:${widget.coffeeItem.id}');
                                setState(() {
                                  if (cout > 0) cout--;
                                });
                                // item.quantity = quantity;
                                context.read<CartBloc>().add(CartItemUpdated(
                                    new ItemOrder(item.id, item.name,
                                        item.imageURL, item.price,
                                        quantity: cout)));
                                // provider.updateItem(
                                //     widget.idTable, widget.coffeeItem);
                                // print(
                                //     'Item.quantity: ${state. .quantity} == $quantity');
                              },
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 2,
                          child: new TextFormField(
                            initialValue: widget.itemOrder.numAdd.toString(),
                            style: TextStyle(fontSize: 14),
                            onChanged: (value) {
                              // print('Value: ${value}');
                              setState(() {
                                if (item.id == widget.itemOrder.id)
                                  item.numAdd =
                                      int.parse(value, onError: (value) => 1);
                              });
                            },
                            textAlign: TextAlign.center,
                            // decoration: new InputDecoration(labelText: "1"),
                            keyboardType: TextInputType.number,
                            inputFormatters: <TextInputFormatter>[
                              FilteringTextInputFormatter.digitsOnly
                            ], // Only numbers can be entered
                          ),
                        ),
                        Expanded(
                          flex: 4,
                          child: Container(
                            padding: EdgeInsets.all(5),
                            alignment: Alignment.center,
                            child: RaisedButton(
                              // heroTag: null,
                              child: Icon(
                                Icons.add,
                                size: 20,
                                color: Colors.green,
                              ),
                              // label: Text(
                              //   '+',
                              //   style: TextStyle(
                              //     color: Colors.green,
                              //     fontSize: 16,
                              //   ),
                              // ),
                              elevation: 2,
                              // tooltip: 'Cộng 1',
                              // backgroundColor: Colors.white,
                              onPressed: () {
                                cout++;

                                context.read<CartBloc>().add(CartItemUpdated(
                                    new ItemOrder(item.id, item.name,
                                        item.imageURL, item.price,
                                        quantity: cout)));
                                // provider.updateItem(
                                //     widget.idTable, widget.coffeeItem);
                              },
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          );
        } else
          return Text('Không có món ăn');
      },
    );
  }
}
