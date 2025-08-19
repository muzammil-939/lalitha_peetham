import 'package:flutter/material.dart';
import 'package:lalitha_peetham/widgets/reusable_responsive_type_widget.dart';


class HowItWorksSection extends StatelessWidget {
  const HowItWorksSection({super.key});

  @override
  Widget build(BuildContext context) {
    bool isMobile = ResponsiveHelper.isMobile(context);
    bool isTablet = ResponsiveHelper.isTablet(context);
    bool isDesktop = ResponsiveHelper.isDesktop(context);

    return Center(
      child: ConstrainedBox(
        constraints: const BoxConstraints(maxWidth: 1100),
        child: isMobile || isTablet
            ? Column( // 📱 Mobile/Tablet → stacked vertically
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _leftSide(context),
                  const SizedBox(height: 30),
                  _rightSide(context),
                ],
              )
            : Row( // 💻 Desktop → side by side
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(flex: 1, child: _leftSide(context)),
                  const SizedBox(width: 50),
                  Expanded(flex: 1, child: _rightSide(context)),
                ],
              ),
      ),
    );
  }

  /// LEFT CONTENT → Heading + Image + Play Button
  Widget _leftSide(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "SERVICES DEMO",
          style: TextStyle(
            fontSize: 12,
            letterSpacing: 2,
            color: Colors.black54,
            fontWeight: FontWeight.w500,
          ),
        ),
        const SizedBox(height: 10),
        Text(
          "HOW IT WORKS",
          style: TextStyle(
            fontSize: ResponsiveHelper.isMobile(context) ? 28 : 42,
            fontWeight: FontWeight.w900,
            fontFamily: 'Serif',
            height: 1.2,
          ),
        ),
        const SizedBox(height: 25),
        Stack(
          alignment: Alignment.center,
          children: [
           SizedBox(
      width: ResponsiveHelper.isMobile(context) ? 350 : 450,
      height: ResponsiveHelper.isMobile(context) ? 200 : 280,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(6),
        child: Image.asset(
          "assets/images/static_video.jpg",
          fit: BoxFit.cover,
        ),
      ),
    ),
            Container(
              width: ResponsiveHelper.isMobile(context) ? 45 : 55,
              height: ResponsiveHelper.isMobile(context) ? 45 : 55,
              decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.8),
                shape: BoxShape.circle,
              ),
              child: Icon(
                Icons.play_arrow,
                size: ResponsiveHelper.isMobile(context) ? 28 : 36,
                color: Colors.black87,
              ),
            ),
          ],
        ),
      ],
    );
  }

  /// RIGHT CONTENT → Description + Button
  Widget _rightSide(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 50), // aligns with image
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "2 min",
            style: TextStyle(fontSize: 12, color: Colors.grey),
          ),
          const SizedBox(height: 6),
          Text(
            "Getting started with the platform",
            style: TextStyle(
              fontSize: ResponsiveHelper.isMobile(context) ? 16 : 20,
              fontWeight: FontWeight.bold,
              height: 1.3,
            ),
          ),
          const SizedBox(height: 10),
          Text(
            "Learn how to set up your account and start using our services.",
            style: TextStyle(
              fontSize: ResponsiveHelper.isMobile(context) ? 14 : 16,
              color: Colors.black87,
              height: 1.5,
            ),
          ),
          const SizedBox(height: 25),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color(0xFFBFA12A),
              padding: const EdgeInsets.symmetric(vertical: 14, horizontal: 28),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(4),
              ),
              elevation: 0,
            ),
            onPressed: () {},
            child: const Text(
              "SEE MORE",
              style: TextStyle(
                color: Colors.white,
                fontSize: 14,
                letterSpacing: 1,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
