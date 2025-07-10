import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:lalitha_peetham/screens/flower_decoration/flower_deco_layout.dart';
import 'flower_deco_select_city.dart';

class FlowerDecoEvent extends StatefulWidget {
  const FlowerDecoEvent({super.key});

  @override
  State<FlowerDecoEvent> createState() => _FlowerDecoEventState();
}

class _FlowerDecoEventState extends State<FlowerDecoEvent> {
  @override
  void initState() {
    super.initState();
    // Show dialog after the widget is built
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _showCitySearchDialog();
    });
  }

  void _showCitySearchDialog() {
    showDialog(
      context: context,
      barrierDismissible: true,
      builder: (BuildContext context) {
        return const CitySearchDialog(); // Your dialog class
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return FlowerDecoLayout(
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            // Header
            Padding(
              padding: const EdgeInsets.only(top: 30, bottom: 60),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(height: 1.5, width: 250, color: Color(0xFFD4BB26)),
                  SizedBox(width: 25),
                  Container(
                    child: const Text(
                      'Purpose Of Your Event',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: Colors.black87,
                      ),
                    ),
                  ),
                  SizedBox(width: 25),
                  Container(height: 1.5, width: 250, color: Color(0xFFD4BB26)),
                ],
              ),
            ),

            // Category Icons Section
            Container(
              color: const Color(0xFFE8E0A6), // Light yellow background
              padding: const EdgeInsets.symmetric(
                vertical: 50.0,
                horizontal: 16.0,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  _buildCategoryItem(
                    icon: Icons.cake,
                    label: 'Birthday',
                    color: const Color(0xFFFFD700),
                  ),
                  _buildCategoryItem(
                    icon: Icons.restaurant,
                    label: 'Dinner',
                    color: const Color(0xFFFF69B4),
                  ),
                  _buildCategoryItem(
                    icon: Icons.favorite,
                    label: 'Wedding',
                    color: const Color(0xFFFFB6C1),
                  ),
                  _buildCategoryItem(
                    icon: Icons.people,
                    label: 'Kids',
                    color: const Color(0xFFA0A0A0),
                  ),
                  _buildCategoryItem(
                    icon: Icons.celebration,
                    label: 'Festival',
                    color: const Color(0xFF87CEEB),
                  ),
                  _buildCategoryItem(
                    icon: Icons.party_mode,
                    label: 'Party',
                    color: const Color(0xFFFFE4B5),
                  ),
                ],
              ),
            ),

            // Filter and Sort Section
            Container(
              padding: const EdgeInsets.symmetric(
                horizontal: 220.0,
                vertical: 50,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // Default sorting button
                  Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 20.0,
                      vertical: 10.0,
                    ),
                    decoration: BoxDecoration(
                      color: const Color(0xFFD4B942),
                      borderRadius: BorderRadius.circular(25.0),
                    ),
                    child: const Text(
                      'Default sorting',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),

                  // Sort By dropdown
                  Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 20.0,
                      vertical: 10.0,
                    ),
                    decoration: BoxDecoration(
                      color: const Color(0xFFD4B942),
                      borderRadius: BorderRadius.circular(25.0),
                    ),
                    child: Row(
                      children: const [
                        Icon(Icons.sort, color: Colors.white, size: 18),
                        SizedBox(width: 8),
                        Text(
                          'Sort By',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        SizedBox(width: 8),
                        Icon(
                          Icons.keyboard_arrow_down,
                          color: Colors.white,
                          size: 18,
                        ),
                      ],
                    ),
                  ),

                  // Results count
                  const Text(
                    'Showing 1-30 of 69 results',
                    style: TextStyle(color: Colors.grey, fontSize: 12),
                  ),
                ],
              ),
            ),

            // Products Section
            Container(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 150.0),
                child: Column(
                  children: [
                    // First row
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        SizedBox(
                          width: 300,
                          height: 350,
                          child: _buildProductCard(
                            context,
                            'Amazing House Warming Decoration',
                            '₹1474',
                            '₹2500',
                            'assets/images/flower_deco_1.png',
                          ),
                        ),
                        SizedBox(
                          width: 300,
                          height: 350,
                          child: _buildProductCard(
                            context,
                            'Amazing Naming Ceremony Decor',
                            '₹4900',
                            '₹6500',
                            'assets/images/flower_deco_2.png',
                          ),
                        ),
                        SizedBox(
                          width: 300,
                          height: 350,
                          child: _buildProductCard(
                            context,
                            'Artificial Naming Ceremony Flower',
                            '₹3900',
                            '₹6500',
                            'assets/images/flower_deco_3.png',
                          ),
                        ),
                      ],
                    ),

                    const SizedBox(height: 40),

                    // Second row
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        SizedBox(
                          width: 300,
                          height: 350,
                          child: _buildProductCard(
                            context,
                            'Amazing House Warming Decoration',
                            '₹1474',
                            '₹2500',
                            'assets/images/flower_deco_1.png',
                          ),
                        ),
                        SizedBox(
                          width: 300,
                          height: 350,
                          child: _buildProductCard(
                            context,
                            'Amazing Naming Ceremony Decor',
                            '₹4900',
                            '₹6500',
                            'assets/images/flower_deco_2.png',
                          ),
                        ),
                        SizedBox(
                          width: 300,
                          height: 350,
                          child: _buildProductCard(
                            context,
                            'Artificial Naming Ceremony Flower',
                            '₹3900',
                            '₹6500',
                            'assets/images/flower_deco_3.png',
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),

            // Pagination
            Container(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text('«', style: TextStyle(color: Colors.grey)),
                  const SizedBox(width: 16),
                  const Text('‹', style: TextStyle(color: Colors.grey)),
                  const SizedBox(width: 16),
                  Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 12,
                      vertical: 6,
                    ),
                    decoration: BoxDecoration(
                      color: const Color(0xFFD4BB26),
                      borderRadius: BorderRadius.circular(4),
                    ),
                    child: const Text(
                      '1',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  const SizedBox(width: 8),
                  const Text('2', style: TextStyle(color: Colors.grey)),
                  const SizedBox(width: 8),
                  const Text('3', style: TextStyle(color: Colors.grey)),
                  const SizedBox(width: 8),
                  const Text('...', style: TextStyle(color: Colors.grey)),
                  const SizedBox(width: 8),
                  const Text('10', style: TextStyle(color: Colors.grey)),
                  const SizedBox(width: 16),
                  const Text('›', style: TextStyle(color: Colors.grey)),
                  const SizedBox(width: 16),
                  const Text('»', style: TextStyle(color: Colors.grey)),
                ],
              ),
            ),
            SizedBox(height: 100),
          ],
        ),
      ),
    );
  }

  Widget _buildCategoryItem({
    required IconData icon,
    required String label,
    required Color color,
  }) {
    return Column(
      children: [
        Container(
          width: 50,
          height: 50,
          decoration: BoxDecoration(color: color, shape: BoxShape.circle),
          child: Icon(icon, color: Colors.white, size: 24),
        ),
        const SizedBox(height: 8),
        Text(
          label,
          style: const TextStyle(fontSize: 12, color: Colors.black87),
        ),
      ],
    );
  }

  Widget _buildProductCard(
    BuildContext context,
    String title,
    String currentPrice,
    String originalPrice,
    String imagePath,
  ) {
    return Card(
      color: Colors.white,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Product Image
          Expanded(
            flex: 3,
            child: Container(
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.vertical(
                  top: Radius.circular(8),
                ),
              ),
              child: Image.asset(imagePath, fit: BoxFit.cover),
            ),
          ),

          // Product Details
          Expanded(
            flex: 2,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    title,
                    style: const TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                    ),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                  const SizedBox(height: 4),
                  Row(
                    children: [
                      Text(
                        currentPrice,
                        style: const TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: Colors.green,
                        ),
                      ),
                      const SizedBox(width: 4),
                      Text(
                        originalPrice,
                        style: const TextStyle(
                          fontSize: 12,
                          decoration: TextDecoration.lineThrough,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 8),
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {
                        context.go('/flower_deco_product');
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFFD4BB26),
                        padding: const EdgeInsets.symmetric(vertical: 25),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(4),
                        ),
                      ),
                      child: const Text(
                        'VIEW DETAILS',
                        style: TextStyle(
                          fontSize: 10,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
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
