import 'package:flutter/material.dart';
import 'package:lalitha_peetham/screens/matrimony/matches/filtered_section_widget.dart';
import 'package:lalitha_peetham/screens/matrimony/matches/matches_header_layout.dart';
import 'package:lalitha_peetham/widgets/reusable_responsive_type_widget.dart'; 

class MyMatches extends StatefulWidget {
  const MyMatches({super.key});

  @override
  State<MyMatches> createState() => _MyMatchesState();
}

class _MyMatchesState extends State<MyMatches> {
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
    // final isDesktop = ResponsiveHelper.isDesktop(context);

    // Responsive base values (inline ternaries also used inside widgets)
    final horizontalPadding = isMobile ? 12.0 : isTablet ? 28.0 : 150.0;
    final containerPadding = isMobile ? 10.0 : 16.0;
    final sidebarWidth = isMobile ? double.infinity : (isTablet ? 180.0 : 220.0);
    final gap = isMobile ? 12.0 : 16.0;
    final headerFont = isMobile ? 14.0 : 16.0;
    final smallFont = isMobile ? 11.0 : 12.0;
    final premiumImageHeight = isMobile ? 120.0 : (isTablet ? 140.0 : 150.0);
    final regularImageW = isMobile ? 90.0 : 120.0;
    final regularImageH = isMobile ? 100.0 : 140.0;

    return MatchesHeaderLayout(
      child: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Container(
          color: const Color(0xFFF5F3E7),
          padding: EdgeInsets.symmetric(horizontal: horizontalPadding, vertical: containerPadding),
          child: isMobile
              ? Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Sidebar placed above on mobile
                    SizedBox(
                      width: double.infinity,
                      child: _buildSidebar(context, sidebarWidth),
                    ),
                    SizedBox(height: gap),
                    _buildMainColumn(context, headerFont, smallFont, premiumImageHeight, regularImageW, regularImageH, gap),
                  ],
                )
              : Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // LEFT FILTER SIDEBAR
                    SizedBox(
                      width: sidebarWidth,
                      child: _buildSidebar(context, sidebarWidth),
                    ),

                    SizedBox(width: gap),

                    /// RIGHT PROFILES SECTION
                    Expanded(
                      child: _buildMainColumn(context, headerFont, smallFont, premiumImageHeight, regularImageW, regularImageH, gap),
                    ),
                  ],
                ),
        ),
      ),
    );
  }

  Widget _buildSidebar(BuildContext context, double width) {
    return Container(
      color: Colors.transparent,
      padding: EdgeInsets.only(bottom: 8),
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
            options: ['All', 'Never Married', 'Divorced', 'Awaiting Divorce', 'Widowed'],
            selectedValue: marritalStatus,
            onChanged: (value) => setState(() => marritalStatus = value),
          ),
        ],
      ),
    );
  }

  Widget _buildMainColumn(
    BuildContext context,
    double headerFont,
    double smallFont,
    double premiumImageHeight,
    double regularImageW,
    double regularImageH,
    double gap,
  ) {
    final isMobile = ResponsiveHelper.isMobile(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Header row and controls
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Members Who Match Most Of Your Preferences',
              style: TextStyle(
                fontSize: headerFont,
                fontWeight: FontWeight.bold,
                color: Colors.black87,
              ),
            ),
            SizedBox(height: isMobile ? 8 : 12),
           Wrap(
  alignment: WrapAlignment.spaceBetween,
  crossAxisAlignment: WrapCrossAlignment.center,
  runSpacing: 8, // space between lines when wrapping
  children: [
    Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        const Text(
          'Include More Matches',
          style: TextStyle(fontSize: 12, color: Colors.black87),
        ),
        const SizedBox(width: 8),
        Switch(
          value: true,
          onChanged: (val) {},
          activeColor: Color(0xFFD4AF37),
        ),
      ],
    ),
    SizedBox(width: 30,),
    Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        const Text(
          'Default Order:',
          style: TextStyle(fontSize: 12, color: Colors.black87),
        ),
        const SizedBox(width: 8),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 12),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(6),
            border: Border.all(color: Colors.grey.withOpacity(0.3)),
          ),
          child: DropdownButton<String>(
            underline: const SizedBox(),
            icon: const Icon(Icons.arrow_drop_down),
            value: 'Default Order',
            items: const [
              DropdownMenuItem(
                value: 'Default Order',
                child: Text('Default Order'),
              ),
              DropdownMenuItem(
                value: 'Newest First',
                child: Text('Newest First'),
              ),
              DropdownMenuItem(
                value: 'Most Compatible',
                child: Text('Most Compatible'),
              ),
            ],
            onChanged: (value) {},
          ),
        ),
      ],
    ),
  ],
)

          ],
        ),
        SizedBox(height: gap),

        // PREMIUM PROFILES (3 in a row on larger screens, stacked on mobile)
        isMobile
            ? Column(
                children: [
                  _buildPremiumProfileCard(context, premiumImageHeight),
                  SizedBox(height: 12),
                  _buildPremiumProfileCard(context, premiumImageHeight),
                  SizedBox(height: 12),
                  _buildPremiumProfileCard(context, premiumImageHeight),
                ],
              )
            : Row(
                children: [
                  Expanded(child: _buildPremiumProfileCard(context, premiumImageHeight)),
                  SizedBox(width: 12),
                  Expanded(child: _buildPremiumProfileCard(context, premiumImageHeight)),
                  SizedBox(width: 12),
                  Expanded(child: _buildPremiumProfileCard(context, premiumImageHeight)),
                ],
              ),

        SizedBox(height: gap),

        // REGULAR PROFILES
        _buildRegularProfileCard(context, imageAsset: null, hasPhoto: false, w: regularImageW, h: regularImageH),
        SizedBox(height: gap),
        _buildRegularProfileCard(context, imageAsset: null, hasPhoto: false, w: regularImageW, h: regularImageH),
        SizedBox(height: gap),
        _buildRegularProfileCard(context, imageAsset: null, hasPhoto: false, w: regularImageW, h: regularImageH),

        SizedBox(height: gap),

        // PAGINATION
        _buildPagination(context),
        SizedBox(height: gap),
      ],
    );
  }

  Widget _buildPremiumProfileCard(BuildContext context, double imageHeight) {
    final isMobile = ResponsiveHelper.isMobile(context);
   final double imageHeight = isMobile ? 180 : 250; 
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(isMobile ? 8 : 4),
        boxShadow: [
          BoxShadow(color: Colors.black.withOpacity(0.06), blurRadius: 8, offset: const Offset(0, 2)),
        ],
      ),
      child: Column(
        children: [
          // Profile image area
          SizedBox(
            width: double.infinity,
            height: imageHeight,
            child: ClipRRect(
              borderRadius: BorderRadius.vertical(top: Radius.circular(isMobile ? 8 : 12)),
              child: Image.asset(
                'assets/images/Logo.jpg',
                fit: BoxFit.cover,
                width: double.infinity,
                height: imageHeight,
              ),
            ),
          ),

          // crown + details
          Padding(
            padding: EdgeInsets.all(isMobile ? 10 : 12),
            child: Column(
              children: [
                Text(
                  'SHREEHARI',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: isMobile ? 13 : 14),
                ),
                SizedBox(height: isMobile ? 6 : 4),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('\$ 34', style: TextStyle(color: Colors.red, fontWeight: FontWeight.bold, fontSize: isMobile ? 11 : 12)),
                    Text('.43', style: TextStyle(color: Colors.grey, fontSize: isMobile ? 10 : 10)),
                    Text('/-min', style: TextStyle(color: Colors.grey, fontSize: isMobile ? 10 : 10)),
                  ],
                ),
                SizedBox(height: isMobile ? 8 : 10),
                Text('Vedic, Numerology, Face Reading', textAlign: TextAlign.center, style: TextStyle(fontSize: isMobile ? 10 : 10, color: Colors.grey)),
                Text('Telugu', style: TextStyle(fontSize: isMobile ? 10 : 10, color: Colors.grey)),
                Text('Exp: 9 Years', style: TextStyle(fontSize: isMobile ? 10 : 10, color: Colors.grey)),
                SizedBox(height: isMobile ? 10 : 12),

                // Connect button
                SizedBox(
                  width: double.infinity,
                  height: isMobile ? 36 : 32,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFFFFD700),
                      foregroundColor: Colors.black,
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(isMobile ? 12 : 16)),
                      textStyle: TextStyle(fontSize: isMobile ? 11 : 11, fontWeight: FontWeight.bold),
                    ),
                    child: const Text('CONNECT NOW'),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

 
 Widget _buildRegularProfileCard(BuildContext context, {String? imageAsset, required bool hasPhoto, required double w, required double h}) {
  final isMobile = ResponsiveHelper.isMobile(context);

  return Container(
    decoration: BoxDecoration(
      color: const Color(0xFFF5F3E7),
      borderRadius: BorderRadius.circular(isMobile ? 10 : 12),
      border: Border.all(color: Colors.brown.withOpacity(0.3)),
    ),
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Profile image - fixed responsive size (keeps design)
        Container(
          width: w,
          height: h,
          margin: EdgeInsets.all(isMobile ? 8 : 12),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: hasPhoto ? Colors.grey[300] : const Color(0xFFD4AF37),
          ),
          child: Stack(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: hasPhoto
                    ? Image.asset(imageAsset ?? 'assets/placeholder.png', width: w, height: h, fit: BoxFit.cover)
                    : Container(color: const Color(0xFFD4AF37)),
              ),
              if (!hasPhoto)
                Positioned(
                  bottom: 8,
                  left: 8,
                  right: 8,
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: isMobile ? 6 : 8, vertical: isMobile ? 4 : 6),
                    decoration: BoxDecoration(color: const Color(0xFFFFD700), borderRadius: BorderRadius.circular(12)),
                    child: Text('REQUEST PHOTO', textAlign: TextAlign.center, style: TextStyle(fontSize: isMobile ? 9 : 10, fontWeight: FontWeight.bold, color: Colors.black)),
                  ),
                ),
              Positioned(
                top: 8,
                right: 8,
                child: Container(padding: EdgeInsets.all(isMobile ? 4 : 6), decoration: const BoxDecoration(color: Color(0xFFFFD700), shape: BoxShape.circle), child: Icon(Icons.workspace_premium, color: Colors.white, size: isMobile ? 12 : 14)),
              ),
            ],
          ),
        ),

        // Profile details - Expanded so it can wrap and not force overflow
        Expanded(
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: isMobile ? 8 : 12, horizontal: isMobile ? 6 : 8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // --- NEW: Top row split into Expanded(details) + menu button (keeps menu at end) ---
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Make the left block take remaining width
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // ID line (ellipsis if long)
                          Text(
                            'LP78488320',
                            style: TextStyle(color: const Color(0xFFD4AF37), fontWeight: FontWeight.bold, fontSize: isMobile ? 14 : 16),
                            overflow: TextOverflow.ellipsis,
                          ),
                          const SizedBox(height: 4),
                          // Note: small status row follows below; keeping it in column ensures it wraps under ID if needed
                        ],
                      ),
                    ),

                    // Menu button always at the end
                    PopupMenuButton(
                      icon: Icon(Icons.more_vert, size: isMobile ? 18 : 20),
                      itemBuilder: (context) => const [
                        PopupMenuItem(child: Text('Add To Shortlist')),
                        PopupMenuItem(child: Text("Don't Show Again")),
                        PopupMenuItem(child: Text('Block Profile')),
                        PopupMenuItem(child: Text('Report Profile/Photo')),
                      ],
                    ),
                  ],
                ),

                SizedBox(height: isMobile ? 6 : 8),

                // Small status row — wrap so it won't overflow
                Wrap(
                  spacing: 12,
                  runSpacing: 6,
                  crossAxisAlignment: WrapCrossAlignment.center,
                  children: [
                    Row(mainAxisSize: MainAxisSize.min, children: [Icon(Icons.circle, size: 8, color: Colors.green), SizedBox(width: 4), Text('Online 1h Ago', style: TextStyle(fontSize: isMobile ? 11 : 12, color: Colors.grey))]),
                    Row(mainAxisSize: MainAxisSize.min, children: [Icon(Icons.people, size: isMobile ? 12 : 14, color: Colors.grey), SizedBox(width: 4), Text('You & Him', style: TextStyle(fontSize: isMobile ? 11 : 12, color: Colors.grey))]),
                    Row(mainAxisSize: MainAxisSize.min, children: [Icon(Icons.star, size: isMobile ? 12 : 14, color: Colors.grey), SizedBox(width: 4), Text('Astro', style: TextStyle(fontSize: isMobile ? 11 : 12, color: Colors.grey))]),
                  ],
                ),

                SizedBox(height: isMobile ? 8 : 12),

                // Main details
                Text("28 Yrs, 5'3\"", style: TextStyle(fontSize: isMobile ? 13 : 14, fontWeight: FontWeight.w500)),
                Text('Tamil, Agamudayar', style: TextStyle(fontSize: isMobile ? 11 : 12, color: Colors.grey)),
                Text('Chennai, Tamil Nadu', style: TextStyle(fontSize: isMobile ? 11 : 12, color: Colors.grey)),
                Text('B.Eng (Hons)', style: TextStyle(fontSize: isMobile ? 11 : 12, color: Colors.grey)),
                Text('Occupation: Company Secretary', style: TextStyle(fontSize: isMobile ? 11 : 12, color: Colors.grey)),

                SizedBox(height: isMobile ? 8 : 12),

                // Footer
                Row(
                  children: [
                    Text('LIKED THIS PROFILE?', style: TextStyle(fontSize: isMobile ? 10 : 11, color: const Color(0xFFD4AF37), fontWeight: FontWeight.bold)),
                    const Spacer(),
                    TextButton(onPressed: () {}, child: Text('VIEW', style: TextStyle(color: const Color(0xFFD4AF37), fontWeight: FontWeight.bold, fontSize: isMobile ? 10 : 11))),
                  ],
                ),

                Row(
                  children: [
                    Container(padding: EdgeInsets.all(isMobile ? 4 : 6), decoration: BoxDecoration(color: const Color(0xFFFFD700), shape: BoxShape.circle), child: Icon(Icons.check, color: Colors.black, size: isMobile ? 14 : 16)),
                    SizedBox(width: isMobile ? 8 : 12),
                    Text('Connect Now', style: TextStyle(fontSize: isMobile ? 12 : 12, color: Colors.grey)),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    ),
  );
}


  Widget _buildPagination(BuildContext context) {
    final isMobile = ResponsiveHelper.isMobile(context);
    final size = isMobile ? 28.0 : 32.0;

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        _buildPaginationButton('«', false, size),
        _buildPaginationButton('‹', false, size),
        _buildPaginationButton('1', true, size),
        _buildPaginationButton('2', false, size),
        _buildPaginationButton('3', false, size),
        Text('...', style: TextStyle(color: Colors.grey, fontSize: isMobile ? 12 : 14)),
        _buildPaginationButton('10', false, size),
        _buildPaginationButton('›', false, size),
        _buildPaginationButton('»', false, size),
      ],
    );
  }

  Widget _buildPaginationButton(String text, bool isActive, double size) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 4),
      width: size,
      height: size,
      decoration: BoxDecoration(
        color: isActive ? const Color(0xFFFFD700) : Colors.white,
        border: Border.all(color: isActive ? const Color(0xFFFFD700) : Colors.grey.withOpacity(0.3)),
        shape: BoxShape.circle,
      ),
      child: Center(
        child: Text(
          text,
          style: TextStyle(color: isActive ? Colors.black : Colors.grey, fontWeight: isActive ? FontWeight.bold : FontWeight.normal, fontSize: size * 0.35),
        ),
      ),
    );
  }
}
