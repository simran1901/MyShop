import 'package:flutter/material.dart';

import '../models/product.dart';
import '../widgets/product_item.dart';

class ProductOverviewScreen extends StatelessWidget {
  final List<Product> loadedProducts = [
    Product(
      id: 'p1',
      title: 'Red Shirt',
      description: 'A red shirt - it is pretty red!',
      price: 29.99,
      imageUrl:
          'https://cdn.pixabay.com/photo/2016/10/02/22/17/red-t-shirt-1710578_1280.jpg',
    ),
    Product(
      id: 'p2',
      title: 'Blue Dress',
      description: 'A blue dress - it is pretty blue!',
      price: 50.99,
      imageUrl:
          'https://img.promgirl.com/_img/PGPRODUCTS/1727401/1000/peacock-dress-JO-JVN-JVN21899p-b.jpg',
    ),
    Product(
      id: 'p3',
      title: 'Nike Shoes',
      description: 'These are quite - Nike strong',
      price: 20.50,
      imageUrl:
          'https://www.prodirectbasketball.com/productimages/V3_1_Main/210519_Main_Thumb_0575959.jpg',
    ),
    Product(
      id: 'p4',
      title: 'Hair dryer',
      description: 'A hair dryer - dries your hair well.',
      price: 30.90,
      imageUrl:
          'https://www.the-best-hair-dryer-reviews.com/wp-content/uploads/2013/10/remington-hair-dryer-best-hair-dryer-reviews5.jpg',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('MyShop'),
      ),
      body: GridView.builder(
        padding: const EdgeInsets.all(10.0),
        itemCount: loadedProducts.length,
        itemBuilder: (ctx, i) => ProductItem(
          loadedProducts[i].id,
          loadedProducts[i].title,
          loadedProducts[i].imageUrl,
        ),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 3 / 2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
        ),
      ),
    );
  }
}
