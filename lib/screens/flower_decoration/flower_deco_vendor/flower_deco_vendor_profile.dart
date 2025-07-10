import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:lalitha_peetham/screens/flower_decoration/flower_deco_vendor/flower_deco_profile_widget.dart';
import 'package:lalitha_peetham/screens/flower_decoration/flower_deco_vendor/flower_deco_vendor_layout.dart';

class FlowerDecoVendorProfile extends StatelessWidget {
  const FlowerDecoVendorProfile({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final screenWidth = MediaQuery.of(context).size.width;
    final isMobile = screenWidth < 768;
    return FlowerDecoVendorLayout(
      child: Container(
        width: size.width,
        padding: EdgeInsets.symmetric(
          horizontal: isMobile ? 60 : 150,
          vertical: 50,
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            FlowerDecoProfileWidget(),
            const SizedBox(width: 20),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,

                children: [
                  _buildBreadcrumbs(),
                  const SizedBox(height: 60),
                  _buildProfileDetailsSection(isMobile, context),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildBreadcrumbs() {
    return Row(
      children: [
        Text(
          'My Lalitha Peetham',
          style: TextStyle(
            fontSize: 18,
            color: Colors.grey[600],
            fontWeight: FontWeight.w400,
          ),
        ),
        const SizedBox(width: 8),
        Text(
          '/',
          style: TextStyle(
            fontSize: 18,
            color: Colors.grey[600],
            fontWeight: FontWeight.w400,
          ),
        ),
        const SizedBox(width: 8),
        Text(
          'My Profile',
          style: TextStyle(
            fontSize: 18,
            color: Colors.grey[600],
            fontWeight: FontWeight.w400,
          ),
        ),
      ],
    );
  }

  Widget _buildProfileDetailsSection(bool isMobile, context) {
    return Container(
      decoration: BoxDecoration(
        color: const Color(0xFFEFE7C0), // Light beige background
        borderRadius: BorderRadius.circular(6),
      ),
      padding: const EdgeInsets.all(40),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildSectionItem(
            context: context,
            title: 'Basic Details',
            icon: Icons.chevron_right,
            Path: '/flower_vendor_basicdetails',
          ),
          const SizedBox(height: 30),
          _buildSectionItem(
            context: context,
            title: 'Business Information',
            icon: Icons.chevron_right,
            Path: '',
          ),
          const SizedBox(height: 30),
          _buildSectionItem(
            context: context,
            title: 'Portfolio And Work Samples',
            icon: Icons.chevron_right,
            Path: '',
          ),
          const SizedBox(height: 30),
          _buildSectionItem(
            context: context,
            title: 'Availability',
            icon: Icons.chevron_right,
            Path: '',
          ),
        ],
      ),
    );
  }

  Widget _buildSectionItem({
    required BuildContext context,
    required String title,
    required IconData icon,
    required String Path,
  }) {
    return GestureDetector(
      onTap: () => context.go(Path),
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 0),
        decoration: const BoxDecoration(
          border: Border(
            bottom: BorderSide(
              color: Color(0xFF51505D), // Light brown border
              width: 1,
            ),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              title,
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w600,
                color: Color(0xFF51505D), // Dark brown text
                letterSpacing: 1.2,
              ),
            ),
            Icon(
              icon,
              color: const Color(0xFF51505D), // Dark brown icon
              size: 24,
            ),
          ],
        ),
      ),
    );
  }
}
