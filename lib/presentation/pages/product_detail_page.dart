import 'package:flutter/material.dart';
import 'package:grocery_ui/domain/entities/product.dart';

class ProductDetailPage extends StatelessWidget {
  const ProductDetailPage({super.key, required this.product});
  final Product product;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
        builder: (context, constrain) {
          return SafeArea(
            child: CustomScrollView(
              slivers: [
                SliverAppBar(
                  leading: IconButton(
                    icon: const Icon(
                      Icons.arrow_back_ios_new,
                      color: Colors.black,
                    ),
                    onPressed: () => Navigator.pop(context),
                  ),
                  backgroundColor: Colors.white,
                  elevation: 1,
                  flexibleSpace: FlexibleSpaceBar(
                    title: Text(
                      product.title,
                      style: const TextStyle(
                        color: Colors.black,
                      ),
                    ),
                    background: Hero(
                      tag: product.images[0],
                      child: Image.network(product.images[0]),
                    ),
                  ),
                  expandedHeight: 400,
                  pinned: true,
                ),
                SliverToBoxAdapter(
                  child: Container(
                    color: Colors.grey[200],
                    constraints: BoxConstraints(
                      minHeight: constrain.maxHeight - 400,
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 20, top: 20),
                          child: Row(
                            children: [
                              Text(
                                'USD ${product.price}',
                                style: const TextStyle(
                                  color: Colors.green,
                                  fontSize: 30,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                              // Text(
                              //   ' /${product.quantity}',
                              //   style: const TextStyle(
                              //     color: Colors.green,
                              //     fontSize: 20,
                              //     fontWeight: FontWeight.w400,
                              //   ),
                              // ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(20),
                          child: Text(
                            product.description,
                            style: const TextStyle(
                              color: Colors.green,
                              fontSize: 15,
                              fontWeight: FontWeight.w500,
                            ),
                            textAlign: TextAlign.justify,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
      bottomNavigationBar: Container(
        height: 100,
        padding: const EdgeInsets.symmetric(horizontal: 20),
        alignment: Alignment.bottomCenter,
        color: Colors.grey,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.remove_circle_outline,
                      color: Colors.white,
                      size: 30,
                    ),
                  ),
                  const Text(
                    '0',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.add_circle_outline,
                      color: Colors.white,
                      size: 30,
                    ),
                  ),
                ],
              ),
            ),
            Center(
              child: Container(
                width: 190,
                height: 60,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(25)),
                  color: Colors.green,
                ),
                child: const Center(
                  child: Text(
                    'Add to card',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
