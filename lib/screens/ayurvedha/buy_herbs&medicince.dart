import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:lalitha_peetham/screens/ayurvedha/ayurvedh_page_layout.dart';

class BuyHerbsmedicince extends StatefulWidget {
  const BuyHerbsmedicince({super.key});

  @override
  State<BuyHerbsmedicince> createState() => _BuyHerbsmedicinceState();
}

class _BuyHerbsmedicinceState extends State<BuyHerbsmedicince> {
  @override
  Widget build(BuildContext context) {
    return AyurvedhPageLayout(
      child: SingleChildScrollView(
        child: Container(
          color: Colors.white,
          child: Column(
            children: [
              SizedBox(height: 40),
              // Header Section
              _buildHeader(),

              // Navigation Menu
              _buildNavigationMenu(),

              // Hero Section
              _buildHeroSection(),

              // Content Sections
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 50),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 40),
                    _buildFeaturedProducts(),
                    const SizedBox(height: 40),
                    _buildTrendingProducts(),
                    const SizedBox(height: 40),
                    _buildBestSellingProducts(),
                    const SizedBox(height: 40),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildHeader() {
    return Container(
      height: 80,
      decoration: const BoxDecoration(color: Color(0xFFD4BB26)),
      padding: const EdgeInsets.symmetric(horizontal: 50),
      child: Row(
        children: [
          // Medicine Input Field Container
          Container(
            height: 45,
            width: 450,
            decoration: BoxDecoration(
              color: const Color(
                0x99FFFFFF,
              ), // Light beige color matching the reference
              borderRadius: BorderRadius.circular(0),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.1),
                  blurRadius: 4,
                  offset: const Offset(0, 2),
                ),
              ],
            ),
            child: TextField(
              decoration: InputDecoration(
                hintText: 'MEDICINE',
                hintStyle: const TextStyle(
                  color: Colors.black87,
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  letterSpacing: 1,
                ),
                border: InputBorder.none,
                contentPadding: const EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 12,
                ),
              ),
              style: const TextStyle(
                color: Colors.black87,
                fontSize: 14,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),

          const SizedBox(width: 1), // Small gap between containers
          // Search Container
          Container(
            height: 45,
            width: 120,
            decoration: BoxDecoration(
              color: const Color(
                0xFFFFFFCC,
              ), // Same color as medicine container
              borderRadius: BorderRadius.circular(0),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.1),
                  blurRadius: 4,
                  offset: const Offset(0, 2),
                ),
              ],
            ),
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.search, color: Colors.black87, size: 20),
                SizedBox(width: 6),
                Text(
                  'SEARCH',
                  style: TextStyle(
                    color: Colors.black87,
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    letterSpacing: 1,
                  ),
                ),
              ],
            ),
          ),

          // Spacer to push icons to the right
          const Spacer(),

          // Action Icons
          Container(
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Colors.white.withOpacity(0.2),
              borderRadius: BorderRadius.circular(20),
            ),
            child: const Icon(
              Icons.notifications_outlined,
              color: Colors.white,
              size: 24,
            ),
          ),
          const SizedBox(width: 12),
          Container(
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Colors.white.withOpacity(0.2),
              borderRadius: BorderRadius.circular(20),
            ),
            child: const Icon(
              Icons.lock_outline,
              color: Colors.white,
              size: 24,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildNavigationMenu() {
    final menuItems = [
      {'text': 'BRANDS', 'route': 'null'},
      {'text': 'CLASSICAL MEDICINES', 'route': 'null'},
      {'text': 'MEDICINE BY DISORDERS', 'route': 'null'},
      {'text': 'HERBS', 'route': '/herbs'},
      {'text': 'SINGLE HERB FORMULATION', 'route': '/single_herbformulation'},
      {'text': 'PANCHAKARMA OILS', 'route': 'null'},
      {'text': 'ESSENTIAL OILS', 'route': 'null'},
      {'text': 'NUTRACEUTICALS', 'route': 'null'},
    ];

    return Container(
      height: 50,
      color: Colors.white,
      child: Row(
        children:
            menuItems.map((item) {
              return Flexible(
                child: GestureDetector(
                  onTap: () {
                    // Navigate to the specific route
                    context.go(item['route']!);
                  },
                  child: Container(
                    alignment: Alignment.center,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Flexible(
                          child: Text(
                            item['text']!,
                            style: TextStyle(
                              color: Colors.brown[700],
                              fontSize: 12,
                              fontWeight: FontWeight.w600,
                            ),
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                        const SizedBox(width: 4),
                        Icon(
                          Icons.keyboard_arrow_down,
                          color: Colors.brown[700],
                          size: 16,
                        ),
                      ],
                    ),
                  ),
                ),
              );
            }).toList(),
      ),
    );
  }

  Widget _buildHeroSection() {
    return Container(
      height: 350,
      width: double.infinity,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(
            'assets/images/ayurveda_hero_banner.png',
          ), // Replace with your image path
          fit: BoxFit.cover,
        ),
      ),
      child: Container(
        // Optional: Add a subtle overlay if needed for better text readability
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.black.withOpacity(0.1), Colors.transparent],
            begin: Alignment.bottomCenter,
            end: Alignment.topCenter,
          ),
        ),
      ),
    );
  }

  Widget _buildFeaturedProducts() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'FEATURED PRODUCTS',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Color(0xFFAA961B),
          ),
        ),
        const SizedBox(height: 20),
        _buildProductRow([
          {'name': 'Curcumin Capsules', 'price': '₹ 1100', 'rating': 5},
          {'name': 'Ayush-64 Tab 60', 'price': '₹ 300', 'rating': 5},
          {'name': 'Shilajit Capsules', 'price': '₹ 1500', 'rating': 5},
          {'name': 'Neem Capsules', 'price': '₹ 450', 'rating': 5},
          {'name': 'Giloy Capsules', 'price': '₹ 540', 'rating': 5},
          {'name': 'Ashwagandha Capsules', 'price': '₹ 720', 'rating': 5},
          {'name': 'Giloyghan Vati', 'price': '₹ 240', 'rating': 5},
        ]),
      ],
    );
  }

  Widget _buildTrendingProducts() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'TRENDING PRODUCTS',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Color(0xFFAA961B),
          ),
        ),
        const SizedBox(height: 20),
        _buildProductRow([
          {'name': 'Sarvatobhadra Vati', 'price': '₹ 430', 'rating': 5},
          {'name': 'Shilajit Capsules', 'price': '₹ 1150', 'rating': 5},
          {'name': 'Ashwagandha Capsules', 'price': '₹ 720', 'rating': 5},
          {'name': 'Tricho Capsules', 'price': '₹ 510', 'rating': 5},
          {'name': 'Apple Cider Vinegar', 'price': '₹ 330', 'rating': 5},
          {'name': 'Apple Cider Vinegar', 'price': '₹ 740', 'rating': 5},
          {'name': 'Apamarga Kshara', 'price': '₹ 740', 'rating': 5},
        ]),
      ],
    );
  }

  Widget _buildBestSellingProducts() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'BEST SELLING PRODUCTS',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Color(0xFFAA961B),
          ),
        ),
        const SizedBox(height: 20),
        _buildProductRow([
          {'name': 'Sarvatobhadra Vati', 'price': '₹ 430', 'rating': 5},
          {'name': 'Shilajit Capsules', 'price': '₹ 1150', 'rating': 5},
          {'name': 'Ashwagandha Capsules', 'price': '₹ 720', 'rating': 5},
          {'name': 'Tricho Capsules', 'price': '₹ 510', 'rating': 5},
          {'name': 'Apple Cider Vinegar', 'price': '₹ 330', 'rating': 5},
          {'name': 'Apple Cider Vinegar', 'price': '₹ 740', 'rating': 5},
          {'name': 'Apamarga Kshara', 'price': '₹ 740', 'rating': 5},
        ]),
      ],
    );
  }

  Widget _buildProductRow(List<Map<String, dynamic>> products) {
    return SizedBox(
      height: 180,
      child: Row(
        children: [
          IconButton(
            onPressed: () {}, // Optional: scroll left
            icon: const Icon(
              Icons.chevron_left,
              size: 30,
              color: Color(0xFFAA961B),
            ),
          ),
          Flexible(
            child: SizedBox(
              height: 180,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: products.length,
                itemBuilder: (context, index) {
                  final product = products[index];
                  final productName = product['name'];

                  return GestureDetector(
                    onTap: () {
                      // Individual navigation logic
                      switch (productName) {
                        case 'Curcumin Capsules':
                          context.go('/herbs_product_details');
                          break;
                        case 'Ayush-64 Tab 60':
                          context.go('/ayush64_product_details');
                          break;
                        case 'Shilajit Capsules':
                          context.go('/shilajit_product_details');
                          break;
                        case 'Neem Capsules':
                          context.go('/neem_product_details');
                          break;
                        case 'Giloy Capsules':
                          context.go('/giloy_product_details');
                          break;
                        case 'Ashwagandha Capsules':
                          context.go('/ashwagandha_product_details');
                          break;
                        case 'Giloyghan Vati':
                          context.go('/giloyghan_product_details');
                          break;
                        default:
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(content: Text('$productName tapped')),
                          );
                      }
                    },
                    child: Container(
                      width: 140,
                      margin: const EdgeInsets.symmetric(horizontal: 8),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(12),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.1),
                            blurRadius: 8,
                            offset: const Offset(0, 4),
                          ),
                        ],
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          // Product Image Placeholder
                          Container(
                            height: 80,
                            margin: const EdgeInsets.all(12),
                            decoration: BoxDecoration(
                              color: _getProductColor(index),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: const Center(
                              child: Icon(
                                Icons.medical_services,
                                color: Colors.white,
                                size: 30,
                              ),
                            ),
                          ),
                          // Product Name
                          Flexible(
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 8,
                              ),
                              child: Text(
                                productName,
                                textAlign: TextAlign.center,
                                style: const TextStyle(
                                  fontSize: 11,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.black87,
                                ),
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                          ),
                          const SizedBox(height: 4),
                          // Rating
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: List.generate(5, (starIndex) {
                              return Icon(
                                Icons.star,
                                size: 10,
                                color:
                                    starIndex < product['rating']
                                        ? Colors.amber
                                        : Colors.grey[300],
                              );
                            }),
                          ),
                          const SizedBox(height: 4),
                          // Price
                          Text(
                            product['price'],
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                              color: Colors.green[700],
                            ),
                          ),
                          const SizedBox(height: 8),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
          IconButton(
            onPressed: () {}, // Optional: scroll right
            icon: const Icon(
              Icons.chevron_right,
              size: 30,
              color: Color(0xFFAA961B),
            ),
          ),
        ],
      ),
    );
  }

  Color _getProductColor(int index) {
    final colors = [
      Colors.blue[400]!,
      Colors.green[400]!,
      Colors.orange[400]!,
      Colors.purple[400]!,
      Colors.red[400]!,
      Colors.teal[400]!,
      Colors.amber[400]!,
    ];
    return colors[index % colors.length];
  }
}
