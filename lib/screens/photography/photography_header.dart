import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class PhotographyHeader extends StatelessWidget {
  const PhotographyHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 80,
      decoration: const BoxDecoration(color: Color(0xFF6B8E4B)),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            // Logo section
            Container(
              width: 50,
              height: 50,
              decoration: BoxDecoration(
                color: const Color(0xFF2C4A3D),
                borderRadius: BorderRadius.circular(4),
              ),
              child: Image.asset('assets/images/Logo.jpg', fit: BoxFit.cover),
            ),

            // Navigation items
            Row(
              children: [
                Row(
                  children: [
                    _buildNavItem(context, 'Home', ''),
                    const SizedBox(width: 40),
                    _buildNavItem(context, 'Services', '/photography_services'),
                    const SizedBox(width: 40),
                    _buildNavItem(context, 'portfolio', ''),
                    const SizedBox(width: 40),
                    _buildNavItem(context, 'Packages', '/photography_services'),
                    const SizedBox(width: 40),
                    _buildNavItem(
                      context,
                      'My Bookings',
                      '/Photography_Bookings_Status',
                    ),
                  ],
                ),
                const SizedBox(width: 40),
                // Right side buttons
                Row(
                  children: [
                    GestureDetector(
                      onTap: () => context.go('/photography_contact_form'),
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 20,
                          vertical: 10,
                        ),
                        decoration: BoxDecoration(
                          color: const Color(0xFFD4AF37), // Golden yellow color
                          borderRadius: BorderRadius.circular(6),
                        ),
                        child: const Text(
                          'Contact',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(width: 16),
                    Container(
                      width: 40,
                      height: 40,
                      decoration: const BoxDecoration(
                        color: Color(0xFF4A90E2), // Blue color
                        shape: BoxShape.circle,
                      ),
                      child: const Icon(
                        Icons.person,
                        color: Colors.white,
                        size: 20,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildNavItem(BuildContext context, String text, String path) {
    return TextButton(
      onPressed: () {
        context.go(path);
      },
      child: Text(
        text,
        style: const TextStyle(
          color: Colors.white,
          fontSize: 16,
          fontWeight: FontWeight.w400,
        ),
      ),
    );
  }
}
