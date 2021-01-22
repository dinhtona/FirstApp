import 'package:FirstApp/models/coffee_item.dart';
import 'package:flutter/material.dart';

class CoffeeCard extends StatelessWidget {
  final CoffeeItem coffeeItem;
  const CoffeeCard(this.coffeeItem, {Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // print('Image URl: ${coffeeItem.id}');
    // double w = MediaQuery.of(context).size.width;
    // double h = MediaQuery.of(context).size.height;

    return Container(
      // height: h,
      margin: EdgeInsets.all(3),
      padding: EdgeInsets.all(2),
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.grey, offset: Offset(0.0, 1.0), //(x,y)
            blurRadius: 1.5,
          )
        ],
        border: Border.all(color: Colors.grey[200]),
        color: Colors.white,
        shape: BoxShape.rectangle,
        borderRadius: BorderRadius.all(
          Radius.circular(8),
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Stack(
            // fit: StackFit.loose,
            alignment: AlignmentDirectional.bottomStart,
            children: [
              SizedBox(
                // width: 100,
                // height: w * 6 / 10,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(6.0),
                  child: Image.network(
                    coffeeItem.imageURL,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Container(
                constraints: BoxConstraints(minWidth: 100, maxWidth: 100),
                decoration: BoxDecoration(
                  color: Colors.black38,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(8),
                    bottomRight: Radius.circular(8),
                  ),
                ),
                padding: EdgeInsets.fromLTRB(2, 1, 2, 1),
                // height: 16,
                // width: 100,
                child: Text(
                  coffeeItem.name,
                  style: TextStyle(
                      color: Colors.white,
                      // backgroundColor: Colors.black38,
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'tahoma'),
                ),
              ),
              coffeeItem.count > 0
                  ? Positioned(
                      top: -8,
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
          ConstrainedBox(
            constraints: BoxConstraints.expand(width: 100, height: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.end,
              // textDirection: TextDirection.ltr,
              children: [
                Expanded(
                  flex: 3,
                  child: Center(
                    child: Text(
                      coffeeItem.size,
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                Expanded(
                  flex: 8,
                  child: Container(
                    padding: EdgeInsets.only(right: 2),
                    alignment: Alignment.centerRight,
                    child: Text(
                      coffeeItem.unitPrice.toString(),
                      textAlign: TextAlign.end,
                      style: TextStyle(
                        fontSize: 12,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          ConstrainedBox(
            constraints: BoxConstraints.expand(width: 100, height: 18),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  flex: 21,
                  child: Container(
                    alignment: Alignment.centerLeft,
                    child: FloatingActionButton.extended(
                      label: Text(
                        '-',
                        style: TextStyle(
                          color: Colors.red,
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
                  flex: 8,
                  child: Center(
                    child: Text(''
                        // coffeeItem.count > 0 ? coffeeItem.count.toString() : '',
                        // style: TextStyle(
                        //   fontWeight: FontWeight.bold,
                        //   color: Colors.green,
                        ),
                  ),
                ),
                Expanded(
                  flex: 21,
                  child: Container(
                    alignment: Alignment.centerRight,
                    child: FloatingActionButton.extended(
                      label: Text(
                        '+',
                        style: TextStyle(
                          color: Colors.green,
                        ),
                      ),
                      elevation: 2,
                      tooltip: 'Thêm vào Order',
                      backgroundColor: Colors.white,
                      onPressed: () {},
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
