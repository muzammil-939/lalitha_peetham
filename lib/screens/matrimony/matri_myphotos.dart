import 'package:flutter/material.dart';
import 'package:lalitha_peetham/screens/matrimony/matimony_page_layout.dart';
import 'package:lalitha_peetham/widgets/reusable_responsive_type_widget.dart';

import 'matri_myphoto_subsec.dart';
import 'matri_profile_widget.dart';



class MyPhotosContainer extends StatefulWidget {
  const MyPhotosContainer({super.key});

  @override
  MyPhotosContainerState createState() => MyPhotosContainerState();
}

class MyPhotosContainerState extends State<MyPhotosContainer> {
  int selectedTab = 0; // 0 for PHOTO, 1 for SETTINGS

  @override
  Widget build(BuildContext context) {
    final screenWidth = ResponsiveHelper.screenWidth(context);
    final screenHeight = ResponsiveHelper.screenHeight(context);
    final isMobile = ResponsiveHelper.isMobile(context);
    final isTablet = ResponsiveHelper.isTablet(context);
    final isDesktop = ResponsiveHelper.isDesktop(context);

    // scale factor to multiply sizes & paddings — tweak if needed
    final baseScale = ResponsiveHelper.getResponsiveSize(context, 1.0, 1.0, 1.2);

    // horizontal padding for outer container (keeps same visual positions)
    final outerHorizontalPadding = isMobile
        ? 16.0 * baseScale
        : isTablet
            ? 50.0 * baseScale
            : 150.0 * baseScale;
    final outerVerticalPadding = isMobile ? 20.0 * baseScale : 50.0 * baseScale;

    // spacing between profile widget and right column
    final mainSpacing = (isMobile ? 16.0 : 80.0) * baseScale;

  
  
  


return MatriPageLayout(
    child: Container(
      width: screenWidth,
      padding: EdgeInsets.symmetric(
        horizontal: outerHorizontalPadding,
        vertical: outerVerticalPadding,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          isMobile
              ? Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    MatriProfileWidget(),
                    SizedBox(height: mainSpacing),
                    _buildPhotoAndTabSection(baseScale),
                  ],
                )
              : Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    MatriProfileWidget(),
                    SizedBox(width: mainSpacing),
                    Expanded(child: _buildPhotoAndTabSection(baseScale)),
                  ],
                ),

          // ✅ This stays outside regardless of layout
          SizedBox(height: 24.0 * baseScale),
          PhotoUploadContainer(), // Full width by default
        ],
      ),
    ),
  );
}

Widget _buildPhotoAndTabSection(double baseScale) {
  final headerFontSize = 24.0 * baseScale;

  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        'MY PHOTOS',
        style: TextStyle(
          fontSize: headerFontSize,
          fontWeight: FontWeight.bold,
          color: const Color(0xFFCC901C),
          letterSpacing: 1.5,
        ),
      ),
      SizedBox(height: 20.0 * baseScale),

      Container(
        padding: EdgeInsets.only(
          top: 20.0 * baseScale,
          left: 15.0 * baseScale,
        ),
        color: const Color(0xFFEFE7C0),
        child: Row(
          children: [
            _buildTab('PHOTO', 0, baseScale),
            _buildTab('SETTINGS', 1, baseScale),
          ],
        ),
      ),

      selectedTab == 0
          ? _buildPhotoTab(context, baseScale)
          : _buildSettingsTab(context, baseScale),
    ],
  );
}



Widget _buildTab(String label, int index, double baseScale) {
  final isSelected = selectedTab == index;
  return GestureDetector(
    onTap: () => setState(() => selectedTab = index),
    child: Container(
      padding: EdgeInsets.symmetric(
        horizontal: 20.0 * baseScale,
        vertical: 10.0 * baseScale,
      ),
      decoration: BoxDecoration(
        color: isSelected ? const Color(0xFFCC901C) : Colors.transparent,
        border: isSelected
            ? null
            : const Border(
                bottom: BorderSide(
                  color: Color(0xFFCC901C),
                  width: 2,
                ),
              ),
      ),
      child: Text(
        label,
        style: TextStyle(
          color: isSelected ? Colors.white : const Color(0xFF666666),
          fontWeight: FontWeight.bold,
          fontSize: 14.0 * baseScale,
          letterSpacing: 1,
        ),
      ),
    ),
  );
}


  Widget _buildPhotoTab(BuildContext context, double baseScale) {
    final isMobile = ResponsiveHelper.isMobile(context);
    final isTablet = ResponsiveHelper.isTablet(context);

    // container width logic: mimics your previous logic but responsive
    final containerWidth = isMobile
        ? ResponsiveHelper.screenWidth(context) * 0.9
        : isTablet
            ? ResponsiveHelper.screenWidth(context) * 0.6
            : 440.0 * baseScale;

    return Container(
      constraints: BoxConstraints(minHeight: 600 * baseScale),
      width: double.infinity,
      padding: EdgeInsets.all(50.0 * baseScale),
      color: const Color(0xFFEFE7C0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(height: 20.0 * baseScale),
          // Upload Section
          Container(
            width: containerWidth,
            padding: EdgeInsets.all(40.0 * baseScale),
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.1),
                  blurRadius: 5.0 * baseScale,
                  offset: Offset(0, 2.0 * baseScale),
                ),
              ],
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  'Upload Photos From Your Computer',
                  style: TextStyle(
                    fontSize: 16.0 * baseScale,
                    color: const Color(0xFF333333),
                    fontWeight: FontWeight.w500,
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 30.0 * baseScale),
                GestureDetector(
                  onTap: () {
                    // Add file picker logic here
                    print('Browse photo tapped');
                  },
                  child: Container(
                    padding: EdgeInsets.symmetric(
                        horizontal: 30.0 * baseScale, vertical: 15.0 * baseScale),
                    decoration: BoxDecoration(
                      color: const Color(0xFFD4BB26),
                      borderRadius: BorderRadius.circular(6.0 * baseScale),
                    ),
                    child: Text(
                      'BROWSE PHOTO',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 14.0 * baseScale,
                        letterSpacing: 1,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 40.0 * baseScale),

          // Note Text
          Container(
            width: double.infinity,
            child: Text(
              'Note: You Can Upload 20 Photos To Your Profile.\nEach Photos Must Be Less Than 15 MB And In\nJpg, Jpeg, Png Or Webp Format. All Photos\nUploaded Are Screened As Per Photo Guidelines\nAnd 98% Of Those Get Activated Within 2 Hours.',
              style: TextStyle(
                fontSize: 16.0 * baseScale,
                color: const Color(0xFF888888),
                height: 1.6,
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildSettingsTab(BuildContext context, double baseScale) {
    final isMobile = ResponsiveHelper.isMobile(context);

    return Container(
      constraints: BoxConstraints(minHeight: 600 * baseScale),
      width: double.infinity,
      padding: EdgeInsets.all(30.0 * baseScale),
      color: const Color(0xFFEFE7C0),
      child: isMobile
          ? Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _settingsLeft(context, baseScale),
                SizedBox(height: 20.0 * baseScale),
                _settingsRight(context, baseScale),
              ],
            )
          : Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(flex: 2, child: _settingsLeft(context, baseScale)),
                SizedBox(width: 30.0 * baseScale),
                _settingsRight(context, baseScale),
              ],
            ),
    );
  }

  Widget _settingsLeft(BuildContext context, double baseScale) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        SizedBox(height: 40.0 * baseScale),
        Text(
          'PROFILE PHOTO',
          style: TextStyle(
            fontSize: 18.0 * baseScale,
            fontWeight: FontWeight.bold,
            color: const Color(0xFF333333),
            letterSpacing: 1,
          ),
        ),
        SizedBox(height: 20.0 * baseScale),
        _buildRadioOption(
            'Visible To All Members (Recommended)', true, baseScale),
        SizedBox(height: 15.0 * baseScale),
        _buildRadioOption(
          'Visible To All Members I Like And\nTo All Premium Members | More',
          false,
          baseScale,
        ),
        SizedBox(height: 50.0 * baseScale),
        Text(
          'ALBUM',
          style: TextStyle(
            fontSize: 18.0 * baseScale,
            fontWeight: FontWeight.bold,
            color: const Color(0xFF333333),
            letterSpacing: 1,
          ),
        ),
        SizedBox(height: 20.0 * baseScale),
        _buildRadioOption(
          'Visible To All Members I Like\nAnd To All Premium Members',
          true,
          baseScale,
        ),
        SizedBox(height: 15.0 * baseScale),
        _buildRadioOption('Only Visible To Members I Like', false, baseScale),
        SizedBox(height: 15.0 * baseScale),
        _buildRadioOption('Visible To All Members', false, baseScale),
      ],
    );
  }

  Widget _settingsRight(BuildContext context, double baseScale) {
    final previewWidth = (200.0 * baseScale).clamp(140.0, 260.0);
    final previewBox = (120.0 * baseScale).clamp(90.0, 160.0);
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: previewWidth,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                padding: EdgeInsets.all(15.0 * baseScale),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(8.0 * baseScale),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.1),
                      blurRadius: 5.0 * baseScale,
                      offset: Offset(0, 2.0 * baseScale),
                    ),
                  ],
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      'This Is Your Photos Will Look\nTo Other Members',
                      style: TextStyle(
                        fontSize: 12.0 * baseScale,
                        color: const Color(0xFF666666),
                      ),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(height: 15.0 * baseScale),
                    Container(
                      width: previewBox,
                      height: previewBox,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8.0 * baseScale),
                        color: const Color(0xFF4A7C59),
                      ),
                      child: Icon(
                        Icons.person,
                        size: (60.0 * baseScale).clamp(36.0, 80.0),
                        color: Colors.white.withOpacity(0.7),
                      ),
                    ),
                    SizedBox(height: 15.0 * baseScale),
                    GestureDetector(
                      onTap: () {
                        print('Edit photo tapped');
                      },
                      child: Container(
                        width: (40.0 * baseScale).clamp(32.0, 48.0),
                        height: (40.0 * baseScale).clamp(32.0, 48.0),
                        decoration: BoxDecoration(
                          color: const Color(0xFFD4A574),
                          shape: BoxShape.circle,
                        ),
                        child: Icon(
                          Icons.edit,
                          color: Colors.white,
                          size: (20.0 * baseScale).clamp(14.0, 24.0),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildRadioOption(String text, bool isSelected, double baseScale) {
    return GestureDetector(
      onTap: () {
        // Add radio button logic here
        print('Radio option tapped: $text');
      },
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 20.0 * baseScale,
            height: 20.0 * baseScale,
            margin: EdgeInsets.only(top: 2.0 * baseScale, right: 12.0 * baseScale),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: isSelected ? const Color(0xFFD4BB26) : Colors.transparent,
              border: Border.all(color: const Color(0xFFCC901C), width: 2.0 * baseScale),
            ),
          ),
          Expanded(
            child: Text(
              text,
              style: TextStyle(
                fontSize: 16.0 * baseScale,
                color: const Color(0xFF666666),
                height: 1.4,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
