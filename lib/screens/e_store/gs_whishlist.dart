import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:lalitha_peetham/screens/e_store/gs_contact_widget.dart';
import 'package:lalitha_peetham/screens/e_store/gs_related_products.dart';
import 'package:lalitha_peetham/screens/online_vastu_property/vastupooja_layout.dart';
import 'package:lalitha_peetham/widgets/reusable_responsive_type_widget.dart';

class GsWhishlist extends StatefulWidget {
  const GsWhishlist({super.key});

  @override
  State<GsWhishlist> createState() => _GsWhishlistState();
}

class _GsWhishlistState extends State<GsWhishlist> {
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
    return VastupoojaLayout(
      child: SingleChildScrollView(
        child: Column(
          children: [
            buildHeroSection(),
            buildWishlistcard(context), 
            SizedBox(height: 20,),
            GsContactWidget(),
            SizedBox(height: 80,),
            GsRelatedProducts(),
            SizedBox(height: 80,),

          ],
        ),
      ),
    );
  }
    Widget buildHeroSection() {
    return Stack(
      alignment: Alignment.center,
      children: [
        Image.asset(
          'assets/images/vastupooja1.png',
          width: double.infinity,
          height: 600,
          fit: BoxFit.cover,
        ),
        Positioned(
          top: 40,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Icon(Icons.menu, color: Colors.white),
              SizedBox(width: 6),
              Text(
                "Menu",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
        Positioned(
          top: 120,
          child: Column(
            children:  [
              Text(
                "Wishlist of Grace & Devotion",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: ResponsiveFontsize.fontSize(context,
                   mobile:20, tablet: 30, desktop: 45),
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
        Positioned(
          bottom: 20,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(0),
            child: Image.asset(
              'assets/images/gemstone7.png',
              height: 180,
              width: 280,
              fit: BoxFit.cover,
            ),
          ),
        )
      ],
    );
  }
  
 Widget buildWishlistcard(BuildContext context) {
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

  return SizedBox(
    height: screenHeight,
    width: screenWidth,
    child: Stack(
      children: [
        // ✅ Full-screen background
        Positioned(
  top: 0,
  left: 0,
  right: 0,
  child: SizedBox(
    height: MediaQuery.of(context).size.height * 0.8, // 40% of screen height
    child: Image.asset(
      'assets/images/vastupooja4.png',
      fit: BoxFit.cover,
    ),
  ),
),

        // 🌑 Top-right planet image
        Positioned(
          top: 40,
          right: 40,
          child: Image.asset(
            'assets/images/vastupooja11.png',
            width: 60,
            height: 60,
          ),
        ),

        // 📦 Main Content
        SingleChildScrollView(
          padding: EdgeInsets.symmetric(
            vertical: 20.0,
            horizontal: horizontalPadding,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 50,),
              Text(
                "WISHLIST",
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
                    onPressed: () {
                       context.go('/gemstone_product_page');
                    },
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
