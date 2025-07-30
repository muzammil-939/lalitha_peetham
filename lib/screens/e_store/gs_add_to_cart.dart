import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:lalitha_peetham/screens/e_store/gs_contact_widget.dart';
import 'package:lalitha_peetham/screens/e_store/gs_related_products.dart';
import 'package:lalitha_peetham/screens/online_vastu_property/vastupooja_layout.dart';
import 'package:lalitha_peetham/widgets/reusable_responsive_type_widget.dart';

class GsAddToCart extends StatefulWidget {
  const GsAddToCart({super.key});

  @override
  State<GsAddToCart> createState() => _GsAddToCartState();
}

class _GsAddToCartState extends State<GsAddToCart> {
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
            SizedBox(height: 50,),
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
            children: [
              Text(
                " Complete Your Spiritual Shopping",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: ResponsiveFontsize.fontSize( 
                    context, mobile: 20, tablet: 30, desktop: 40),
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
              'assets/images/gemstone9.png',
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

  final screenWidth = ResponsiveHelper.screenWidth(context);
  final screenHeight = ResponsiveHelper.screenHeight(context);

  return SizedBox(
    width: screenWidth,
    height: screenHeight, // ensure the stack fills screen
    child: Stack(
      children: [
        // 🌄 Full Background Image
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

        // 🌕 Top-right Icon
        Positioned(
          top: isMobile ? 20 : 40,
          right: isMobile ? 20 : 40,
          child: Image.asset(
            'assets/images/vastupooja11.png',
            width: isMobile ? 40 : 60,
            height: isMobile ? 40 : 60,
          ),
        ),

        // 📦 Foreground Content
        SingleChildScrollView( // just in case content overflows on small screens
          child: Padding(
            padding: EdgeInsets.symmetric(
              vertical: isMobile ? 16 : 24,
              horizontal: isMobile ? 16 : (isTablet ? 40 : 200),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: isMobile ? 40 : 60),
                Text(
                  "ADD TO CART",
                  style: TextStyle(
                    fontFamily: "serif",
                    fontWeight: FontWeight.bold,
                    fontSize: isMobile ? 24 : 32,
                  ),
                ),
                const SizedBox(height: 16),

                // 🛒 Responsive Product Cards
                isMobile
                    ? Column(
                        children: products
                            .map((product) => Padding(
                                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                                  child: ProductCard(product: product),
                                ))
                            .toList(),
                      )
                    : Wrap(
                        spacing: 16,
                        runSpacing: 16,
                        children: products
                            .map(
                              (product) => SizedBox(
                                width: isTablet
                                    ? (screenWidth / 2) - 60
                                    : (screenWidth / 4) - 40,
                                child: ProductCard(product: product),
                              ),
                            )
                            .toList(),
                      ),
              ],
            ),
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
                Row(
                  children: [
                    SizedBox(
                      
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          side: BorderSide(
                            color: Color(0xffEDCD54)
                          ),
                          foregroundColor: Colors.black,
                          padding: const EdgeInsets.symmetric(vertical: 12,horizontal: 40),
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
                        ),
                        onPressed: () {
                          context.go('');
                        },
                        child: const Text('Remove', style: TextStyle(color: Colors.black)),
                      ),
                    ),
                    SizedBox(width:15,),
                    SizedBox(
                    
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xFFECC04A),
                          foregroundColor: Colors.black,
                          padding: const EdgeInsets.symmetric(vertical: 12,horizontal: 15),
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
                        ),
                        onPressed: () {
                          context.go('/gemstone_delivery_address');
                        },
                        child: const Text('Buy', style: TextStyle(color: Colors.black)),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}