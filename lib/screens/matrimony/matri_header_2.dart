import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class MatriHeaderTwo extends StatelessWidget {
  const MatriHeaderTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Top white header
        Container(
          height: 70,
          color: Color(0xffEDE5BA),
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              // Logo and title
              Row(
                children: [
                  const SizedBox(width: 15),
                  // Logo
                  Container(
                    width: 50,
                    height: 50,
                    child: Center(
                      child: Image.asset(
                        'assets/images/Logo.jpg',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  const SizedBox(width: 12),
                  // Menu icon
                  const Icon(Icons.menu, size: 24, color: Colors.black87),
                  const SizedBox(width: 10),
                  const Text(
                    'MY LALITHA PEETHAM',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.black87,
                      letterSpacing: 1.2,
                    ),
                  ),
                ],
              ),
              // Right side buttons
              Padding(
                padding: const EdgeInsets.only(right: 125),
                child: Row(
                  children: [
                    _buildHeaderButton('Login'),
                    const SizedBox(width: 20),
                    _buildHeaderButton('Help'),
                  ],
                ),
              ),
            ],
          ),
        ),

        // Golden/Yellow navigation bar
        Container(
          height: 60,
          color: Color(0xffD4BB26),
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Left navigation items
              Row(
                children: [
                  _buildNavItem(context, 'MY LALITHA PEETHAM', ''),
                  const SizedBox(width: 40),
                  _buildNavItem(context, 'MATCHES', ''),
                  const SizedBox(width: 40),
                  _buildNavItem(context, 'SEARCH', '/matri_search'),
                  const SizedBox(width: 40),
                  _buildNavItem(context, 'INBOX', '/messages'),
                ],
              ),
              SizedBox(width: 300),
              // Right side items
              Row(
                children: [
                  Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 16,
                      vertical: 8,
                    ),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.white, width: 1.5),
                      borderRadius: BorderRadius.circular(4),
                    ),
                    child: const Text(
                      'UPGRADE NOW',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                        fontSize: 13,
                        letterSpacing: 0.5,
                      ),
                    ),
                  ),
                  const SizedBox(width: 30),
                  Row(
                    children: [
                      const Text(
                        'HELP',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                          fontSize: 13,
                          letterSpacing: 0.5,
                        ),
                      ),
                      const SizedBox(width: 5),
                      const Icon(
                        Icons.keyboard_arrow_down,
                        color: Colors.white,
                        size: 18,
                      ),
                    ],
                  ),
                  const SizedBox(width: 30),
                  // Profile picture
                  Container(
                    width: 35,
                    height: 35,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(17.5),
                      border: Border.all(color: Colors.white, width: 2),
                      image: const DecorationImage(
                        image: NetworkImage(
                          'https://via.placeholder.com/35x35/8B4513/FFFFFF?text=P',
                        ),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  const SizedBox(width: 5),
                  const Icon(
                    Icons.keyboard_arrow_down,
                    color: Colors.white,
                    size: 18,
                  ),
                ],
              ),
            ],
          ),
        ),

        // Sub navigation bar
        Container(
          height: 60,
          color: const Color(0xffEDE5BA),
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              _buildSubNavItem(context, 'Basic Search'),
              _buildSubNavItem(context, 'Advanced Search'),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildHeaderButton(String text) {
    return Text(
      text,
      style: const TextStyle(
        fontSize: 18,
        color: Colors.black87,
        fontWeight: FontWeight.w500,
      ),
    );
  }

  Widget _buildNavItem(BuildContext context, String text, String route) {
    return GestureDetector(
      onTap: () {
        context.go(route);
      },
      child: Text(
        text,
        style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,

          decorationColor: Colors.white,
          fontSize: 18,
          letterSpacing: 0.5,
          decorationThickness: 1.5,
        ),
      ),
    );
  }

  Widget _buildSubNavItem(BuildContext context, String text) {
    return TextButton(
      onPressed: () {
        //context.go(route);
      },
      child: Text(
        text,
        style: TextStyle(
          color: Colors.black87,
          fontWeight: FontWeight.w500,
          decorationThickness: 1.5,
          fontSize: 18,
        ),
      ),
    );
  }
}
