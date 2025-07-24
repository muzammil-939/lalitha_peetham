import 'package:flutter/material.dart';

class GsRelatedProducts extends StatelessWidget {
   GsRelatedProducts({super.key});

     final List<Product> products = [
    Product(
      type: "Gemstones",
      price: 200,
      oldPrice: 300,
      imagePath: 'assets/images/gemstone3.png', // Replace with actual asset
    ),
    Product(
      type: "Gemstones",
      price: 200,
      oldPrice: 300,
      imagePath: 'assets/images/gemstone3.png',
    ),
    Product(
      type: "Gemstones",
      price: 200,
      oldPrice: 300,
      imagePath: 'assets/images/gemstone3.png',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [

      // Positioned.fill(
      //     child: Align(
      //       alignment: Alignment.topCenter,
      //       child: Opacity(
      //         opacity: 0.8,
      //         child: Image.asset(
      //           'assets/images/Vector (2).png',
      //           width: 500,
      //           height: 500,
      //           fit: BoxFit.contain,
      //           //color: Colors.amber[800],
      //         ),
      //       ),
      //     ),
      //   ),
     
  
    Padding(
          padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 100.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "RELATED PRODUCTS",
                style: TextStyle(
                  fontFamily: "serif",
                  fontWeight: FontWeight.bold,
                  fontSize: 24,
                ),
              ),
              const SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: products
                    .map((product) => Expanded(
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 8.0),
                            child: SizedBox(
                              width: 150,
                              child: ProductCard(product: product)),
                          ),
                        ))
                    .toList(),
              ),
            ],
          ),
        )
          ],
    );
  }

}


class Product {
  final String type;
  final int price;
  final int oldPrice;
  final String imagePath;

  Product({required this.type, required this.price, required this.oldPrice, required this.imagePath});
}

class ProductCard extends StatelessWidget {
  final Product product;
  const ProductCard({required this.product, super.key});

 @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(2)),
      elevation: 2,
      color: Color(0xFFE9E9E9),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Image Container with Yellow BG
          Container(
            height: 150,
            margin: EdgeInsets.all(16),
            padding: const EdgeInsets.all(8),
            color: const Color(0xFFE4C74D),
            child: Center(
              child: Image.asset(product.imagePath, height: 80, width: 90),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Product Name + Heart
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      product.type,
                      style: const TextStyle(fontWeight: FontWeight.w600, fontSize: 16),
                    ),
                    const Icon(Icons.favorite_border_outlined, size: 18),
                  ],
                ),
                const SizedBox(height: 4),
                // Price and Old Price
                Row(
                  children: [
                    Text(
                      "₹${product.price}",
                      style: const TextStyle(fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(width: 6),
                    Text(
                      "₹${product.oldPrice}",
                      style: const TextStyle(
                        decoration: TextDecoration.lineThrough,
                        color: Colors.grey,
                        fontSize: 13,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 18),
                // Buy Button
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFFECC04A),
                      foregroundColor: Colors.black,
                      padding: const EdgeInsets.symmetric(vertical: 12),
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
                    ),
                    onPressed: () {},
                    child: const Text('Buy', style: TextStyle(color: Colors.black)),
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