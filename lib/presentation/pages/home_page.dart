import 'package:flutter/material.dart';
import 'package:grocery_ui/domain/entities/product.dart';
import 'package:grocery_ui/presentation/widgets/product_widget.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final products = <Product>[];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(
          Icons.menu,
          color: Colors.black,
        ),
        backgroundColor: Colors.white,
        title: const Center(
          child: Text(
            'My Store',
            style: TextStyle(
              color: Colors.black,
            ),
          ),
        ),
        actions: [
          const Icon(
            Icons.search,
            color: Colors.black,
          ),
          Stack(
            children: [
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.shopping_cart,
                  color: Colors.black,
                ),
              ),
              Positioned(
                top: 0,
                right: 3,
                child: Container(
                  height: 20,
                  width: 20,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.red,
                  ),
                  child: const Center(
                    child: Text(
                      '2',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
        elevation: 1,
      ),
      body: Container(
        margin: const EdgeInsets.all(10),
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            mainAxisSpacing: 10,
            crossAxisSpacing: 10,
            childAspectRatio: 0.7,
            crossAxisCount: 2,
          ),
          itemBuilder: (context, index) =>
              ProductWidget(product: products[index]),
          itemCount: products.length,
        ),
      ),
    );
  }
}
