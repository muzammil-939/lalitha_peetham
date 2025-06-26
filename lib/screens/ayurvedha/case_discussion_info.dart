import 'package:flutter/material.dart';
import 'package:lalitha_peetham/screens/ayurvedha/ayurvedh_page_layout.dart';

class CaseDiscussionInfo extends StatelessWidget {
  const CaseDiscussionInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return AyurvedhPageLayout(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 250, vertical: 100),
        child: Row(
          children: [
            profileCardContainer(),
            Spacer(),
            tripleVesselsContainer(context),
          ],
        ),
      ),
    );
  }

  Widget profileCardContainer() {
    return SizedBox(
      width: 300,

      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Top image section
          Container(
            width: 300,
            height: 400,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(14)),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(14),
              child: Image.asset(
                'assets/images/doctor4.png', // Replace with your image path
                fit: BoxFit.cover,
              ),
            ),
          ),

          // Bottom text section
          Container(
            padding: EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'DR. DHIMESH KACHA',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: Color(0xffC1B11F),
                    letterSpacing: 0.5,
                  ),
                ),
                SizedBox(height: 4),
                Text(
                  'AHMEDABAD, GUJARAT',
                  style: TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.w500,
                    color: Colors.grey[700],
                    letterSpacing: 0.3,
                  ),
                ),
                SizedBox(height: 8),
                Text(
                  'POINTS: 151',
                  style: TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.w600,
                    color: Colors.grey[800],
                    letterSpacing: 0.3,
                  ),
                ),
              ],
            ),
          ),
          Container(
            width: 300,
            height: 400,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(14)),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(14),
              child: Image.asset(
                'assets/images/blog_image.png', // Replace with your image path
                fit: BoxFit.cover,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget tripleVesselsContainer(context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return Container(
      padding: EdgeInsets.all(16.0),
      width: screenWidth * 0.4,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Title
          Text(
            'TRIPLE VESSELS BLOCKAGE',
            style: TextStyle(
              fontSize: 18.0,
              fontWeight: FontWeight.bold,
              color: Colors.black,
              letterSpacing: 0.5,
            ),
          ),
          SizedBox(height: 12.0),

          // Main content text
          Text(
            'A Patient Went To A Hospital For Routine Check Up . He Had Have Covid 19 And Taken Medicines For Six Months And Cured, But Went To The Physician Regularly For Routine Check Up. The Physician Did ECG Due To The Patient Was Complaining Chest Pain. The Physician Find Something Wrong In ECG And Referred To Cardiologist For Further Investigation. The Patient Went To The Famous Multispeciality Hospital. There The Cardiologist Did CAG And On The Table Advanced To Do CABG Immediately Due To Triple Vessel Blockage. The Reports Of The Patient Is Posted Following. The Patient\'s Past History HTN Since 1.5 Yrs Old CV Stroke 4 Yrs Back Covid 19 In 2020 The Patient Is Chain Smoker . What Are You Thinking ???? If The Patient Refuse To Do Operation, He Will Lost Life ??? Is Ayurveda Treatment Help Him ???? I Treated Him And He Is Completely Fine Now.',
            style: TextStyle(
              fontSize: 16.0,
              color: Colors.black87,
              height: 2,
              letterSpacing: 1,
            ),
          ),
          SizedBox(height: 16.0),

          // Voting buttons row
          Row(
            children: [
              // Thumbs up button
              Container(
                width: 40.0,
                height: 40.0,
                decoration: BoxDecoration(
                  border: Border.all(color: Color(0xFFCCCCCC)),
                  borderRadius: BorderRadius.circular(4.0),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.thumb_up_outlined,
                      size: 18.0,
                      color: Colors.black54,
                    ),
                    SizedBox(height: 2.0),
                    Text(
                      '(5)',
                      style: TextStyle(fontSize: 10.0, color: Colors.black54),
                    ),
                  ],
                ),
              ),
              SizedBox(width: 12.0),

              // Thumbs down button
              Container(
                width: 40.0,
                height: 40.0,
                decoration: BoxDecoration(
                  border: Border.all(color: Color(0xFFCCCCCC)),
                  borderRadius: BorderRadius.circular(4.0),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.thumb_down_outlined,
                      size: 18.0,
                      color: Colors.black54,
                    ),
                    SizedBox(height: 2.0),
                    Text(
                      '(1)',
                      style: TextStyle(fontSize: 10.0, color: Colors.black54),
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: 16.0),

          // Give Reply section
          Text(
            'GIVE REPLY',
            style: TextStyle(
              fontSize: 16.0,
              fontWeight: FontWeight.bold,
              color: Colors.black,
              letterSpacing: 0.5,
            ),
          ),
          SizedBox(height: 8.0),

          // Reply input container
          Container(
            height: 400.0,
            decoration: BoxDecoration(
              color: Color(0xFFF0E68C), // Light khaki color
              borderRadius: BorderRadius.circular(6.0),
              border: Border.all(color: Color(0xFFDAA520), width: 1.0),
            ),
            child: Stack(
              children: [
                Padding(
                  padding: EdgeInsets.all(12.0),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      'Type Here|',
                      style: TextStyle(fontSize: 13.0, color: Colors.black54),
                    ),
                  ),
                ),
                Positioned(
                  bottom: 8.0,
                  right: 8.0,
                  child: Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: 16.0,
                      vertical: 6.0,
                    ),
                    decoration: BoxDecoration(
                      color: Color(0xFFDAA520),
                      borderRadius: BorderRadius.circular(4.0),
                    ),
                    child: Text(
                      'OK',
                      style: TextStyle(
                        fontSize: 12.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
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
