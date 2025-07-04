import 'package:flutter/material.dart';
import 'package:lalitha_peetham/screens/ayurvedha/yoga_screens/yoga_layout.dart';

class GeneralYoga extends StatelessWidget {
  const GeneralYoga({super.key});

  @override
  Widget build(BuildContext context) {
    return YogaLayout(
      child: Column(
        children: [
          _buildBreadcrumb(),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 150, vertical: 50),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // First Card - Personal Yoga
                Expanded(
                  child: _buildYogaCard(
                    imagePath:
                        'assets/images/gen_yoga1.png', // Replace with actual image
                    saleTag: true,
                    category: 'Personalised Yoga',
                    title: '10 AM – Personal Yoga Class for Mindful Day',
                    originalPrice: '₹2,199.00',
                    discountedPrice: '₹1,850.00',
                    buttonText: 'Add to cart',
                    buttonColor: Colors.grey[300]!,
                    textColor: Colors.black,
                  ),
                ),
                const SizedBox(width: 16),

                // Second Card - Pregnancy Yoga
                Expanded(
                  child: _buildYogaCard(
                    imagePath:
                        'assets/images/gen_yoga2.png', // Replace with actual image
                    saleTag: false,
                    category: 'Pregnancy Yoga',
                    title: '10 AM – Prenatal Yoga Class for Gentle Strength',
                    originalPrice: null,
                    discountedPrice: '₹1,550.00 – ₹3,750.00',
                    buttonText: 'Select options',
                    buttonColor: Colors.grey[300]!,
                    textColor: Colors.black,
                  ),
                ),
                const SizedBox(width: 16),

                // Third Card - Regular Yoga
                Expanded(
                  child: _buildYogaCard(
                    imagePath:
                        'assets/images/gen_yoga3.png', // Replace with actual image
                    saleTag: true,
                    category: 'Regular Yoga',
                    title: '10 AM Regular Yoga Class for Mindful Day',
                    originalPrice: '₹1,299.00',
                    discountedPrice: '₹999.00',
                    buttonText: 'Add to cart',
                    buttonColor: Colors.grey[300]!,
                    textColor: Colors.black,
                  ),
                ),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 150, vertical: 50),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // First Card - Personal Yoga
                Expanded(
                  child: _buildYogaCard(
                    imagePath:
                        'assets/images/gen_yoga1.png', // Replace with actual image
                    saleTag: true,
                    category: 'Personalised Yoga',
                    title: '10 AM – Personal Yoga Class for Mindful Day',
                    originalPrice: '₹2,199.00',
                    discountedPrice: '₹1,850.00',
                    buttonText: 'Add to cart',
                    buttonColor: Colors.grey[300]!,
                    textColor: Colors.black,
                  ),
                ),
                const SizedBox(width: 16),

                // Second Card - Pregnancy Yoga
                Expanded(
                  child: _buildYogaCard(
                    imagePath:
                        'assets/images/gen_yoga2.png', // Replace with actual image
                    saleTag: false,
                    category: 'Pregnancy Yoga',
                    title: '10 AM – Prenatal Yoga Class for Gentle Strength',
                    originalPrice: null,
                    discountedPrice: '₹1,550.00 – ₹3,750.00',
                    buttonText: 'Select options',
                    buttonColor: Colors.grey[300]!,
                    textColor: Colors.black,
                  ),
                ),
                const SizedBox(width: 16),

                // Third Card - Regular Yoga
                Expanded(
                  child: _buildYogaCard(
                    imagePath:
                        'assets/images/gen_yoga3.png', // Replace with actual image
                    saleTag: true,
                    category: 'Regular Yoga',
                    title: '10 AM Regular Yoga Class for Mindful Day',
                    originalPrice: '₹1,299.00',
                    discountedPrice: '₹999.00',
                    buttonText: 'Add to cart',
                    buttonColor: Colors.grey[300]!,
                    textColor: Colors.black,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildYogaCard({
    required String imagePath,
    required bool saleTag,
    required String category,
    required String title,
    String? originalPrice,
    required String discountedPrice,
    required String buttonText,
    required Color buttonColor,
    required Color textColor,
  }) {
    return SizedBox(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Image with sale tag
          Stack(
            children: [
              SizedBox(
                height: 350,
                width: double.infinity,

                child: Image.asset(imagePath, fit: BoxFit.cover),
              ),
              if (saleTag)
                Positioned(
                  top: 12,
                  left: 12,
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 12,
                      vertical: 6,
                    ),
                    decoration: BoxDecoration(
                      color: const Color(0xFF4CAF50),
                      borderRadius: BorderRadius.circular(4),
                    ),
                    child: const Text(
                      'SALE!',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
            ],
          ),

          // Content
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                // Category
                Text(
                  category,
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.grey[600],
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const SizedBox(height: 8),

                // Title
                Text(
                  title,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: Colors.black87,
                    height: 1.3,
                  ),
                ),
                const SizedBox(height: 16),

                // Price
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    if (originalPrice != null) ...[
                      Text(
                        originalPrice,
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.grey[500],
                          decoration: TextDecoration.lineThrough,
                        ),
                      ),
                      const SizedBox(width: 8),
                    ],
                    Text(
                      discountedPrice,
                      style: const TextStyle(
                        fontSize: 16,
                        color: Color(0xFF4CAF50),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 16),

                // Button
                Center(
                  child: SizedBox(
                    width: 120,
                    child: ElevatedButton(
                      onPressed: () {
                        // Handle button press
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                        foregroundColor: Colors.black54,
                        elevation: 0,
                        side: BorderSide(color: Colors.grey[300]!, width: 2),
                        padding: const EdgeInsets.symmetric(vertical: 12),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(4),
                        ),
                      ),
                      child: Text(
                        buttonText,
                        style: const TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildBreadcrumb() {
    return Center(
      child: Padding(
        padding: const EdgeInsets.only(top: 50),
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 12),
          decoration: BoxDecoration(
            color: const Color(0xFFD4BB26),
            borderRadius: BorderRadius.circular(20),
          ),
          child: const Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(Icons.home, size: 16, color: Colors.black),
              Text(
                ' // General Yoga',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
