import 'package:flutter/material.dart';
import 'package:lalitha_peetham/widgets/reusable_responsive_type_widget.dart';

class GsRelatedProducts extends StatelessWidget {
  GsRelatedProducts({super.key});

  final List<Product> products = [
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
    Product(
      type: "Gemstones",
      price: 200,
      oldPrice: 300,
      imagePath: 'assets/images/gemstone3.png',
    ),
  ];

  @override
  Widget build(BuildContext context) {
  final isMobile = ResponsiveHelper.isMobile(context);
  final isTablet = ResponsiveHelper.isTablet(context);
  final isDesktop = ResponsiveHelper.isDesktop(context);

  double screenWidth = MediaQuery.of(context).size.width;
  double screenHeight = MediaQuery.of(context).size.height;

  double horizontalPadding = isMobile ? 16 : isTablet ? 40 : 150;
  double titleFontSize = isMobile ? 22 : 32;
  double cardWidth = isMobile
      ? screenWidth * 0.9
      : isTablet
          ? screenWidth / 2.5
          : screenWidth / 4.5;

    return Padding(
      padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: horizontalPadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "RELATED PRODUCTS",
            style: TextStyle(
              fontFamily: "serif",
              fontWeight: FontWeight.bold,
              fontSize: titleFontSize,
            ),
          ),
          const SizedBox(height: 16),
          Wrap(
                spacing: 16,
                runSpacing: 16,
                children: products
                    .map(
                      (product) => SizedBox(
                        width: cardWidth,
                        child: ProductCard(product: product),
                      ),
                    )
                    .toList(),
              ),
        ],
      ),
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
    final screenWidth = MediaQuery.of(context).size.width;

    double imageHeight = 150;
    double imagePadding = 8;
    double textFontSize = 16;
    double priceFontSize = 14;
    double buttonPadding = 12;

    if (screenWidth < 600) {
      imageHeight = 120;
      textFontSize = 14;
      priceFontSize = 12;
      buttonPadding = 10;
    }

    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(2)),
      elevation: 2,
      color: const Color(0xFFE9E9E9),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: imageHeight,
            margin: const EdgeInsets.all(16),
            padding: EdgeInsets.all(imagePadding),
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
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      product.type,
                      style: TextStyle(fontWeight: FontWeight.w600, fontSize: textFontSize),
                    ),
                    const Icon(Icons.favorite_border_outlined, size: 18),
                  ],
                ),
                const SizedBox(height: 4),
                Row(
                  children: [
                    Text(
                      "₹${product.price}",
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: priceFontSize),
                    ),
                    const SizedBox(width: 6),
                    Text(
                      "₹${product.oldPrice}",
                      style: TextStyle(
                        decoration: TextDecoration.lineThrough,
                        color: Colors.grey,
                        fontSize: priceFontSize,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 18),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFFECC04A),
                      foregroundColor: Colors.black,
                      padding: EdgeInsets.symmetric(vertical: buttonPadding),
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
