import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
// import 'package:provider/provider.dart';

import 'coffee_item.dart';
import 'order_provider_model.dart';

class CoffeeItemCard extends StatefulWidget {
  final CoffeeItem coffeeItem;
  final int idTable;

  const CoffeeItemCard(
      {Key key, @required this.idTable, @required this.coffeeItem})
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
    CoffeeItem item = widget.coffeeItem;
    // var provider = Provider.of<OrderModel>(context);
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
                item.count > 0
                    ? Positioned(
                        top: -5,
                        right: -5,
                        child: Container(
                          padding:
                              EdgeInsets.symmetric(horizontal: 6, vertical: 2),
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
                          child: Text(
                            '${item.count}',
                            style: TextStyle(color: Colors.white),
                          ),
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
                  child: Center(
                    child: Text(
                      item.size,
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                Expanded(
                  flex: 8,
                  child: Text(
                    item.unitPrice.toString(),
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
                            if (item.count > 0 &&
                                item.id == widget.coffeeItem.id)
                              widget.coffeeItem.count -=
                                  widget.coffeeItem.numAdd;
                          });
                          // provider.updateItem(
                          //     widget.idTable, widget.coffeeItem);
                        },
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: new TextFormField(
                      initialValue: item.numAdd.toString(),
                      style: TextStyle(fontSize: 14),
                      onChanged: (value) {
                        // print('Value: ${value}');
                        setState(() {
                          if (item.id == widget.coffeeItem.id)
                            widget.coffeeItem.numAdd =
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
                          // print("=====================\nKey: ${widget.key}");
                          // print("Item.id: ${item.id}");
                          // print("Widget.item.id: ${widget.coffeeItem.id}");
                          setState(() {
                            if (Key(item.id.toString()) == widget.key)
                              widget.coffeeItem.count +=
                                  widget.coffeeItem.numAdd;
                          });

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
  }
}
