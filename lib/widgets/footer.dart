import 'package:flutter/material.dart';

class FooterWidget extends StatefulWidget {
  const FooterWidget({super.key});

  @override
  _FooterWidgetState createState() => _FooterWidgetState();
}

class _FooterWidgetState extends State<FooterWidget> {
  final TextEditingController _emailController = TextEditingController();

  @override
  void dispose() {
    _emailController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: Color(0xFF1A1A1A), // Dark background
      padding: EdgeInsets.symmetric(horizontal: 24, vertical: 48),
      child: Column(
        children: [
          // Main footer content
          LayoutBuilder(
            builder: (context, constraints) {
              if (constraints.maxWidth > 800) {
                return _buildDesktopLayout();
              } else {
                return _buildMobileLayout();
              }
            },
          ),

          // Newsletter subscription section
          SizedBox(height: 60),
          _buildNewsletterSection(),
        ],
      ),
    );
  }

  Widget _buildDesktopLayout() {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Left section - Logo and description
        Expanded(flex: 2, child: _buildLeftSection()),

        SizedBox(width: 80),

        // Company section
        Expanded(flex: 1, child: _buildCompanySection()),

        SizedBox(width: 60),

        // Services section
        Expanded(flex: 1, child: _buildServicesSection()),

        SizedBox(width: 60),

        // Contact section
        Expanded(flex: 1, child: _buildContactSection()),
      ],
    );
  }

  Widget _buildMobileLayout() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _buildLeftSection(),
        SizedBox(height: 32),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(child: _buildCompanySection()),
            SizedBox(width: 20),
            Expanded(child: _buildServicesSection()),
          ],
        ),
        SizedBox(height: 32),
        _buildContactSection(),
      ],
    );
  }

  Widget _buildLeftSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Logo - Circular design with lotus/mandala pattern
        Container(
          height: 300,
          width: 300,
          padding: EdgeInsets.all(8),

          child: Center(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Image.asset(
                'assets/images/Logo.jpg',
                fit: BoxFit.cover,
                errorBuilder: (context, error, stackTrace) {
                  return Container(
                    decoration: BoxDecoration(
                      gradient: const LinearGradient(
                        colors: [Color(0xFFD4BB26), Color(0xFFB8A020)],
                      ),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: const Icon(
                      Icons.business,
                      color: Colors.white,
                      size: 28,
                    ),
                  );
                },
              ),
            ),
          ),
        ),

        SizedBox(height: 24),
        SizedBox(height: 12),

        // Description
        Text(
          'We help you exploring your\ncosmic path',
          style: TextStyle(color: Colors.white70, fontSize: 16, height: 1.5),
        ),

        SizedBox(height: 32),

        // Social media icons
        Row(
          children: [
            _buildSocialIcon(Icons.facebook, () {}),
            SizedBox(width: 16),
            _buildSocialIcon(Icons.camera_alt, () {}), // Instagram
            SizedBox(width: 16),
            _buildSocialIcon(Icons.close, () {}), // X/Twitter icon
          ],
        ),
      ],
    );
  }

  Widget _buildSocialIcon(IconData icon, VoidCallback onTap) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 40,
        height: 40,
        decoration: BoxDecoration(color: Colors.white, shape: BoxShape.circle),
        child: Icon(icon, color: Colors.black, size: 18),
      ),
    );
  }

  Widget _buildCompanySection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Company',
          style: TextStyle(
            color: Color(0xFFD4AF37),
            fontSize: 22,
            fontWeight: FontWeight.w600,
          ),
        ),
        SizedBox(height: 24),
        ..._buildMenuItems([
          'Home',
          'services',
          'Book A Pooja',
          'Astrologers',
          'Palm Reading',
          'Blog',
          'History',
          'Contact',
        ]),
      ],
    );
  }

  Widget _buildServicesSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Services',
          style: TextStyle(
            color: Color(0xFFD4AF37),
            fontSize: 22,
            fontWeight: FontWeight.w600,
          ),
        ),
        SizedBox(height: 24),
        ..._buildMenuItems([
          'Natal Chart Readings',
          'Compatibility Readings',
          'Progression Readings',
          'Specialty Readings',
        ]),
      ],
    );
  }

  Widget _buildContactSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Contact Us',
          style: TextStyle(
            color: Color(0xFFD4AF37),
            fontSize: 22,
            fontWeight: FontWeight.w600,
          ),
        ),
        SizedBox(height: 24),
        _buildContactItem('booking@celestial.com'),
        SizedBox(height: 16),
        _buildContactItem('(+62) 1234 5678'),
        SizedBox(height: 16),
        _buildContactItem('Oak Building 19, North City'),
      ],
    );
  }

  List<Widget> _buildMenuItems(List<String> items) {
    return items
        .map(
          (item) => Padding(
            padding: EdgeInsets.only(bottom: 16),
            child: GestureDetector(
              onTap: () {
                // Handle navigation
              },
              child: Text(
                item,
                style: TextStyle(
                  color: Colors.white70,
                  fontSize: 16,
                  height: 1.4,
                ),
              ),
            ),
          ),
        )
        .toList();
  }

  Widget _buildContactItem(String text) {
    return Text(
      text,
      style: TextStyle(color: Colors.white70, fontSize: 16, height: 1.4),
    );
  }

  Widget _buildNewsletterSection() {
    return Column(
      children: [
        Text(
          'Subscribe for any updates',
          style: TextStyle(
            color: Color(0xFFD4AF37),
            fontSize: 28,
            fontWeight: FontWeight.w600,
          ),
        ),
        SizedBox(height: 32),

        // Email input and subscribe button
        LayoutBuilder(
          builder: (context, constraints) {
            if (constraints.maxWidth > 600) {
              return Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(width: 350, child: _buildEmailInput()),
                  SizedBox(width: 20),
                  _buildSubscribeButton(),
                ],
              );
            } else {
              return Column(
                children: [
                  _buildEmailInput(),
                  SizedBox(height: 16),
                  _buildSubscribeButton(),
                ],
              );
            }
          },
        ),
      ],
    );
  }

  Widget _buildEmailInput() {
    return Container(
      height: 56,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.white30, width: 1.5),
        borderRadius: BorderRadius.circular(12),
        color: Colors.transparent,
      ),
      child: TextField(
        controller: _emailController,
        style: TextStyle(color: Colors.white, fontSize: 16),
        decoration: InputDecoration(
          hintText: 'Your Email',
          hintStyle: TextStyle(color: Colors.white54, fontSize: 16),
          border: InputBorder.none,
          contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 16),
        ),
      ),
    );
  }

  Widget _buildSubscribeButton() {
    return Container(
      height: 56,
      child: ElevatedButton(
        onPressed: () {
          // Handle subscription
          if (_emailController.text.isNotEmpty) {
            // Process subscription
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text('Subscribed successfully!'),
                backgroundColor: Color(0xFFD4AF37),
              ),
            );
            _emailController.clear();
          }
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: Color(0xFFD4AF37),
          foregroundColor: Colors.black,
          padding: EdgeInsets.symmetric(horizontal: 40),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          elevation: 0,
        ),
        child: Text(
          'Subscribe',
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
        ),
      ),
    );
  }
}
