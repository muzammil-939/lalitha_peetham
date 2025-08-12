import 'package:flutter/material.dart';
import 'package:lalitha_peetham/screens/matrimony/matches/matches_header_layout.dart';
import 'package:lalitha_peetham/screens/matrimony/matches/partner_preference_widget.dart';
import 'package:lalitha_peetham/widgets/reusable_responsive_type_widget.dart';

class TdyMatches extends StatefulWidget {
  const TdyMatches({super.key});

  @override
  State<TdyMatches> createState() => _TdyMatchesState();
}

class _TdyMatchesState extends State<TdyMatches> {
  int selectedTab = 0;

  @override
  Widget build(BuildContext context) {
    final isMobile = ResponsiveHelper.isMobile(context);
    final isTablet = ResponsiveHelper.isTablet(context);
    final isDesktop = ResponsiveHelper.isDesktop(context);

    // responsive values
    final horizontalPadding = isMobile ? 12.0 : isTablet ? 28.0 : 150.0;
    final containerMargin = isMobile ? 8.0 : 16.0;
    final photoColumnWidth = isMobile ? double.infinity : (isTablet ? 220.0 : 250.0);
    final photoHeight = isMobile ? 220.0 : isTablet ? 260.0 : 280.0;
    final photoWidth = photoColumnWidth == double.infinity ? double.infinity : photoColumnWidth - 20;
    final cardBorderRadius = isMobile ? 10.0 : 12.0;
    final cardPadding = isMobile ? 12.0 : 20.0;
    final gapBetween = isMobile ? 12.0 : 20.0;
    final headerFont = isMobile ? 14.0 : 16.0;
    final titleFont = isMobile ? 12.0 : 14.0;
    final smallFont = isMobile ? 10.0 : 12.0;
    final pillFont = isMobile ? 10.0 : 12.0;
    final iconSizeSmall = isMobile ? 12.0 : 14.0;
    final verifiedBadgePaddingV = isMobile ? 10.0 : 12.0;
    final verifiedBadgePaddingH = isMobile ? 14.0 : 20.0;
    final starIconSize = isMobile ? 18.0 : 22.0;

    return MatchesHeaderLayout(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: horizontalPadding),
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            children: [
              SizedBox(height: isMobile ? 10 : 20),
              // header text
              Container(
                padding: EdgeInsets.symmetric(
                  vertical: isMobile ? 10 : 16,
                  horizontal: isMobile ? 10 : 20,
                ),
                child: Text(
                  'New Members Who Match Most Of Your Preferences',
                  style: TextStyle(
                    fontSize: headerFont,
                    fontWeight: FontWeight.w500,
                    color: Colors.grey[600],
                  ),
                  textAlign: TextAlign.center,
                ),
              ),

              // main card (photo + details)
              Container(
                margin: EdgeInsets.all(containerMargin),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(cardBorderRadius),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black12,
                      blurRadius: isMobile ? 6 : 8,
                      offset: const Offset(0, 2),
                    ),
                  ],
                ),
                child: isMobile
                    ? Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // photo section on top for mobile
                          _buildPhotoSection(
                            photoHeight,
                            photoWidth,
                            cardBorderRadius,
                            starIconSize,
                            verifiedBadgePaddingV,
                            verifiedBadgePaddingH,
                            isMobile,
                          ),
                          // details below
                          Container(
                            padding: EdgeInsets.all(cardPadding),
                            decoration: BoxDecoration(
                              color: const Color(0xFFF5F1E8),
                              borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(cardBorderRadius),
                                bottomRight: Radius.circular(cardBorderRadius),
                              ),
                            ),
                            child: _buildDetailsColumn(
                              selectedTab,
                              titleFont,
                              smallFont,
                              pillFont,
                              iconSizeSmall,
                            ),
                          ),
                        ],
                      )
                    : Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // left photo column
                          Container(
                            width: photoColumnWidth,
                            margin: EdgeInsets.only(right: gapBetween),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(cardBorderRadius),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black12,
                                  blurRadius: 6,
                                  offset: const Offset(0, 2),
                                ),
                              ],
                            ),
                            child: _buildPhotoSection(
                              photoHeight,
                              photoWidth,
                              cardBorderRadius,
                              starIconSize,
                              verifiedBadgePaddingV,
                              verifiedBadgePaddingH,
                              isMobile,
                            ),
                          ),

                          // right details column
                          Expanded(
                            child: Container(
                              padding: EdgeInsets.all(cardPadding),
                              decoration: BoxDecoration(
                                color: const Color(0xFFF5F1E8),
                                borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(cardBorderRadius),
                                  bottomRight: Radius.circular(cardBorderRadius),
                                ),
                              ),
                              child: _buildDetailsColumn(
                                selectedTab,
                                titleFont,
                                smallFont,
                                pillFont,
                                iconSizeSmall,
                              ),
                            ),
                          ),
                        ],
                      ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildPhotoSection(
    double photoHeight,
    double photoWidth,
    double cardBorderRadius,
    double starIconSize,
    double verifiedBadgePaddingV,
    double verifiedBadgePaddingH,
    bool isMobile,
  ) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.all(isMobile ? 12 : 16),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(cardBorderRadius),
            boxShadow: [
              BoxShadow(
                color: Colors.black26,
                blurRadius: isMobile ? 4 : 6,
                offset: const Offset(0, 3),
              ),
            ],
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(cardBorderRadius),
            child: Stack(
              children: [
                Container(
                  height: photoHeight,
                  width: double.infinity,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage(
                        'https://images.unsplash.com/photo-1507003211169-0a1dd7228f2d?w=400&h=600&fit=crop&crop=face',
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Positioned(
                  top: 8,
                  right: 8,
                  child: Container(
                    padding: EdgeInsets.all(isMobile ? 6 : 8),
                    decoration: const BoxDecoration(
                      color: Color(0xFFFFD700),
                      shape: BoxShape.circle,
                    ),
                    child: Icon(
                      Icons.star,
                      color: Colors.white,
                      size: starIconSize,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),

        // Verified badge
        Container(
          margin: EdgeInsets.symmetric(horizontal: isMobile ? 12 : 16),
          padding: EdgeInsets.symmetric(
            vertical: verifiedBadgePaddingV,
            horizontal: verifiedBadgePaddingH,
          ),
          decoration: BoxDecoration(
            color: const Color(0xFFFFD700),
            borderRadius: BorderRadius.circular(8),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.verified, color: Colors.white, size: isMobile ? 14 : 16),
              SizedBox(width: isMobile ? 6 : 8),
              Text(
                'Verified Profile',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w600,
                  fontSize: isMobile ? 12 : 12,
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: isMobile ? 8 : 12),
      ],
    );
  }

 Widget _buildDetailsColumn(
  int selectedTabParam,
  double titleFont,
  double smallFont,
  double pillFont,
  double iconSizeSmall,
) {
  // Use a scroll view so inner interactive widgets receive gestures and the area doesn't overflow.
  return SingleChildScrollView(
    physics: const BouncingScrollPhysics(),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        
        Row(
          children: [
            _tabButton('Detailed Profile', 0, titleFont),
            SizedBox(width: 12),
            _tabButton('Partner Preferences', 1, titleFont),
          ],
        ),

        SizedBox(height: 20),

        
        if (selectedTab == 0) ...[
          _buildSection('ABOUT KISHORE', [
            _buildPill('Id4567842638', pillFont),
            _buildPill('Profile Managed By Parent', pillFont),
          ], titleFont),

          _buildSection('HOBBIES & INTEREST', [
            _buildPill('Cooking', pillFont),
            _buildPill('Dancing', pillFont),
            _buildPill('Movies', pillFont),
            _buildPill('Sports', pillFont),
            _buildPill('Travelling', pillFont),
          ], titleFont),

          _buildContactSection(smallFont, iconSizeSmall, titleFont),
          _buildLifeStyleSection(titleFont, smallFont),
          _buildBackgroundSection(smallFont, titleFont),
          _buildHoroscopeSection(smallFont),
          _buildFamilySection(smallFont),
          _buildEducationSection(smallFont),
        ] else ...[
          
          PartnerPreferencesWidget(),
          SizedBox(height: 12),
        ],
      ],
    ),
  );
}


 Widget _tabButton(String label, int tabIndex, double font) {
  final bool active = tabIndex == selectedTab;
  return GestureDetector(
    behavior: HitTestBehavior.opaque,
    onTap: () {
      if (selectedTab != tabIndex) {
        setState(() => selectedTab = tabIndex);
      }
    },
    child: Container(
      padding: EdgeInsets.symmetric(horizontal: 14, vertical: 8),
      decoration: BoxDecoration(
        color: active ? const Color(0xFFD4B08A) : Colors.transparent,
        borderRadius: BorderRadius.circular(6),
      ),
      child: Text(
        label,
        style: TextStyle(
          fontSize: font,
          fontWeight: FontWeight.w600,
          color: active ? Colors.white : Colors.grey[600],
        ),
      ),
    ),
  );
}


  Widget _buildSection(String title, List<Widget> content, double titleFont) {
    return Container(
      margin: const EdgeInsets.only(bottom: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Container(
                width: 44,
                height: 44,
                decoration: BoxDecoration(
                  border: Border.all(color: const Color(0xFFD4B08A), width: 2),
                  shape: BoxShape.circle,
                ),
                child: Icon(
                  Icons.format_quote,
                  size: 28,
                  color: const Color(0xFFD4B08A),
                ),
              ),
              const SizedBox(width: 10),
              Text(
                title,
                style: TextStyle(
                  fontSize: titleFont,
                  fontWeight: FontWeight.w600,
                  color: const Color(0xFFD4B08A),
                  letterSpacing: 0.5,
                ),
              ),
            ],
          ),
          const SizedBox(height: 10),
          Wrap(spacing: 6, runSpacing: 6, children: content),
        ],
      ),
    );
  }

  Widget _buildPill(String text, double font) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey[400]!),
        borderRadius: BorderRadius.circular(16),
        color: Colors.white.withOpacity(0.8),
      ),
      child: Text(
        text,
        style: TextStyle(fontSize: font, color: Colors.grey[600]),
      ),
    );
  }

  Widget _buildContactSection(double smallFont, double iconSize, double titleFont) {
    return Container(
      margin: const EdgeInsets.only(bottom: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Container(
                width: 44,
                height: 44,
                decoration: BoxDecoration(
                  border: Border.all(color: const Color(0xFFD4B08A), width: 2),
                  shape: BoxShape.circle,
                ),
                child: Icon(
                  Icons.format_quote,
                  size: 28,
                  color: const Color(0xFFD4B08A),
                ),
              ),
              const SizedBox(width: 10),
              Text(
                'Contact Details',
                style: TextStyle(
                  fontSize: titleFont,
                  fontWeight: FontWeight.w600,
                  color: const Color(0xFFD4B08A),
                  letterSpacing: 0.5,
                ),
              ),
            ],
          ),
          const SizedBox(height: 10),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(children: [Icon(Icons.phone, size: iconSize, color: Colors.grey[600]), const SizedBox(width: 6), Text('Contact Number: +91 9047X XXXXX', style: TextStyle(fontSize: smallFont, color: Colors.grey[700]))]),
              const SizedBox(height: 6),
              Row(children: [Icon(Icons.email, size: iconSize, color: Colors.grey[600]), const SizedBox(width: 6), Text('Email ID: XXXXXXXXXXX@Gmail.Com', style: TextStyle(fontSize: smallFont, color: Colors.grey[700]))]),
              const SizedBox(height: 6),
              Row(children: [Icon(Icons.upgrade, size: iconSize, color: Colors.grey[600]), const SizedBox(width: 6), Text('Upgrade Now To View Details', style: TextStyle(fontSize: smallFont, color: Colors.grey[700]))]),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildLifeStyleSection(double titleFont, double smallFont) {
    return Container(
      margin: const EdgeInsets.only(bottom: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Container(
                width: 44,
                height: 44,
                decoration: BoxDecoration(
                  border: Border.all(color: const Color(0xFFD4B08A), width: 2),
                  shape: BoxShape.circle,
                ),
                child: Icon(
                  Icons.format_quote,
                  size: 28,
                  color: const Color(0xFFD4B08A),
                ),
              ),
              const SizedBox(width: 10),
              Text(
                'Life Style',
                style: TextStyle(
                  fontSize: titleFont,
                  fontWeight: FontWeight.w600,
                  color: const Color(0xFFD4B08A),
                  letterSpacing: 0.5,
                ),
              ),
            ],
          ),
          const SizedBox(height: 10),
          Container(
            width: ResponsiveHelper.isMobile(context) ? 80 : 120,
            height: 50,
            decoration: BoxDecoration(
              color: Colors.grey[300],
              borderRadius: BorderRadius.circular(4),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildBackgroundSection(double smallFont, double titleFont) {
    return Container(
      margin: const EdgeInsets.only(bottom: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Container(
                width: 44,
                height: 44,
                decoration: BoxDecoration(
                  border: Border.all(color: const Color(0xFFD4B08A), width: 2),
                  shape: BoxShape.circle,
                ),
                child: Icon(
                  Icons.format_quote,
                  size: 28,
                  color: const Color(0xFFD4B08A),
                ),
              ),
              const SizedBox(width: 10),
              Text(
                'Background',
                style: TextStyle(
                  fontSize: titleFont,
                  fontWeight: FontWeight.w600,
                  color: const Color(0xFFD4B08A),
                  letterSpacing: 0.5,
                ),
              ),
            ],
          ),
          const SizedBox(height: 10),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(children: [Icon(Icons.person, size: 12, color: Colors.grey[600]), const SizedBox(width: 6), Text('Hindu, Tamil', style: TextStyle(fontSize: smallFont, color: Colors.grey[700]))]),
              const SizedBox(height: 6),
              Row(children: [Icon(Icons.group, size: 12, color: Colors.grey[600]), const SizedBox(width: 6), Text('Vellalar, Sozhiya Vellalar', style: TextStyle(fontSize: smallFont, color: Colors.grey[700]))]),
              const SizedBox(height: 6),
              Row(children: [Icon(Icons.location_on, size: 12, color: Colors.grey[600]), const SizedBox(width: 6), Text('Lives In Pattukottai, Tamilnadu, India', style: TextStyle(fontSize: smallFont, color: Colors.grey[700]))]),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildHoroscopeSection(double smallFont) {
    return Container(
      margin: const EdgeInsets.only(bottom: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Container(
                width: 44,
                height: 44,
                decoration: BoxDecoration(
                  border: Border.all(color: const Color(0xFFD4B08A), width: 2),
                  shape: BoxShape.circle,
                ),
                child: Icon(
                  Icons.format_quote,
                  size: 28,
                  color: const Color(0xFFD4B08A),
                ),
              ),
              const SizedBox(width: 10),
              Text(
                'Horoscope Details',
                style: TextStyle(
                  fontSize: 11,
                  fontWeight: FontWeight.w600,
                  color: const Color(0xFFD4B08A),
                  letterSpacing: 0.5,
                ),
              ),
            ],
          ),
          const SizedBox(height: 10),
          Container(
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: Colors.white.withOpacity(0.8),
              borderRadius: BorderRadius.circular(6),
              border: Border.all(color: Colors.grey[300]!),
            ),
            child: Column(
              children: [
                Icon(Icons.hourglass_empty, size: 20, color: Colors.grey[400]),
                const SizedBox(height: 6),
                Text(
                  'For The Common Interest Of Members, Quickly',
                  style: TextStyle(fontSize: smallFont, color: Colors.grey[500]),
                  textAlign: TextAlign.center,
                ),
                Text(
                  'Enter Your Astro Details & Unhide His Info.',
                  style: TextStyle(fontSize: smallFont, color: Colors.grey[500]),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 8),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 5),
                  decoration: BoxDecoration(
                    color: const Color(0xFFD4B08A),
                    borderRadius: BorderRadius.circular(4),
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        'Add My Details',
                        style: TextStyle(
                          fontSize: 10,
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      const SizedBox(width: 3),
                      Icon(
                        Icons.keyboard_arrow_down,
                        size: 12,
                        color: Colors.white,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildFamilySection(double smallFont) {
    return Container(
      margin: const EdgeInsets.only(bottom: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Container(
                width: 44,
                height: 44,
                decoration: BoxDecoration(
                  border: Border.all(color: const Color(0xFFD4B08A), width: 2),
                  shape: BoxShape.circle,
                ),
                child: Icon(
                  Icons.format_quote,
                  size: 28,
                  color: const Color(0xFFD4B08A),
                ),
              ),
              const SizedBox(width: 10),
              Text(
                'Family Details',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: const Color(0xFFD4B08A),
                  letterSpacing: 0.5,
                ),
              ),
            ],
          ),
          const SizedBox(height: 10),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Father Runs A Business', style: TextStyle(fontSize: smallFont, color: Colors.grey[700])),
              const SizedBox(height: 4),
              Text('Mother Is Employed', style: TextStyle(fontSize: smallFont, color: Colors.grey[700])),
              const SizedBox(height: 4),
              Text('1 Brother', style: TextStyle(fontSize: smallFont, color: Colors.grey[700])),
              const SizedBox(height: 4),
              Row(children: [Icon(Icons.location_on, size: 12, color: Colors.grey[600]), const SizedBox(width: 6), Text('Tamil Nadu, India', style: TextStyle(fontSize: smallFont, color: Colors.grey[700]))]),
              const SizedBox(height: 4),
              Text('Family Financial Status', style: TextStyle(fontSize: smallFont, color: Colors.grey[700])),
              const SizedBox(height: 4),
              Text('High - Annual Family Income Is 30 - 70 Lakhs', style: TextStyle(fontSize: smallFont, color: Colors.grey[700])),
              const SizedBox(height: 6),
              Text('Show More', style: TextStyle(fontSize: smallFont, color: const Color(0xFFD4B08A), fontWeight: FontWeight.w600)),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildEducationSection(double smallFont) {
    return Container(
      margin: const EdgeInsets.only(bottom: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Container(
                width: 44,
                height: 44,
                decoration: BoxDecoration(
                  border: Border.all(color: const Color(0xFFD4B08A), width: 2),
                  shape: BoxShape.circle,
                ),
                child: Icon(
                  Icons.format_quote,
                  size: 28,
                  color: const Color(0xFFD4B08A),
                ),
              ),
              const SizedBox(width: 10),
              Text(
                'Education & Career',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: const Color(0xFFD4B08A),
                  letterSpacing: 0.5,
                ),
              ),
            ],
          ),
          const SizedBox(height: 10),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(children: [Icon(Icons.school, size: 12, color: Colors.grey[600]), const SizedBox(width: 6), Text('Bachelor\'s Degree', style: TextStyle(fontSize: smallFont, color: Colors.grey[700]))]),
              const SizedBox(height: 6),
              Row(children: [Icon(Icons.work, size: 12, color: Colors.grey[600]), const SizedBox(width: 6), Text('Software Engineer', style: TextStyle(fontSize: smallFont, color: Colors.grey[700]))]),
              const SizedBox(height: 6),
              Row(children: [Icon(Icons.location_on, size: 12, color: Colors.grey[600]), const SizedBox(width: 6), Text('Tamil Nadu, India', style: TextStyle(fontSize: smallFont, color: Colors.grey[700]))]),
              const SizedBox(height: 6),
              Text('Annual Income: 5-10 Lakhs', style: TextStyle(fontSize: smallFont, color: Colors.grey[700])),
              const SizedBox(height: 8),
              Text('Show More', style: TextStyle(fontSize: smallFont, color: const Color(0xFFD4B08A), fontWeight: FontWeight.w600)),
            ],
          ),
        ],
      ),
    );
  }
}
