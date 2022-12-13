import 'package:flutter/material.dart';

import '../screen/food_details_screen.dart';

class FoodItem extends StatelessWidget {
  final String id;
  final String title;

  final String imgUrl;

  FoodItem(this.id, this.title, this.imgUrl);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(15),
      child: GridTile(
        child: GestureDetector(
          onTap: () {
            Navigator.of(context).pushNamed(
              FooDetailScreen.routeName,
              arguments: id,
            );
          },
          child: Image.asset(
            imgUrl,
            fit: BoxFit.fitHeight,
          ),
        ),
        footer: GridTileBar(
          backgroundColor: Colors.black26,
          leading: IconButton(
            icon: Icon(Icons.favorite),
            color: Theme.of(context).colorScheme.secondary,
            onPressed: () {},
          ),
          title: Text(
            title,
            textAlign: TextAlign.center,
          ),
          trailing: IconButton(
            icon: Icon(Icons.shopping_cart),
            color: Theme.of(context).colorScheme.secondary,
            onPressed: () {},
          ),
        ),
      ),
    );
  }
}
