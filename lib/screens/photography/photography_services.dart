import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:lalitha_peetham/screens/photography/photography_faq_wid.dart';
import 'package:lalitha_peetham/screens/photography/photography_hero_img2.dart';
import 'package:lalitha_peetham/screens/photography/photography_layout.dart';

class PhotographyServices extends StatelessWidget {
  const PhotographyServices({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return PhotographyLayout(
      child: Column(
        children: [
          PhotographyHeroImg2(),
          SizedBox(height: 100),
          Container(
            width: double.infinity,

            padding: EdgeInsets.symmetric(vertical: 150),
            decoration: BoxDecoration(
              color: Color(0xFF6B7B4F), // Olive green background
            ),
            child: Center(
              child: SizedBox(
                width: screenWidth * 0.75,
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          'Professional Photography Tailored to Every Occasion',
                          style: TextStyle(
                            fontSize: 28,
                            fontWeight: FontWeight.w600,
                            color: Colors.white,
                            letterSpacing: 0.5,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                    SizedBox(height: 60),
                    // First row
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        _buildServiceCard(
                          context,
                          'wedding Shoots',
                          'assets/wedding.jpg', // Replace with actual image path
                          Icons.favorite, // Placeholder icon
                        ),

                        _buildServiceCard(
                          context,
                          'Pre-wedding Shoots',
                          'assets/pre_wedding.jpg',
                          Icons.camera_alt,
                        ),

                        _buildServiceCard(
                          context,
                          'Birthday Parties',
                          'assets/birthday.jpg',
                          Icons.cake,
                        ),
                      ],
                    ),
                    SizedBox(height: 50),

                    // Second row
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        _buildServiceCard(
                          context,
                          'Fashion Portfolios',
                          'assets/fashion.jpg',
                          Icons.person,
                        ),

                        _buildServiceCard(
                          context,
                          'Candid Wedding Coverage',
                          'assets/candid_wedding.jpg',
                          Icons.groups,
                        ),

                        _buildServiceCard(
                          context,
                          'Business Photography',
                          'assets/business.jpg',
                          Icons.business,
                        ),
                      ],
                    ),
                    SizedBox(height: 50),

                    // Third row
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        _buildServiceCard(
                          context,
                          'Maternity Shoots',
                          'assets/maternity.jpg',
                          Icons.pregnant_woman,
                        ),
                        _buildServiceCard(
                          context,
                          'products Shoots',
                          'assets/products.jpg',
                          Icons.inventory,
                        ),
                        _buildServiceCard(
                          context,
                          'Real Estate Shoots',
                          'assets/real_estate.jpg',
                          Icons.home,
                        ),
                      ],
                    ),
                    SizedBox(height: 50),

                    // Fourth row (single card, left-aligned)
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        _buildServiceCard(
                          context,
                          'traditional Shoots',
                          'assets/traditional.jpg',
                          Icons.temple_hindu,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          PhotographyFaq(),
        ],
      ),
    );
  }

  Widget _buildServiceCard(
    BuildContext context,
    String title,
    String imagePath,
    IconData fallbackIcon,
  ) {
    return GestureDetector(
      onTap: () => context.go('/photography_packages'),
      child: Container(
        width: 350,
        height: 380,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.1),
              blurRadius: 8,
              offset: Offset(0, 4),
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // Image section
            Container(
              height: 300,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.vertical(top: Radius.circular(12)),
                color: Colors.grey[200],
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.vertical(top: Radius.circular(12)),
                child: Image.asset(
                  imagePath,
                  fit: BoxFit.cover,
                  errorBuilder: (context, error, stackTrace) {
                    // Fallback to icon if image not found
                    return Container(
                      color: Colors.grey[200],
                      child: Icon(
                        fallbackIcon,
                        size: 48,
                        color: Colors.grey[400],
                      ),
                    );
                  },
                ),
              ),
            ),

            // Text section
            Container(
              height: 80,
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.vertical(
                  bottom: Radius.circular(12),
                ),
              ),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  title,
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    color: Colors.black87,
                  ),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
