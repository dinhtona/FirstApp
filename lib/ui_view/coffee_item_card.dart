import 'package:FirstApp/models/coffee_item.dart';
import 'package:flutter/material.dart';

class CoffeeItemCard extends StatelessWidget {
  final CoffeeItem coffeeItem;

  const CoffeeItemCard({Key key, this.coffeeItem}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
                      coffeeItem.imageURL,
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
                    coffeeItem.name,
                    style: TextStyle(
                        color: Colors.white,
                        // backgroundColor: Colors.black38,
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'tahoma'),
                  ),
                ),
                coffeeItem.count > 0
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
                            '${coffeeItem.count}',
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
                      coffeeItem.size,
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
                    coffeeItem.unitPrice.toString(),
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
                    flex: 1,
                    child: Container(
                      alignment: Alignment.center,
                      child: FloatingActionButton.extended(
                        label: Text(
                          '-',
                          style: TextStyle(
                            color: Colors.red,
                            fontSize: 16,
                          ),
                        ),
                        elevation: 2,
                        tooltip: 'Bớt 1',
                        backgroundColor: Colors.white,
                        onPressed: () {},
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Container(
                      alignment: Alignment.center,
                      child: FloatingActionButton.extended(
                        // child: Icon(
                        //   Icons.add,
                        //   size: 16,
                        //   color: Colors.green,
                        // ),
                        label: Text(
                          '+',
                          style: TextStyle(
                            color: Colors.green,
                            fontSize: 16,
                          ),
                        ),
                        elevation: 2,
                        tooltip: 'Bớt 1',
                        backgroundColor: Colors.white,
                        onPressed: () {},
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
