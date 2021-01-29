import 'package:FirstApp/order/bloc/cart_bloc.dart';
import 'package:FirstApp/order/coffee_item_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'bloc/catalog_bloc.dart';

class CoffeeGridHeader extends StatefulWidget {
  final int tableID;

  CoffeeGridHeader({key, @required this.tableID});
  @override
  _CoffeeGridHeaderState createState() => _CoffeeGridHeaderState();
}

class _CoffeeGridHeaderState extends State<CoffeeGridHeader> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.tableID.toString()),
      ),
      body: coffeeGridHeader(),
    );
  }

  Widget coffeeGridHeader() {
    return BlocBuilder<CatalogBloc, CatalogState>(
      builder: (context, state) {
        if (state is CatalogLoading) {
          return const CircularProgressIndicator();
        }
        if (state is CatalogLoaded) {
          return GridView.builder(
            scrollDirection: Axis.vertical,
            padding: const EdgeInsets.all(8),
            itemCount: state.catalog.items.length,
            itemBuilder: (BuildContext context, int index) {
              print(' Item: ' + state.catalog.items[index].name);
              return CoffeeItemCard(
                  idTable: widget.tableID,
                  itemOrder: state.catalog.items[index]);
              // Container(
              //   height: 50,
              //   // color: Colors.amber[colorCodes[index]],
              //   child: CoffeeItemCard(
              //       idTable: widget.tableID,
              //       itemOrder: state.catalog.items[index]),
              //   // child: Center(
              //   //     child: Text('Entry ${state.catalog.items[index].name}')),
              // );
            },
            gridDelegate:
                SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
            // crossAxisCount: (orientation == Orientation.portrait) ? 2 : 3),
          );
        }
        return const Text('Something went wrong!');
      },
    );
  }
}
