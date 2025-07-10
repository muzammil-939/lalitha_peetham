import 'package:flutter/material.dart';

class FlowerDecoHeader extends StatefulWidget {
  const FlowerDecoHeader({super.key});

  @override
  State<FlowerDecoHeader> createState() => _FlowerDecoHeaderState();
}

class _FlowerDecoHeaderState extends State<FlowerDecoHeader> {
  String? _selectedDropdown;

  bool _isMobile(BuildContext context) {
    return MediaQuery.of(context).size.width < 768;
  }

  bool _isTablet(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return width >= 768 && width < 1024;
  }

  bool _isDesktop(BuildContext context) {
    return MediaQuery.of(context).size.width >= 1024;
  }

  void _toggleDropdown(String item) {
    setState(() {
      if (_selectedDropdown == item) {
        _selectedDropdown = null; // Close if already open
      } else {
        _selectedDropdown = item; // Open new dropdown
      }
    });
  }

  void _closeDropdown() {
    setState(() {
      _selectedDropdown = null;
    });
  }

  @override
  Widget build(BuildContext context) {
    final isMobile = _isMobile(context);
    final isTablet = _isTablet(context);

    return Column(
      children: [
        // Top header
        Container(
          height: 70,
          color: const Color(0xffD4BB26),
          padding: EdgeInsets.symmetric(horizontal: isMobile ? 10 : 20),
          child: Row(
            children: [
              // Logo and title section
              Expanded(
                flex: isMobile ? 4 : 3,
                child: Row(
                  children: [
                    SizedBox(width: isMobile ? 5 : 15),
                    Container(
                      width: isMobile ? 40 : 50,
                      height: isMobile ? 40 : 50,
                      child: Image.asset(
                        'assets/images/Logo.jpg',
                        fit: BoxFit.cover,
                      ),
                    ),
                    SizedBox(width: isMobile ? 8 : 12),
                    if (!isMobile)
                      const Icon(Icons.menu, size: 24, color: Colors.black87),
                    if (!isMobile) const SizedBox(width: 10),
                    Expanded(
                      child: FittedBox(
                        fit: BoxFit.scaleDown,
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'MY LALITHA PEETHAM',
                          style: TextStyle(
                            fontSize: isMobile ? 16 : 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.black87,
                            letterSpacing: isMobile ? 0.8 : 1.2,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              // Login/Help section
              if (!isMobile)
                Expanded(
                  flex: 2,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      _buildHeaderButton(context, 'Login', ''),
                      const SizedBox(width: 20),
                      _buildHeaderButton(context, 'Help', ''),
                    ],
                  ),
                ),
              // Mobile menu icon
              if (isMobile)
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.menu, size: 24, color: Colors.black87),
                ),
            ],
          ),
        ),
        // Sub navigation bar with dropdowns
        Container(
          height: 70,
          width: double.infinity,
          color: const Color(0xffD4BB26),
          padding: const EdgeInsets.symmetric(horizontal: 100),

          child: Row(
            children: [
              Container(
                height: 44,
                width: 150,
                color: Colors.white,
                child: Center(
                  child: Text(
                    'Flower Decorations',
                    style: TextStyle(fontSize: 14, color: Colors.black),
                  ),
                ),
              ),
              Spacer(),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildHeaderButton(context, String text, String path) => TextButton(
    onPressed: () {
      // Handle navigation if needed
    },
    child: Text(
      text,
      style: const TextStyle(
        fontSize: 18,
        color: Colors.black87,
        fontWeight: FontWeight.w500,
      ),
    ),
  );
}
