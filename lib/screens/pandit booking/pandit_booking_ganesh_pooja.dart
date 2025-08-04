import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:lalitha_peetham/screens/pandit%20booking/pandit_booking_layout.dart';
import 'package:lalitha_peetham/screens/pandit%20booking/pandith_contact_section.dart';
import 'package:lalitha_peetham/widgets/menu.dart';
import 'package:lalitha_peetham/widgets/reusable_responsive_type_widget.dart';

class PanditBookingGaneshPooja extends StatefulWidget {
  const PanditBookingGaneshPooja({super.key});

  @override
  State<PanditBookingGaneshPooja> createState() =>
      _PanditBookingGaneshPoojaState();
}

class _PanditBookingGaneshPoojaState extends State<PanditBookingGaneshPooja> {

      void _openMenu(BuildContext context) {
    Navigator.push(
      context,
      PageRouteBuilder(
        pageBuilder: (context, animation, _) => DropdownGridMenu(),
        transitionDuration: const Duration(milliseconds: 300),
        transitionsBuilder:
            (context, animation, _, child) =>
                FadeTransition(opacity: animation, child: child),
        opaque: false,
      ),
    );
  }
  
  @override
  Widget build(BuildContext context) {
    return PanditBookingLayout(
      child: SingleChildScrollView(
        child: Column(
          children: [
            buildherosection(),
            SizedBox(height: 80),
            buildAboutInfoSection(),
            SizedBox(height: 80),
            _buildAboutInfo(),
            SizedBox(height: 100),
            PandithContactSection(),
            buildPanditBookingFaqWid(),
          ],
        ),
      ),
    );
  }

   Widget buildherosection() {
      final size = MediaQuery.of(context).size;
    final isMediumScreen = size.width > 800;
    final isSmallScreen = size.width < 600;
    final isVerySmallScreen = size.width < 400;
    

    double getMenuIconSize() {
      if (isVerySmallScreen) return 24;
      if (isSmallScreen) return 26;
      if (isMediumScreen) return 28;
      return 30;
    }

    double getMenuFontSize() {
      if (isVerySmallScreen) return 18;
      if (isSmallScreen) return 20;
      if (isMediumScreen) return 22;
      return 24;
    }

    double getMenuLetterSpacing() {
      if (isVerySmallScreen) return 1;
      if (isSmallScreen) return 1.5;
      return 2;
    }

        double getMenuWidth() {
      if (isVerySmallScreen) return 200;
      if (isSmallScreen) return 250;
      return 300;
    }

    return Stack(
      alignment: Alignment.center,
      children: [
        Image.asset(
          'assets/images/vastupooja1.png',
          width: double.infinity,
          height: 600,
          fit: BoxFit.cover,
        ),
                // Menu button positioned at top
          Positioned(
            top: 40,
            left: 0,
            right: 0,
            child: Center(
              child: GestureDetector(
                onTap: () => _openMenu(context),
                child: SizedBox(
                  width: getMenuWidth(),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.menu,
                        color: Colors.white,
                        size: getMenuIconSize(),
                      ),
                      SizedBox(width: isVerySmallScreen ? 6 : 8),
                      Text(
                        'MENU',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: getMenuFontSize(),
                          fontWeight: FontWeight.w600,
                          letterSpacing: getMenuLetterSpacing(),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        Positioned(
          top: 120,
          child: Column(
            children: [
              Text(
                "JOURNEY INTO DEVOTION: DISCOVER THE \nDEEPER PURPOSE OF SATYANARAYANA POOJA",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: ResponsiveFontsize.fontSize(
                    context, mobile: 20, tablet: 30, desktop: 45),
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
        Positioned(
          bottom: 20,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(0),
            child: Image.asset(
              'assets/images/pandit_booking_home.png',
              height: 180,
              width: 280,
              fit: BoxFit.cover,
            ),
          ),
        ),
      ],
    );
  }


 Widget buildAboutInfoSection() {
  final isMobile = ResponsiveHelper.isMobile(context);
  final isTablet = ResponsiveHelper.isTablet(context);
  final isDesktop = ResponsiveHelper.isDesktop(context);
  final screenWidth = ResponsiveHelper.screenWidth(context);

  return SizedBox(
    height: isMobile ? 650 : 550,
    child: Stack(
      children: [
        Positioned.fill(
          child: Image.asset(
            'assets/images/vastupooja4.png',
            fit: BoxFit.cover,
          ),
        ),

        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: isMobile
                ? 16
                : isTablet
                    ? 48
                    : 150,
            vertical: isMobile ? 20 : 30,
          ),
          child: isMobile
              ? Column(
                  children: [
                    ClipRRect(
                      child: Image.asset(
                        'assets/images/pandith_booking_pooja2.png',
                        height: 200,
                        fit: BoxFit.cover,
                      ),
                    ),
                    const SizedBox(height: 20),
                    _buildAboutTextContent(isMobile),
                  ],
                )
              : Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      flex: 2,
                      child: ClipRRect(
                        child: Image.asset(
                          'assets/images/pandith_booking_pooja2.png',
                          height: 550,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    const SizedBox(width: 50),
                    Expanded(
                      flex: 2,
                      child: _buildAboutTextContent(isMobile),
                    ),
                  ],
                ),
        ),
      ],
    ),
  );
}

Widget _buildAboutTextContent(bool isMobile) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
      Text(
        "The Power and Purpose of\nWorshipping Lord Ganesha",
        style: TextStyle(
          fontSize: isMobile ? 20 : 24,
          fontWeight: FontWeight.bold,
          height: 1.4,
        ),
      ),
      SizedBox(height: 12),
      Text(
        "🐘 About Ganesh Puja",
        style: TextStyle(
          fontSize: isMobile ? 20 : 24,
          fontWeight: FontWeight.bold,
          height: 1.4,
        ),
      ),
      SizedBox(height: 20),
      GestureDetector(
        onTap: () => context.go('/pandit_booking_packages'),
        child: Container(
          width: isMobile ? double.infinity : 300,
          height: 60,
          decoration: BoxDecoration(
            color: const Color(0xFFDC9323),
            borderRadius: BorderRadius.circular(30),
          ),
          child: const Center(
            child: Text(
              'View Packages',
              style: TextStyle(
                color: Color(0xFF000000),
                fontSize: 16,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ),
      ),
    ],
  );
}

 
  Widget _buildAboutInfo() {
  final isMobile = ResponsiveHelper.isMobile(context);
  final isTablet = ResponsiveHelper.isTablet(context);

  return Container(
    width: double.infinity,
    padding: EdgeInsets.symmetric(
      horizontal: isMobile
          ? 16
          : isTablet
              ? 80
              : 200,
    ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Main description paragraph
          Text(
            'Ganesh Puja Is A Revered Hindu Ritual Dedicated To Lord Ganapati, The Elephant-Headed Deity Known As The Remover Of Obstacles And Lord Of Wisdom. Worshipped Before All Beginnings, Lord Ganapati Symbolizes Clarity, Intellect, And Success.',
            style: TextStyle(
              fontSize: 14,
              height: 1.6,
              color: Color(0xFF2C2C2E),
              fontWeight: FontWeight.w400,
            ),
          ),

          SizedBox(height: 24),

          // A Glimpse Into Ganapati's Glory section
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 16,
                height: 16,
                margin: EdgeInsets.only(top: 2, right: 8),
                decoration: BoxDecoration(
                  color: Color(0xFFB5956C),
                  borderRadius: BorderRadius.circular(2),
                ),
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'A Glimpse Into Ganapati\'s Glory',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                        color: Color(0xFF2C2C2E),
                        height: 1.3,
                      ),
                    ),
                    SizedBox(height: 12),
                    Text(
                      'Born Of Goddess Parvati And Brought To Life With Divine Energy, Lord Ganapati Is The Guardian Of New Ventures And The Guide For Students, Artists, And Seekers. His Presence Is Invoked At The Start Of Any Journey, Ritual, Or Celebration.',
                      style: TextStyle(
                        fontSize: 14,
                        height: 1.6,
                        color: Color(0xFF2C2C2E),
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),

          SizedBox(height: 28),

          // Core Rituals In Ganesh Puja section
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 16,
                height: 16,
                margin: EdgeInsets.only(top: 2, right: 8),
                decoration: BoxDecoration(
                  color: Color(0xFFE6D5B7),
                  borderRadius: BorderRadius.circular(2),
                ),
                child: Icon(
                  Icons.auto_awesome_outlined,
                  size: 12,
                  color: Color(0xFFB5956C),
                ),
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Core Rituals In Ganesh Puja',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                        color: Color(0xFF2C2C2E),
                        height: 1.3,
                      ),
                    ),
                    SizedBox(height: 16),
                    _buildBulletPoint(
                      'Pranapratishtha: Inviting Lord Ganapati Into The Idol.',
                    ),
                    SizedBox(height: 8),
                    _buildBulletPoint(
                      'Shodashopachara: Sixteen-Step Worship With Offerings And Mantras.',
                    ),
                    SizedBox(height: 8),
                    _buildBulletPoint(
                      'Ganapati Atharvashirsha: A Sacred Chant That Invokes His Grace.',
                    ),
                    SizedBox(height: 8),
                    _buildBulletPoint(
                      'Modak Offering: His Favorite Sweet, Offered With Devotion.',
                    ),
                    SizedBox(height: 8),
                    _buildBulletPoint(
                      'Visarjan: Immersing The Idol In Water, Symbolizing Release And Renewal.',
                    ),
                  ],
                ),
              ),
            ],
          ),

          SizedBox(height: 28),

          // Why Ganesh Puja Matters section
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 16,
                height: 16,
                margin: EdgeInsets.only(top: 2, right: 8),
                decoration: BoxDecoration(color: Colors.transparent),
                child: Text('⭐', style: TextStyle(fontSize: 12)),
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Why Ganesh Puja Matters',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                        color: Color(0xFF2C2C2E),
                        height: 1.3,
                      ),
                    ),
                    SizedBox(height: 16),
                    Text(
                      'Removes Obstacles In Life And Work.',
                      style: TextStyle(
                        fontSize: 14,
                        height: 1.6,
                        color: Color(0xFF2C2C2E),
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    SizedBox(height: 4),
                    Text(
                      'Boosts Knowledge And Memory For Learners.',
                      style: TextStyle(
                        fontSize: 14,
                        height: 1.6,
                        color: Color(0xFF2C2C2E),
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    SizedBox(height: 4),
                    Text(
                      'Inspires Creativity Among Artists And Thinkers.',
                      style: TextStyle(
                        fontSize: 14,
                        height: 1.6,
                        color: Color(0xFF2C2C2E),
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    SizedBox(height: 4),
                    Text(
                      'Guides Spiritual Growth Through Devotion And Reflection.',
                      style: TextStyle(
                        fontSize: 14,
                        height: 1.6,
                        color: Color(0xFF2C2C2E),
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),

          SizedBox(height: 28),

          // In Essence section
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 16,
                height: 16,
                margin: EdgeInsets.only(top: 2, right: 8),
                decoration: BoxDecoration(color: Colors.transparent),
                child: Text('🛕', style: TextStyle(fontSize: 12)),
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'In Essence',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                        color: Color(0xFF2C2C2E),
                        height: 1.3,
                      ),
                    ),
                    SizedBox(height: 12),
                    Text(
                      'Ganesh Puja is more than tradition—it\'s a powerful spiritual connection. In his form, devotees find strength, wisdom, and the courage to begin anew. With his blessings, every path becomes clearer, every challenge more conquerable.',
                      style: TextStyle(
                        fontSize: 14,
                        height: 1.6,
                        color: Color(0xFF2C2C2E),
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildBulletPoint(String text) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: 4,
          height: 4,
          margin: EdgeInsets.only(top: 8, right: 12),
          decoration: BoxDecoration(
            color: Color(0xFF2C2C2E),
            shape: BoxShape.circle,
          ),
        ),
        Expanded(
          child: Text(
            text,
            style: TextStyle(
              fontSize: 14,
              height: 1.6,
              color: Color(0xFF2C2C2E),
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
      ],
    );
  }

 Widget buildPanditBookingFaqWid() {
  final isMobile = ResponsiveHelper.isMobile(context);
  final isTablet = ResponsiveHelper.isTablet(context);

  return Container(
    width: double.infinity,
    padding: EdgeInsets.symmetric(
      horizontal: isMobile
          ? 16
          : isTablet
              ? 80
              : 200,
      vertical: isMobile ? 60 : 100,
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'GANESHA PUJA- FAQS ',
          style: TextStyle(
            fontSize: isMobile ? 24 : 32,
            fontWeight: FontWeight.bold,
            color: const Color(0xffD9B002),
            height: 1.2,
          ),
        ),
        const SizedBox(height: 48),
        Column(
          children: [
            _buildFAQItem('What is the significance of Ganesh Pooja?'),
            const SizedBox(height: 16),
            _buildFAQItem('When is the best time to perform Ganesh Pooja?'),
            const SizedBox(height: 16),
            _buildFAQItem('What items are required for Ganesh Pooja?'),
            const SizedBox(height: 16),
            _buildFAQItem('Can I perform Ganesh Pooja at home by myself?'),
            const SizedBox(height: 16),
            _buildFAQItem('What is the significance of the ganesha Katha?'),
          ],
        ),
      ],
    ),
  );
}

  Widget _buildFAQItem(String question) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: const Color(0xFFF0E8BD),
        borderRadius: BorderRadius.circular(8),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 25),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Text(
              question,
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
                color: Colors.black,
                height: 1.4,
              ),
            ),
          ),
          const Icon(Icons.keyboard_arrow_down, color: Colors.black, size: 24),
        ],
      ),
    );
  }
}
