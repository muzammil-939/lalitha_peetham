import 'package:flutter/material.dart';
import 'package:lalitha_peetham/screens/matrimony/matimony_page_layout.dart';

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
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    // Debug: Add some print statements to check if build is being called
    print('MyPhotosContainer build called');
    print('Screen width: $screenWidth, Screen height: $screenHeight');

    return MatriPageLayout(
      child: Container(
        width: screenWidth,

        padding: const EdgeInsets.symmetric(horizontal: 150, vertical: 50),
        child: Column(
          children: [
            Row(
              children: [
                // Debug: Wrap MatriProfileWidget in a container to see if it's the issue
                MatriProfileWidget(),

                const SizedBox(width: 80),
                Expanded(
                  // Use Expanded instead of Column to prevent overflow
                  child: Container(
                    constraints: const BoxConstraints(minHeight: 720),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        // Header
                        Text(
                          'MY PHOTOS',
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFFCC901C), // Golden/tan color
                            letterSpacing: 1.5,
                          ),
                        ),
                        SizedBox(height: 20),

                        // Tab Bar
                        Column(
                          children: [
                            Container(
                              padding: EdgeInsets.only(top: 20, left: 15),
                              color: Color(0xFFEFE7C0),
                              child: Row(
                                children: [
                                  GestureDetector(
                                    onTap:
                                        () => setState(() => selectedTab = 0),
                                    child: Container(
                                      padding: EdgeInsets.symmetric(
                                        horizontal: 20,
                                        vertical: 10,
                                      ),
                                      decoration: BoxDecoration(
                                        color:
                                            selectedTab == 0
                                                ? Color(0xFFCC901C)
                                                : Colors.transparent,
                                        border:
                                            selectedTab == 0
                                                ? null
                                                : Border(
                                                  bottom: BorderSide(
                                                    color: Color(0xFFCC901C),
                                                    width: 2,
                                                  ),
                                                ),
                                      ),
                                      child: Text(
                                        'PHOTO',
                                        style: TextStyle(
                                          color:
                                              selectedTab == 0
                                                  ? Colors.white
                                                  : Color(0xFF666666),
                                          fontWeight: FontWeight.bold,
                                          fontSize: 14,
                                          letterSpacing: 1,
                                        ),
                                      ),
                                    ),
                                  ),
                                  GestureDetector(
                                    onTap:
                                        () => setState(() => selectedTab = 1),
                                    child: Container(
                                      padding: EdgeInsets.symmetric(
                                        horizontal: 20,
                                        vertical: 10,
                                      ),
                                      decoration: BoxDecoration(
                                        color:
                                            selectedTab == 1
                                                ? Color(0xFFCC901C)
                                                : Colors.transparent,
                                        border:
                                            selectedTab == 1
                                                ? null
                                                : Border(
                                                  bottom: BorderSide(
                                                    color: Color(0xFFCC901C),
                                                    width: 2,
                                                  ),
                                                ),
                                      ),
                                      child: Text(
                                        'SETTINGS',
                                        style: TextStyle(
                                          color:
                                              selectedTab == 1
                                                  ? Colors.white
                                                  : Color(0xFF666666),
                                          fontWeight: FontWeight.bold,
                                          fontSize: 14,
                                          letterSpacing: 1,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            // Tab Content
                            selectedTab == 0
                                ? _buildPhotoTab()
                                : _buildSettingsTab(),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            PhotoUploadContainer(),
          ],
        ),
      ),
    );
  }

  Widget _buildPhotoTab() {
    return Container(
      constraints: const BoxConstraints(minHeight: 600),
      width: double.infinity,
      padding: EdgeInsets.all(50),
      color: Color(0xFFEFE7C0),
      child: Column(
        mainAxisSize: MainAxisSize.min, // Add this to prevent overflow
        children: [
          SizedBox(height: 20),
          // Upload Section
          Container(
            width: 440,
            padding: EdgeInsets.all(40),
            decoration: BoxDecoration(
              color: Colors.white,

              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.1),
                  blurRadius: 5,
                  offset: Offset(0, 2),
                ),
              ],
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min, // Add this
              children: [
                Text(
                  'Upload Photos From Your Computer',
                  style: TextStyle(
                    fontSize: 16,
                    color: Color(0xFF333333),
                    fontWeight: FontWeight.w500,
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 30),
                GestureDetector(
                  // Make button clickable
                  onTap: () {
                    // Add file picker logic here
                    print('Browse photo tapped');
                  },
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                    decoration: BoxDecoration(
                      color: Color(0xFFD4BB26),
                      borderRadius: BorderRadius.circular(6),
                    ),
                    child: Text(
                      'BROWSE PHOTO',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 14,
                        letterSpacing: 1,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 40),

          // Note Text
          Container(
            width: double.infinity,
            child: Text(
              'Note: You Can Upload 20 Photos To Your Profile.\nEach Photos Must Be Less Than 15 MB And In\nJpg, Jpeg, Png Or Webp Format. All Photos\nUploaded Are Screened As Per Photo Guidelines\nAnd 98% Of Those Get Activated Within 2 Hours.',
              style: TextStyle(
                fontSize: 16,
                color: Color(0xFF888888),
                height: 1.6,
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildSettingsTab() {
    return Container(
      constraints: const BoxConstraints(minHeight: 600),
      width: double.infinity,
      padding: EdgeInsets.all(30),
      color: Color(0xFFEFE7C0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Left Side - Settings
          Expanded(
            flex: 2,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min, // Add this
              children: [
                SizedBox(height: 40),
                // Profile Photo Section
                Text(
                  'PROFILE PHOTO',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF333333),
                    letterSpacing: 1,
                  ),
                ),
                SizedBox(height: 20),

                // Radio Button Options
                _buildRadioOption('Visible To All Members (Recommended)', true),
                SizedBox(height: 15),
                _buildRadioOption(
                  'Visible To All Members I Like And\nTo All Premium Members | More',
                  false,
                ),
                SizedBox(height: 50),

                // Album Section
                Text(
                  'ALBUM',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF333333),
                    letterSpacing: 1,
                  ),
                ),
                SizedBox(height: 20),

                _buildRadioOption(
                  'Visible To All Members I Like\nAnd To All Premium Members',
                  true,
                ),
                SizedBox(height: 15),
                _buildRadioOption('Only Visible To Members I Like', false),
                SizedBox(height: 15),
                _buildRadioOption('Visible To All Members', false),
              ],
            ),
          ),

          SizedBox(width: 30),

          // Right Side - Photo Preview
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 200,
                child: Column(
                  mainAxisSize: MainAxisSize.min, // Add this
                  children: [
                    Container(
                      padding: EdgeInsets.all(15),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(8),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.1),
                            blurRadius: 5,
                            offset: Offset(0, 2),
                          ),
                        ],
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min, // Add this
                        children: [
                          Text(
                            'This Is Your Photos Will Look\nTo Other Members',
                            style: TextStyle(
                              fontSize: 12,
                              color: Color(0xFF666666),
                            ),
                            textAlign: TextAlign.center,
                          ),
                          SizedBox(height: 15),
                          Container(
                            width: 120,
                            height: 120,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              color: Color(0xFF4A7C59), // Green placeholder
                            ),
                            child: Icon(
                              Icons.person,
                              size: 60,
                              color: Colors.white.withOpacity(0.7),
                            ),
                          ),
                          SizedBox(height: 15),
                          GestureDetector(
                            // Make edit button clickable
                            onTap: () {
                              print('Edit photo tapped');
                            },
                            child: Container(
                              width: 40,
                              height: 40,
                              decoration: BoxDecoration(
                                color: Color(0xFFD4A574),
                                shape: BoxShape.circle,
                              ),
                              child: Icon(
                                Icons.edit,
                                color: Colors.white,
                                size: 20,
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
          ),
        ],
      ),
    );
  }

  Widget _buildRadioOption(String text, bool isSelected) {
    return GestureDetector(
      // Make radio options clickable
      onTap: () {
        // Add radio button logic here
        print('Radio option tapped: $text');
      },
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 20,
            height: 20,
            margin: EdgeInsets.only(top: 2, right: 12),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: isSelected ? Color(0xFFD4BB26) : Colors.transparent,
              border: Border.all(color: Color(0xFFCC901C), width: 2),
            ),
          ),
          Expanded(
            child: Text(
              text,
              style: TextStyle(
                fontSize: 16,
                color: Color(0xFF666666),
                height: 1.4,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
