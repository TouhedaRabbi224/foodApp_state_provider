import 'package:flutter/material.dart';

import '../widget/food_grid.dart';

class FoodsOverviewScreen  extends StatelessWidget {
  const FoodsOverviewScreen ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Food Order'),
        actions: [
          IconButton(
            icon: Icon(Icons.shopping_cart),
            color: Colors.white,
            onPressed: (){

            },
          ),
        ],

      ),
        body: FoodsGrid(),

    );
  }
}
