import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';
import 'package:lalitha_peetham/screens/home_screens/create_accout_page.dart';
import 'package:lalitha_peetham/screens/home_screens/welcome_screen_header.dart';
import 'package:lalitha_peetham/widgets/home_hero.dart';
import 'package:lalitha_peetham/widgets/reusable_responsive_type_widget.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            WelcomeScreenHeader(),
            buildChooseYourRole(context),
            const SizedBox(height: 30),

            // Responsive Cards Section
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: ResponsiveHelper.isMobile(context) ? 16 : 100,
              ),
              child: ResponsiveHelper.isMobile(context)
                  ? Column(
                      children: [
                        RoleCard(
                          title: "SEEKER",
                          description:
                              "Book poojas, consult astrologers, and explore our services.",
                          primaryButton: "Sign Up",
                          secondaryButton: "Log In",
                          onPrimaryPressed: () {
                          context.go('/create_account');
                          },
                          
                          onSecondaryPressed: () =>context.go('/login_options'),
                        //   print("Seeker Log In"),
                        ),
                        const SizedBox(height: 20),
                        RoleCard(
                          title: "VENDOR",
                          description:
                              "List your services, manage bookings,\nand grow your business.",
                          primaryButton: "Sign Up",
                          secondaryButton: "Log In",
                          onPrimaryPressed: () => print("Vendor Sign Up"),
                          onSecondaryPressed: () => print("Vendor Log In"),
                        ),
                        const SizedBox(height: 20),
                        RoleCard(
                          title: "ADMIN",
                          description:
                              "Monitor activities, manage users & vendors, and oversee all operations.",
                          primaryButton: "Login",
                          onPrimaryPressed: () => context.go('/admin_login_with_mail'),
                         // print("Admin Login"),
                        ),
                      ],
                    )
                  : Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Expanded(
                          child: RoleCard(
                            title: "SEEKER",
                            description:
                                "Book poojas, consult astrologers, and explore our services.",
                            primaryButton: "Sign Up",
                            secondaryButton: "Log In",
                            onPrimaryPressed: () => context.go('/create_account'),
                           //  print("Seeker Sign Up"),
                          onSecondaryPressed: () =>context.go('/login_options'),
                          ),
                        ),
                        const SizedBox(width: 20),
                        Expanded(
                          child: RoleCard(
                            title: "VENDOR",
                            description:
                                "List your services, manage bookings,\nand grow your business.",
                            primaryButton: "Sign Up",
                            secondaryButton: "Log In",
                            onPrimaryPressed: () => print("Vendor Sign Up"),
                            onSecondaryPressed: () => print("Vendor Log In"),
                          ),
                        ),
                        const SizedBox(width: 20),
                        Expanded(
                          child: RoleCard(
                            title: "ADMIN",
                            description:
                                "Monitor activities, manage users & vendors, and oversee all operations.",
                            primaryButton: "Login",
                            onPrimaryPressed: () => context.go('/admin_login_with_mail'),
                          ),
                        ),
                      ],
                    ),
            ),
            const SizedBox(height: 40),
            HomeHero(),
            const SizedBox(height: 40),
            FooterSection(),
          ],
        ),
      ),
    );
  }


  
Widget buildChooseYourRole(BuildContext context) {
  double screenWidth = ResponsiveHelper.screenWidth(context);
  double screenHeight = ResponsiveHelper.screenHeight(context);

  // 📱 For Mobile: Use Column instead of Stack
  if (ResponsiveHelper.isMobile(context)) {
    return Container(
      width: double.infinity,
      color: Colors.white,
      child: Column(
        children: [
          // Image
          Image.asset(
            "assets/images/welcome_image.png",
            width: double.infinity,
            height: screenHeight * 0.25,
            fit: BoxFit.cover,
          ),
          const SizedBox(height: 16),

          // Text
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: const [
                Text(
                  "CHOOSE YOUR ROLE TO\nGET STARTED",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.black87,
                  ),
                ),
                SizedBox(height: 12),
                Text(
                  "Select whether you’re here to offer services, manage the platform, or seek spiritual guidance. We’ll guide you to the right place.",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.black87,
                    height: 1.5,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  // 💻 For Tablet/Desktop: Use Stack with Positioned text
  return Stack(
    children: [
      Image.asset(
        "assets/images/welcome_image.png",
        width: double.infinity,
        height: screenHeight * 0.8,
        fit: BoxFit.cover,
      ),
      Positioned(
        left: 50,
        top: 80,
        child: SizedBox(
          width: 500,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text(
                "CHOOSE YOUR ROLE TO\nGET STARTED",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.black87,
                ),
              ),
              SizedBox(height: 12),
              Text(
                "Select whether you’re here to offer services, manage the platform, or seek spiritual guidance. We’ll guide you to the right place.",
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.black87,
                  height: 1.5,
                ),
              ),
            ],
          ),
        ),
      ),
    ],
  );
}

}

class RoleCard extends StatelessWidget {
  final String title;
  final String description;
  final String primaryButton;
  final String? secondaryButton;
  final VoidCallback? onPrimaryPressed;
  final VoidCallback? onSecondaryPressed;

  const RoleCard({
    super.key,
    required this.title,
    required this.description,
    required this.primaryButton,
    this.secondaryButton,
    this.onPrimaryPressed,
    this.onSecondaryPressed,
  });

  @override
  Widget build(BuildContext context) {
    double cardHeight = ResponsiveHelper.isMobile(context) ? 280 : 350;
    double titleSize = ResponsiveHelper.isMobile(context) ? 22 : 28;
    double descSize = ResponsiveHelper.isMobile(context) ? 14 : 16;

    return SizedBox(
      height: cardHeight,
      child: Card(
        elevation: 3,
        color: const Color(0xFFE0D06F),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 24, horizontal: 16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  Text(
                    title,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: titleSize,
                      color: Colors.black87,
                    ),
                  ),
                  const SizedBox(height: 12),
                  Text(
                    description,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: descSize,
                      color: Colors.black87,
                      height: 1.4,
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFFD4BB26),
                      foregroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(6),
                      ),
                    ),
                    onPressed: onPrimaryPressed,
                    child: Text(primaryButton),
                  ),
                  if (secondaryButton != null) ...[
                    const SizedBox(height: 10),
                    OutlinedButton(
                      style: OutlinedButton.styleFrom(
                        backgroundColor: Colors.white,
                        foregroundColor: Colors.black,
                        side: const BorderSide(color: Colors.black),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(6),
                        ),
                      ),
                      onPressed: onSecondaryPressed,
                      child: Text(secondaryButton!),
                    ),
                  ],
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class FooterSection extends StatelessWidget {
  const FooterSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.transparent,
      padding: const EdgeInsets.symmetric(vertical: 30),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          // Social icons
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _socialIcon(FontAwesomeIcons.facebookF),
              const SizedBox(width: 20),
              _socialIcon(FontAwesomeIcons.twitter),
              const SizedBox(width: 20),
              _socialIcon(FontAwesomeIcons.instagram),
            ],
          ),
          const SizedBox(height: 20),

          // Copyright text
          const Text(
            "© 2025 Lalitha Peetham. All rights reserved.",
            style: TextStyle(
              fontSize: 14,
              color: Colors.black, // similar brownish text
              fontWeight: FontWeight.w500,
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }

  Widget _socialIcon(IconData icon) {
    return InkWell(
      onTap: () {
       
      },
      child: Icon(
        icon,
        size: 20,
        color: const Color(0xFF5C3A32), // brownish icon color
      ),
    );
  }
}