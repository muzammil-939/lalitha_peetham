import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:lalitha_peetham/screens/matrimony/matches/filtered_section_widget.dart';
import 'package:lalitha_peetham/screens/matrimony/matches/matches_header_layout.dart';
import 'package:lalitha_peetham/widgets/reusable_responsive_type_widget.dart'; 

class NewMatchesScreen extends StatefulWidget {
  const NewMatchesScreen({super.key});

  @override
  State<NewMatchesScreen> createState() => _NewMatchesScreenState();
}

class _NewMatchesScreenState extends State<NewMatchesScreen> {
  String selectedRefineFilter = 'All';
  String selectedPhotoFilter = 'All';
  String selectedRecentlyJoined = 'All';
  String activeMembers = 'All';
  String annualIncome = 'All';
  String marritalStatus = 'All';

  @override
  Widget build(BuildContext context) {
    final isMobile = ResponsiveHelper.isMobile(context);
    final isTablet = ResponsiveHelper.isTablet(context);
    final isDesktop = ResponsiveHelper.isDesktop(context);

    // Responsive values
    final horizontalPadding = isMobile ? 12.0 : isTablet ? 28.0 : 150.0;
    final sidebarWidth = isMobile ? double.infinity : (isTablet ? 220.0 : 250.0);
    final gapBetween = isMobile ? 12.0 : 30.0;
    final headerTopPadding = isMobile ? 12.0 : 20.0;
    final cardPadding = isMobile ? 10.0 : 12.0;
    final profileImageWidth = isMobile ? 110.0 : isTablet ? 150.0 : 180.0;
    final profileImageHeight = isMobile ? 140.0 : isTablet ? 180.0 : 200.0;
    final smallFont = isMobile ? 11.0 : 13.0;
    final regularFont = isMobile ? 12.0 : 14.0;
    final titleFont = isMobile ? 14.0 : 16.0;
    final dottedBoxWidth = isMobile ? double.infinity : 300.0;
    final dottedBoxHorizontalPadding = isMobile ? 12.0 : 35.0;
    final dottedBoxVerticalPadding = isMobile ? 16.0 : 30.0;
    final connectBtnHorizPadding = isMobile ? 14.0 : 18.0;
    final connectBtnVertPadding = isMobile ? 8.0 : 8.0;

    return MatchesHeaderLayout(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: horizontalPadding),
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: isMobile
              ? Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: headerTopPadding),
                    // Sidebar (compact on mobile)
                    _buildSidebar(context, sidebarWidth, titleFont, smallFont),
                    SizedBox(height: gapBetween),
                    // Main content
                    _buildMainArea(
                      context,
                      profileImageWidth,
                      profileImageHeight,
                      cardPadding,
                      smallFont,
                      regularFont,
                      titleFont,
                      dottedBoxWidth,
                      dottedBoxHorizontalPadding,
                      dottedBoxVerticalPadding,
                      connectBtnHorizPadding,
                      connectBtnVertPadding,
                    ),
                  ],
                )
              : Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Sidebar
                    SizedBox(
                      width: sidebarWidth,
                      child:
                          _buildSidebar(context, sidebarWidth, titleFont, smallFont),
                    ),
                    SizedBox(width: gapBetween),
                    // Main scrollable area
                    Expanded(
                      child: _buildMainArea(
                        context,
                        profileImageWidth,
                        profileImageHeight,
                        cardPadding,
                        smallFont,
                        regularFont,
                        titleFont,
                        dottedBoxWidth,
                        dottedBoxHorizontalPadding,
                        dottedBoxVerticalPadding,
                        connectBtnHorizPadding,
                        connectBtnVertPadding,
                      ),
                    ),
                  ],
                ),
        ),
      ),
    );
  }

  Widget _buildSidebar(
      BuildContext context, double width, double titleFont, double smallFont) {
    return Container(
      color: Colors.white,
      padding: const EdgeInsets.only(bottom: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          FilterSection(
            title: 'REFINE SEARCH',
            options: ['All', 'Blue Tick Profile'],
            selectedValue: selectedRefineFilter,
            onChanged: (value) => setState(() => selectedRefineFilter = value),
          ),
          FilterSection(
            title: 'PHOTO SETTINGS',
            options: ['All', 'Visible To All', 'Protected Pho...(4)'],
            selectedValue: selectedPhotoFilter,
            onChanged: (value) => setState(() => selectedPhotoFilter = value),
          ),
          FilterSection(
            title: 'RECENTLY JOINED',
            options: ['All', 'With In A Day', 'With In A Week', 'With In A Month'],
            selectedValue: selectedRecentlyJoined,
            onChanged: (value) => setState(() => selectedRecentlyJoined = value),
          ),
          FilterSection(
            title: 'ACTIVE MEMBERS',
            options: ['All', 'With In A Day', 'With In A Week', 'With In A Month'],
            selectedValue: activeMembers,
            onChanged: (value) => setState(() => activeMembers = value),
          ),
          FilterSection(
            title: 'ANNUAL INCOME',
            options: ['All', '2 To 4 Lakh', '4 To 5 Lakh', '5 To 6 Lakh'],
            selectedValue: annualIncome,
            onChanged: (value) => setState(() => annualIncome = value),
          ),
          FilterSection(
            title: 'MARRITAL STATUS',
            options: [
              'All',
              'Never Married',
              'Divorced',
              'Awaiting Divorce',
              'Widowed'
            ],
            selectedValue: marritalStatus,
            onChanged: (value) => setState(() => marritalStatus = value),
          ),
        ],
      ),
    );
  }

  Widget _buildMainArea(
    BuildContext context,
    double imgW,
    double imgH,
    double cardPadding,
    double smallFont,
    double regularFont,
    double titleFont,
    double dottedWidth,
    double dottedHPad,
    double dottedVPad,
    double connectHoriz,
    double connectVert,
  ) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(height: 8),
        Text(
          'New Members Who Match Most Of Your Preferences',
          style: TextStyle(
              fontSize: regularFont,
              color: Colors.grey,
              fontWeight: FontWeight.w500),
          textAlign: TextAlign.center,
        ),
        SizedBox(height: 18),

        // list of profile cards
        ListView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: 3,
          itemBuilder: (context, index) => _buildProfileCard(
            imgW,
            imgH,
            cardPadding,
            smallFont,
            regularFont,
            titleFont,
            dottedWidth,
            dottedHPad,
            dottedVPad,
            connectHoriz,
            connectVert,
          ),
        ),
      ],
    );
  }

  Widget _buildProfileCard(
    double imgW,
    double imgH,
    double cardPadding,
    double smallFont,
    double regularFont,
    double titleFont,
    double dottedWidth,
    double dottedHPad,
    double dottedVPad,
    double connectHoriz,
    double connectVert,
  ) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: cardPadding),
      padding: EdgeInsets.all(cardPadding),
      decoration: BoxDecoration(
        color: const Color(0xFFFFF9E4),
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: Colors.grey.shade300),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // top row: image + info
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // profile image
              Container(
                width: imgW,
                height: imgH,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(6),
                  image: const DecorationImage(
                    image: NetworkImage(
                        'https://images.unsplash.com/photo-1507003211169-0a1dd7228f2d?w=300&h=400&fit=crop'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SizedBox(width: 12),
              // info
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'SH78488320',
                      style: TextStyle(
                        fontSize: titleFont,
                        fontWeight: FontWeight.bold,
                        color: const Color(0xFFB8860B),
                      ),
                    ),
                    SizedBox(height: 6),
                    Wrap(
                      crossAxisAlignment: WrapCrossAlignment.center,
                      spacing: 8,
                      runSpacing: 4,
                      children: [
                        Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            const Icon(Icons.circle, size: 8, color: Colors.green),
                            const SizedBox(width: 4),
                            Text('Online 1h Ago', style: TextStyle(fontSize: smallFont)),
                          ],
                        ),
                        Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            const Icon(Icons.favorite_border, size: 14, color: Colors.grey),
                            const SizedBox(width: 4),
                            Text('You & Him', style: TextStyle(fontSize: smallFont, color: Colors.grey)),
                          ],
                        ),
                        Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            const Icon(Icons.star_border, size: 14, color: Colors.grey),
                            const SizedBox(width: 4),
                            Text('Astro', style: TextStyle(fontSize: smallFont, color: Colors.grey)),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(height: 10),
                    Text("28 Yrs, 5'3\"", style: TextStyle(fontSize: regularFont)),
                    Text("Tamil, Agamudayar", style: TextStyle(fontSize: regularFont)),
                    Text("Chennai, Tamil Nadu", style: TextStyle(fontSize: regularFont)),
                    Text("B.Eng (Hons)", style: TextStyle(fontSize: regularFont)),
                    Text("Occupation: Company Secretary", style: TextStyle(fontSize: regularFont)),
                  ],
                ),
              ),
            ],
          ),

          SizedBox(height: 12),

          // Description dotted box
          Center(
            child: DottedBorder(
              borderType: BorderType.RRect,
              radius: const Radius.circular(4),
              color: const Color(0xFFD4AF37),
              strokeWidth: 1,
              dashPattern: const [4, 3],
              child: Container(
                width: dottedWidth,
                color: Colors.white,
                padding: EdgeInsets.symmetric(
                  horizontal: dottedHPad,
                  vertical: dottedVPad,
                ),
                child: Text(
                  'My Son Has Completed Bachelors In Medicine At Present. I Am Working As A Doctor In ESIC(HARYANA)... More',
                  style: TextStyle(fontSize: smallFont, color: Colors.black87),
                ),
              ),
            ),
          ),

          SizedBox(height: 16),

          // Footer connect button
          Center(
            child: Column(
              children: [
                Text(
                  'LIKED THIS PROFILE?',
                  style: TextStyle(
                    fontSize: smallFont,
                    fontWeight: FontWeight.bold,
                    color: const Color(0xFFD4AF37),
                    letterSpacing: 0.5,
                  ),
                ),
                SizedBox(height: 8),
                Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: connectHoriz,
                    vertical: connectVert,
                  ),
                  decoration: BoxDecoration(
                    color: const Color(0xFFD4AF37),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: const [
                      Icon(Icons.check, color: Colors.white, size: 16),
                      SizedBox(width: 6),
                      Text(
                        'Connect Now',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                        ),
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
}
