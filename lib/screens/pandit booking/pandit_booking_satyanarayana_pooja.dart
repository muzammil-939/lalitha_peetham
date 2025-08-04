import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:lalitha_peetham/screens/pandit%20booking/pandit_booking_layout.dart';
import 'package:lalitha_peetham/screens/pandit%20booking/pandith_contact_section.dart';
import 'package:lalitha_peetham/widgets/menu.dart';
import 'package:lalitha_peetham/widgets/reusable_responsive_type_widget.dart';

class PanditBookingSatyanarayanaPooja extends StatefulWidget {
  const PanditBookingSatyanarayanaPooja({super.key});

  @override
  State<PanditBookingSatyanarayanaPooja> createState() =>
      _PanditBookingSatyanarayanaPoojaState();
}

class _PanditBookingSatyanarayanaPoojaState
    extends State<PanditBookingSatyanarayanaPooja> {

      
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
            buildAboutInfoSection(context),
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
                "JOURNEY INTO DEVOTION: DISCOVER THE \nDEEPER PURPOSE OF GANESH POOJA",
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

Widget buildAboutInfoSection(BuildContext context) {
  final isMobile = ResponsiveHelper.isMobile(context);
  final isTablet = ResponsiveHelper.isTablet(context);

  return SizedBox(
    height: isMobile ? 600 : 550,
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
            horizontal: isMobile ? 16 : isTablet ? 40 : 150,
            vertical: isMobile ? 20 : 30,
          ),
          child: isMobile
              ? Column(
                  children: [
                    Image.asset(
                      'assets/images/pandith_booking_pooja1.png',
                      height: 200,
                      width: double.infinity,
                      fit: BoxFit.cover,
                    ),
                    SizedBox(height: 20),
                    _buildAboutTextContent(context),
                  ],
                )
              : Row(
                  children: [
                    // Left image
                    Expanded(
                      flex: 2,
                      child: ClipRRect(
                        child: Image.asset(
                          'assets/images/pandith_booking_pooja1.png',
                          height: 550,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    SizedBox(width: 50),
                    // Right text
                    Expanded(flex: 2, child: _buildAboutTextContent(context)),
                  ],
                ),
        ),
      ],
    ),
  );
}

Widget _buildAboutTextContent(BuildContext context) {
  final isMobile = ResponsiveHelper.isMobile(context);
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
      Text(
        "Discover the Spiritual \nSignificance of Satyanarayana \nPooja",
        style: TextStyle(
          fontSize: isMobile ? 18 : 24,
          fontWeight: FontWeight.bold,
          height: 1.4,
        ),
      ),
      SizedBox(height: 12),
      Text(
        "🕉️ About Satyanarayana Puja",
        style: TextStyle(
          fontSize: isMobile ? 18 : 24,
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
            color: Color(0xFFDC9323),
            borderRadius: BorderRadius.circular(30),
          ),
          child: Center(
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
  final horizontalPadding = isMobile ? 16.0 : 200.0;

    return Container(
      width: double.infinity,
    padding: EdgeInsets.symmetric(horizontal: horizontalPadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Main description paragraph
          Text(
            'Satyanarayana Puja Is A Sacred Hindu Ritual Dedicated To Lord Vishnu, Worshipped In His Truthful Form—Satyanarayana, The Lord Of Truth. Performed On Auspicious Occasions Like Purnima, Housewarmings, Weddings, Or Fulfilling Vows, The Puja Seeks Blessings For Peace, Prosperity, And Spiritual Well-Being.',
            style: TextStyle(
              fontSize: 16,
              height: 1.6,
              color: Color(0xFF2C2C2E),
              fontWeight: FontWeight.w400,
            ),
          ),

          SizedBox(height: 24),

          // Significance Of Satyanarayana Katha section
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 20,
                height: 20,
                margin: EdgeInsets.only(top: 2, right: 8),
                decoration: BoxDecoration(color: Colors.transparent),
                child: Text('📖', style: TextStyle(fontSize: 12)),
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Significance Of Satyanarayana Katha',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.w600,
                        color: Color(0xFF2C2C2E),
                        height: 1.3,
                      ),
                    ),
                    SizedBox(height: 12),
                    Text(
                      'Central To The Puja Is The Satyanarayana Katha—A Divine Story That Highlights The Power Of Truth, Faith, And Devotion. Through Tales Of Kings, Merchants, And Commoners, It Reminds Us That Sincere Worship Leads To Divine Blessings.',
                      style: TextStyle(
                        fontSize: 16,
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

          // Puja Procedure At A Glance section
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 20,
                height: 20,
                margin: EdgeInsets.only(top: 2, right: 8),
                decoration: BoxDecoration(color: Colors.transparent),
                child: Text('🙏', style: TextStyle(fontSize: 12)),
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Puja Procedure At A Glance',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.w600,
                        color: Color(0xFF2C2C2E),
                        height: 1.3,
                      ),
                    ),
                    SizedBox(height: 18),
                    _buildNumberedPoint(
                      '1.',
                      'Preparation: Clean And Decorate The Space With Flowers, Rangoli, And Puja Items.',
                    ),
                    SizedBox(height: 10),
                    _buildNumberedPoint(
                      '2.',
                      'Invocation: Chant Mantras To Invite Lord Satyanarayana\'s Presence.',
                    ),
                    SizedBox(height: 10),
                    _buildNumberedPoint(
                      '3.',
                      'Offerings: Present Fruits, Sweets, Flowers, And Devotion.',
                    ),
                    SizedBox(height: 10),
                    _buildNumberedPoint(
                      '4.',
                      'Katha Recital: Read Or Listen To The Satyanarayana Katha With Sincerity.',
                    ),
                    SizedBox(height: 10),
                    _buildNumberedPoint(
                      '5.',
                      'Aarti: Light A Lamp And Sing Praises To The Lord.',
                    ),
                    SizedBox(height: 10),
                    _buildNumberedPoint(
                      '6.',
                      'Prasad: Distribute The Sacred Offerings To All.',
                    ),
                  ],
                ),
              ),
            ],
          ),

          SizedBox(height: 28),

          // Why Perform The Puja? section
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 20,
                height: 20,
                margin: EdgeInsets.only(top: 2, right: 8),
                decoration: BoxDecoration(color: Colors.transparent),
                child: Text('⭐', style: TextStyle(fontSize: 12)),
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Why Perform The Puja?',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.w600,
                        color: Color(0xFF2C2C2E),
                        height: 1.3,
                      ),
                    ),
                    SizedBox(height: 12),
                    Text(
                      'This Puja Is Believed To Remove Obstacles, Attract Positive Energy, And Promote Harmony And Happiness. Open To All, Regardless Of Religion Or Background, It\'s A Moment Of Spiritual Unity And Divine Connection.',
                      style: TextStyle(
                        fontSize: 16,
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

          // Conclusion section
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 20,
                height: 20,
                margin: EdgeInsets.only(top: 2, right: 8),
                decoration: BoxDecoration(color: Colors.transparent),
                child: Text('🛕', style: TextStyle(fontSize: 12)),
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Conclusion',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.w600,
                        color: Color(0xFF2C2C2E),
                        height: 1.3,
                      ),
                    ),
                    SizedBox(height: 12),
                    Text(
                      'Satyanarayana Puja is not just a ritual—it\'s a celebration of truth, devotion, and divine grace. A timeless tradition that strengthens families, uplifts communities, and brings light to our lives.',
                      style: TextStyle(
                        fontSize: 16,
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

  Widget _buildNumberedPoint(String number, String text) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          width: 20,
          child: Text(
            number,
            style: TextStyle(
              fontSize: 16,
              height: 1.6,
              color: Color(0xFF2C2C2E),
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        SizedBox(width: 4),
        Expanded(
          child: Text(
            text,
            style: TextStyle(
              fontSize: 16,
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
  final horizontalPadding = isMobile ? 16.0 : 200.0;
  final verticalPadding = isMobile ? 40.0 : 100.0;

    return Container(
      width: double.infinity,
       padding: EdgeInsets.symmetric(horizontal: horizontalPadding, vertical: verticalPadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // FAQ Header
          const Text(
            'SATYANARAYAN PUJA- FAQS ',
            style: TextStyle(
              fontSize: 32,
              fontWeight: FontWeight.bold,
              color: Color(0xffD9B002),
              height: 1.2,
            ),
          ),

          const SizedBox(height: 48),

          // FAQ Items
          Column(
            children: [
              _buildFAQItem('What is Satyanarayana Pooja?'),
              const SizedBox(height: 16),
              _buildFAQItem('When should Satyanarayana Pooja be performed?'),
              const SizedBox(height: 16),
              _buildFAQItem('Who can perform Satyanarayana Pooja?'),
              const SizedBox(height: 16),
              _buildFAQItem('What items are needed for the pooja?'),
              const SizedBox(height: 16),
              _buildFAQItem('How long does the pooja take?'),
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
