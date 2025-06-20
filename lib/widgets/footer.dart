import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'dart:html' as html;

class FooterWidget extends StatefulWidget {
  const FooterWidget({super.key});

  @override
  _FooterWidgetState createState() => _FooterWidgetState();
}

class _FooterWidgetState extends State<FooterWidget> {
  final TextEditingController _emailController = TextEditingController();

  // Social media URLs - Replace these with your actual social media links
  final String facebookUrl =
      'https://www.facebook.com/profile.php?id=61576106333288';
  final String instagramUrl = 'https://www.instagram.com/lalithapeetham/';
  final String threadsUrl = 'https://www.threads.com/@lalithapeetham';
  final String youTube = 'https://www.youtube.com/@sreelalithapeetham-9';
  final String linkedIn =
      'https://www.linkedin.com/in/sreelalitha-peetham-6269a9363/';
  //contact
  final String emailAddress = 'mailto:booking@celestial.com';
  final String phoneNumber = 'tel:+6212345678';

  @override
  void dispose() {
    _emailController.dispose();
    super.dispose();
  }

  // Function to launch URLs - Web optimized version
  void _launchUrl(String url) {
    try {
      if (kIsWeb) {
        // For web, use window.open to open in new tab
        html.window.open(url, '_blank');
        print('Opened URL in new tab: $url');
      } else {
        // For mobile, you'd still need url_launcher
        print('Mobile platform not supported in this version');
        if (mounted) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text('Link opening not supported on this platform'),
              backgroundColor: Colors.orange,
            ),
          );
        }
      }
    } catch (e) {
      print('Error opening URL: $e');
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('Could not open link'),
            backgroundColor: Colors.red,
            duration: Duration(seconds: 2),
          ),
        );
      }
    }
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

        // Social media icons with navigation
        Row(
          children: [
            _buildSocialIcon(
              Icons.facebook,
              () => _launchUrl(facebookUrl),
              'Facebook',
            ),
            SizedBox(width: 16),
            _buildSocialIcon(
              Icons.camera_alt_outlined, // Better Instagram icon
              () => _launchUrl(instagramUrl),
              'Instagram',
            ),
            SizedBox(width: 16),
            _buildSocialIcon(
              Icons.alternate_email, // Twitter/X icon
              () => _launchUrl(threadsUrl),
              'Threads',
            ),
            SizedBox(width: 16),
            _buildSocialIcon(
              Icons.ondemand_video,
              () => _launchUrl(youTube),
              'Youtube',
            ),
            SizedBox(width: 16),
            _buildSocialIcon(
              Icons.mail_outline,
              () => _launchUrl(linkedIn),
              'Linkedin',
            ),
          ],
        ),
      ],
    );
  }

  Widget _buildSocialIcon(IconData icon, VoidCallback onTap, String tooltip) {
    return Tooltip(
      message: tooltip,
      child: GestureDetector(
        onTap: onTap,
        child: MouseRegion(
          cursor: SystemMouseCursors.click,
          child: AnimatedContainer(
            duration: Duration(milliseconds: 200),
            width: 38,
            height: 38,
            decoration: BoxDecoration(
              color: Colors.white,
              shape: BoxShape.circle,
              boxShadow: [
                BoxShadow(
                  color: Colors.black26,
                  blurRadius: 4,
                  offset: Offset(0, 2),
                ),
              ],
            ),
            child: Icon(icon, color: Colors.black, size: 18),
          ),
        ),
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
          'Services',
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
        GestureDetector(
          onTap: () => _launchUrl(emailAddress),
          child: _buildContactItem('booking@celestial.com', isClickable: true),
        ),
        SizedBox(height: 16),
        GestureDetector(
          onTap: () => _launchUrl(phoneNumber),
          child: _buildContactItem('(+62) 1234 5678', isClickable: true),
        ),
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
                // Handle navigation - you can implement your app's navigation logic here
                print('Navigate to $item');
              },
              child: MouseRegion(
                cursor: SystemMouseCursors.click,
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
          ),
        )
        .toList();
  }

  Widget _buildContactItem(String text, {bool isClickable = false}) {
    return MouseRegion(
      cursor: isClickable ? SystemMouseCursors.click : SystemMouseCursors.basic,
      child: Text(
        text,
        style: TextStyle(
          color: isClickable ? Color(0xFFD4AF37) : Colors.white70,
          fontSize: 16,
          height: 1.4,
          decoration: isClickable ? TextDecoration.underline : null,
        ),
      ),
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
