import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:lalitha_peetham/screens/online_vastu_property/vastupooja_layout.dart';
import 'package:lalitha_peetham/widgets/menu.dart';
import 'package:lalitha_peetham/widgets/reusable_responsive_type_widget.dart';

class GsShopAllProducts extends StatefulWidget {
  const GsShopAllProducts({super.key});

  @override
  State<GsShopAllProducts> createState() => _GsShopAllProductsState();
}

class _GsShopAllProductsState extends State<GsShopAllProducts> {

       void _openMenu(BuildContext context) {
    Navigator.push(
      context,
      PageRouteBuilder(
        pageBuilder: (context, animation, _) => DropdownGridMenu(),
        transitionDuration: const Duration(milliseconds: 300),
        transitionsBuilder:
            (context, animation, _, child) =>
                FadeTransition(opacity: animation, child: child),
        opaque: false,
      ),
    );
  }
  


  @override
  Widget build(BuildContext context) {
    return VastupoojaLayout(
      child: SingleChildScrollView(
        child: Column(
          children: [
            buildherosection(),
            ShopAllProducts(),
            SizedBox(height: 80,),
           
           
          ],
        ),
      ),
    );
  }

   Widget buildherosection() {
      final size = MediaQuery.of(context).size;
    final isMediumScreen = size.width > 800;
    final isSmallScreen = size.width < 600;
    final isVerySmallScreen = size.width < 400;
    

    double getMenuIconSize() {
      if (isVerySmallScreen) return 24;
      if (isSmallScreen) return 26;
      if (isMediumScreen) return 28;
      return 30;
    }

    double getMenuFontSize() {
      if (isVerySmallScreen) return 18;
      if (isSmallScreen) return 20;
      if (isMediumScreen) return 22;
      return 24;
    }

    double getMenuLetterSpacing() {
      if (isVerySmallScreen) return 1;
      if (isSmallScreen) return 1.5;
      return 2;
    }

        double getMenuWidth() {
      if (isVerySmallScreen) return 200;
      if (isSmallScreen) return 250;
      return 300;
    }
    return Stack(
      alignment: Alignment.center,
      children: [
        Image.asset(
          'assets/images/vastupooja1.png',
          width: double.infinity,
          height: 600,
          fit: BoxFit.cover,
        ),
       // Menu button positioned at top
          Positioned(
            top: 40,
            left: 0,
            right: 0,
            child: Center(
              child: GestureDetector(
                onTap: () => _openMenu(context),
                child: SizedBox(
                  width: getMenuWidth(),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.menu,
                        color: Colors.white,
                        size: getMenuIconSize(),
                      ),
                      SizedBox(width: isVerySmallScreen ? 6 : 8),
                      Text(
                        'MENU',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: getMenuFontSize(),
                          fontWeight: FontWeight.w600,
                          letterSpacing: getMenuLetterSpacing(),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        Positioned(
          top: 120,
          child: Column(
            children:  [
              Text(
                "Explore Yantras, Gems & Pooja Kits",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: ResponsiveFontsize.fontSize(
                    context,
                    mobile: 20, tablet: 30, desktop: 45
                    ),
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
              'assets/images/vastupooja16.png',
              height: 180,
              width: 280,
              fit: BoxFit.cover,
            ),
          ),
        )
      ],
    );
  }
}

class ShopAllProducts extends StatefulWidget {
  const ShopAllProducts({super.key});

  @override
  State<ShopAllProducts> createState() => _ShopAllProductsState();
}

class _ShopAllProductsState extends State<ShopAllProducts> {
  String selectedCategory = 'Shop All Products';

  final List<String> categories = [
    'Shop All Products',
    'Yantras',
    'Gemstones',
    'Pooja Kits',
    'Remedial Items',
    'Vastu Products',
    'Spiritual Accessories',
    'Rudraksha & Malas',
    'Deity Idols & Frames'
  ];

  final Map<String, List<Product>> categoryProducts = {
    'Shop All Products': [
      Product(type: 'Yantras', price: 200, oldPrice: 300, imagePath: 'assets/images/gemstone1.png'),
      Product(type: 'Gemstones', price: 200, oldPrice: 300, imagePath: 'assets/images/gemstone2.png'),
      Product(type: 'Gemstones', price: 200, oldPrice: 300, imagePath: 'assets/images/gemstone3.png'),
      Product(type: 'Yantras', price: 200, oldPrice: 300, imagePath: 'assets/images/gemstone4.png'),
      Product(type: 'Gemstones', price: 200, oldPrice: 300, imagePath: 'assets/images/gemstone5.png'),
      Product(type: 'Remedial Items', price: 200, oldPrice: 300, imagePath: 'assets/images/gemstone6.png'),
      Product(type: 'Yantras', price: 200, oldPrice: 300, imagePath: 'assets/images/gemstone1.png'),
    ],
    'Yantras': List.generate(7, (_) => Product(
      type: 'Yantras',
      price: 200,
      oldPrice: 300,
      imagePath: 'assets/images/gemstone1.png',
    )),
    'Gemstones': List.generate(7, (_) => Product(
      type: 'Gemstones',
      price: 200,
      oldPrice: 300,
      imagePath: 'assets/images/gemstone2.png',
    )),
    'Pooja Kits': List.generate(7, (_) => Product(
      type: 'Pooja Kits',
      price: 200,
      oldPrice: 300,
      imagePath: 'assets/images/gemstone3.png',
    )),
    'Remedial Items': List.generate(7, (_) => Product(
      type: 'Remedial Items',
      price: 200,
      oldPrice: 300,
      imagePath: 'assets/images/gemstone4.png',
    )),
    'Vastu Products': List.generate(7, (_) => Product(
      type: 'Vastu Products',
      price: 200,
      oldPrice: 300,
      imagePath: 'assets/images/gemstone5.png',
    )),
    'Spiritual Accessories': List.generate(7, (_) => Product(
      type: 'Spiritual Accessories',
      price: 200,
      oldPrice: 300,
      imagePath: 'assets/images/gemstone6.png',
    )),
    'Rudraksha & Malas': List.generate(7, (_) => Product(
      type: 'Rudraksha & Malas',
      price: 200,
      oldPrice: 300,
      imagePath: 'assets/images/gemstone1.png',
    )),
    'Deity Idols & Frames': List.generate(7, (_) => Product(
      type: 'Deity Idols & Frames',
      price: 200,
      oldPrice: 300,
      imagePath: 'assets/images/gemstone2.png',
    )),
  };
@override
Widget build(BuildContext context) {
  final selectedProducts = categoryProducts[selectedCategory] ?? [];

  final isMobile = ResponsiveHelper.isMobile(context);
  final isTablet = ResponsiveHelper.isTablet(context);
  final isDesktop = ResponsiveHelper.isDesktop(context);

  final screenWidth = MediaQuery.of(context).size.width;
  final horizontalPadding = isMobile ? 16.0 : isTablet ? 32.0 : 100.0;

  // Final card width for all product cards
  final cardWidth = isMobile
      ? screenWidth * 0.85
      : isTablet
          ? (screenWidth - 2 * horizontalPadding - 16) / 2
          : 230.0;

  final top4Products = selectedProducts.take(4).toList();
  final bottom3Products = selectedProducts.skip(4).take(3).toList();

  return Stack(
    children: [
      // Background
      Positioned(
        top: 0,
        left: 0,
        child: SizedBox(
          width: screenWidth,
          child: Image.asset(
            'assets/images/vastupooja4.png',
            fit: BoxFit.cover,
          ),
        ),
      ),
      Positioned(
        top: 40,
        right: 40,
        child: Image.asset(
          'assets/images/vastupooja11.png',
          width: 60,
          height: 60,
        ),
      ),
      Positioned.fill(
        child: Align(
          alignment: Alignment.bottomCenter,
          child: Opacity(
            opacity: 0.8,
            child: Image.asset(
              'assets/images/Vector (2).png',
              width: 500,
              height: 500,
              fit: BoxFit.contain,
            ),
          ),
        ),
      ),

      Padding(
        padding: EdgeInsets.symmetric(horizontal: horizontalPadding, vertical: 100),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Mobile Sidebar
            if (isMobile)
              Container(
                width: double.infinity,
                margin: const EdgeInsets.only(bottom: 20),
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  border: Border.all(color: Color(0xFFEAC63E)),
                  borderRadius: BorderRadius.circular(8),
                  color: Colors.white,
                ),
                child: Column(
                  children: categories.map((c) {
                    final isSelected = selectedCategory == c;
                    return Container(
                      margin: const EdgeInsets.symmetric(vertical: 5),
                      child: OutlinedButton(
                        style: OutlinedButton.styleFrom(
                          backgroundColor: isSelected
                              ? const Color(0xFFEAC63E)
                              : const Color(0xFFBAB4B4),
                          side: BorderSide(color: Colors.grey.shade400),
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
                          padding: const EdgeInsets.symmetric(vertical: 12),
                        ),
                        onPressed: () => setState(() => selectedCategory = c),
                        child: Align(
                          alignment: Alignment.center,
                          child: Text(
                            c,
                            style: const TextStyle(color: Colors.black87, fontWeight: FontWeight.w600),
                          ),
                        ),
                      ),
                    );
                  }).toList(),
                ),
              ),

            // Main Layout
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Tablet/Desktop Sidebar
                if (!isMobile)
                  Container(
                    width: isTablet ? 200 : 250,
                    margin: const EdgeInsets.only(right: 30),
                    padding: const EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      border: Border.all(color: Color(0xFFEAC63E)),
                      borderRadius: BorderRadius.circular(8),
                      color: Colors.white,
                    ),
                    child: Column(
                      children: categories.map((c) {
                        final isSelected = selectedCategory == c;
                        return Container(
                          margin: const EdgeInsets.symmetric(vertical: 5),
                          child: OutlinedButton(
                            style: OutlinedButton.styleFrom(
                              backgroundColor: isSelected
                                  ? const Color(0xFFEAC63E)
                                  : const Color(0xFFBAB4B4),
                              side: BorderSide(color: Colors.grey.shade400),
                              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
                              padding: const EdgeInsets.symmetric(vertical: 12),
                            ),
                            onPressed: () => setState(() => selectedCategory = c),
                            child: Align(
                              alignment: Alignment.center,
                              child: Text(
                                c,
                                style: const TextStyle(color: Colors.black87, fontWeight: FontWeight.w600),
                              ),
                            ),
                          ),
                        );
                      }).toList(),
                    ),
                  ),

                // Products Area
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Top 4 products
                      Wrap(
                        spacing: 56,
                        runSpacing: 20,
                        children: top4Products.map((product) {
                          return SizedBox(
                            width: cardWidth,
                            child: ProductCard(product: product),
                          );
                        }).toList(),
                      ),

                      const SizedBox(height: 30),

                      // Bottom 3 products
                      Wrap(
                        spacing: 16,
                        runSpacing: 20,
                        children: bottom3Products.map((product) {
                          return SizedBox(
                            width: cardWidth,
                            child: ProductCard(product: product),
                          );
                        }).toList(),
                      ),

                      const SizedBox(height: 30),

                      Align(
                        alignment: Alignment.bottomRight,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: const Color(0xFFEAC63E),
                            padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 12),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(4),
                            ),
                          ),
                          onPressed: () {},
                          child: const Text('View More', style: TextStyle(color: Colors.black)),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
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
              child: Image.asset(product.imagePath, height: 70, width: 70),
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
                    onPressed: () {
                      context.go('/gemstone_whishlist');
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
