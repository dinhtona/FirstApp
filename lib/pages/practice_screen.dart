import 'package:flutter/material.dart';

class Practice extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      heightFactor: 500,
      child: CustomScrollView(
        slivers: [
          SliverAppBar(
              backgroundColor: Colors.grey,
              expandedHeight: 150.0,
              flexibleSpace: const FlexibleSpaceBar(
                title: Text('Cậu vàng trên cỏ xanh'),
                background: Positioned.fill(
                  // top: 0,
                  child: Image(
                    image: AssetImage('assets/images/drawer_bg.png'),
                    fit: BoxFit.fitWidth,
                    alignment: Alignment.topCenter,
                  ),
                ),
              ),
              actions: <Widget>[
                IconButton(
                  icon: const Icon(Icons.add_circle),
                  tooltip: 'Add new entry',
                  onPressed: () {/* ... */},
                ),
              ])
        ],
      ),
    );
  }
}
