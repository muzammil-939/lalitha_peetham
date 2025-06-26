import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:lalitha_peetham/screens/ayurvedha/ayurvedh_page_layout.dart';

class CaseDiscussions extends StatefulWidget {
  const CaseDiscussions({super.key});

  @override
  State<CaseDiscussions> createState() => _CaseDiscussionsState();
}

class _CaseDiscussionsState extends State<CaseDiscussions> {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    return AyurvedhPageLayout(
      child: Container(
        color: Colors.white,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 40),
              Center(
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 18, vertical: 12),
                  decoration: BoxDecoration(
                    color: Color(0xFFD4BB26),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(Icons.home, size: 16, color: Colors.black),
                      Text(
                        ' / ',
                        style: TextStyle(color: Colors.black, fontSize: 14),
                      ),
                      Text(
                        'AYURVEDA CONSULTANCY',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Text(
                        ' / ',
                        style: TextStyle(color: Colors.black, fontSize: 14),
                      ),
                      Text(
                        'CASE DISCUSSIONS',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 40),

              // Header with Total Cases
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 150),
                child: Text(
                  'TOTAL CASES : 1128',
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: Colors.black87,
                    letterSpacing: 1.2,
                  ),
                ),
              ),

              SizedBox(height: 30),

              // Search Bar
              Center(
                child: SizedBox(
                  width: screenWidth * 0.5,
                  child: Container(
                    height: 50,
                    child: Row(
                      children: [
                        Expanded(
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.white,
                              border: Border.all(color: Colors.grey.shade400),
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(4),
                                bottomLeft: Radius.circular(4),
                              ),
                            ),
                            child: TextField(
                              decoration: InputDecoration(
                                hintText: 'Search By Case Name Or Keyword',
                                hintStyle: TextStyle(
                                  color: Colors.grey.shade500,
                                  fontSize: 14,
                                ),
                                border: InputBorder.none,
                                contentPadding: EdgeInsets.symmetric(
                                  horizontal: 16,
                                  vertical: 14,
                                ),
                              ),
                            ),
                          ),
                        ),
                        Container(
                          height: 50,
                          padding: EdgeInsets.symmetric(horizontal: 24),
                          decoration: BoxDecoration(
                            color: Color(0xFFE6B800),
                            borderRadius: BorderRadius.only(
                              topRight: Radius.circular(4),
                              bottomRight: Radius.circular(4),
                            ),
                          ),
                          child: Center(
                            child: Text(
                              'SEARCH',
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w600,
                                fontSize: 14,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),

              SizedBox(height: 30),

              // Filter Buttons
              Container(
                height: 60,
                color: Color(0xFFD4BB26),
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        margin: EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(4),
                        ),
                        child: Center(
                          child: Text(
                            'Popularity',
                            style: TextStyle(
                              color: Colors.black87,
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        margin: EdgeInsets.all(8),
                        child: Center(
                          child: Text(
                            'Newest First',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        margin: EdgeInsets.all(8),
                        child: Center(
                          child: Text(
                            'Oldest First',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              SizedBox(height: 40),

              // Case Cards
              ...List.generate(
                4,
                (index) => Padding(
                  padding: EdgeInsets.only(bottom: 20),
                  child: CaseCard(
                    isLargerCard: index == 2, // Make the third card larger
                    hasDescription:
                        index >= 2, // Add description to last two cards
                  ),
                ),
              ),

              SizedBox(height: 40),
            ],
          ),
        ),
      ),
    );
  }
}

class CaseCard extends StatelessWidget {
  final bool isLargerCard;
  final bool hasDescription;

  const CaseCard({
    Key? key,
    this.isLargerCard = false,
    this.hasDescription = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 150),
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.all(24),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(4),
                topRight: Radius.circular(4),
              ),
              color: Color(0xFFF0E7BB),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.1),
                  blurRadius: 8,
                  offset: Offset(0, 4),
                ),
              ],
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Profile image with person details below
                Column(
                  children: [
                    Container(
                      width: isLargerCard ? 120 : 100,
                      height: isLargerCard ? 120 : 100,
                      decoration: BoxDecoration(
                        color: Colors.grey.shade400,
                        borderRadius: BorderRadius.circular(60),
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(60),
                        child: Icon(
                          Icons.person,
                          size: isLargerCard ? 80 : 60,
                          color: Colors.grey.shade600,
                        ),
                      ),
                    ),

                    SizedBox(height: 16),

                    // Person details below profile image
                    Column(
                      children: [
                        Text(
                          'VANDIYA MANSUKH',
                          style: TextStyle(
                            color: Colors.black87,
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 0.5,
                          ),
                        ),
                        SizedBox(height: 4),
                        Text(
                          'SURAT , GUJARAT',
                          style: TextStyle(
                            color: Colors.black87,
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        SizedBox(height: 4),
                        Text(
                          'POINTS: 151',
                          style: TextStyle(
                            color: Colors.black87,
                            fontSize: 12,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        SizedBox(height: 16),
                        GestureDetector(
                          onTap: () => context.go('/case_discussions_info'),
                          child: Container(
                            padding: EdgeInsets.symmetric(
                              horizontal: 24,
                              vertical: 14,
                            ),
                            decoration: BoxDecoration(
                              color: Color(0xFFD4BB26),
                              borderRadius: BorderRadius.circular(0),
                            ),
                            child: Text(
                              'VIEW LAST REPLY',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                                letterSpacing: 0.5,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),

                SizedBox(width: 24),

                // Content section
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Top row with category and time centered
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          // Category tag
                          Container(
                            padding: EdgeInsets.symmetric(
                              horizontal: 12,
                              vertical: 6,
                            ),
                            decoration: BoxDecoration(
                              color: Color(0xFFD4BB26),
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: Text(
                              'CARDIOVASCULAR',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 10,
                                fontWeight: FontWeight.w600,
                                letterSpacing: 0.5,
                              ),
                            ),
                          ),

                          SizedBox(width: 16),

                          // Time
                          Row(
                            children: [
                              Container(
                                width: 16,
                                height: 16,
                                decoration: BoxDecoration(
                                  color: Colors.grey.shade600,
                                  shape: BoxShape.circle,
                                ),
                                child: Icon(
                                  Icons.access_time,
                                  size: 10,
                                  color: Colors.white,
                                ),
                              ),
                              SizedBox(width: 6),
                              Text(
                                'A YEAR AGO',
                                style: TextStyle(
                                  color: Colors.grey[600],
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),

                      SizedBox(height: hasDescription ? 16 : 12),

                      // // Title (only for cards with description)
                      // if (hasDescription) ...[
                      //   Text(
                      //     hasDescription && isLargerCard
                      //         ? 'Triple Vessels Blockage'
                      //         : 'The Significance Of Ayurvedic Medicinal Plants',
                      //     style: TextStyle(
                      //       fontSize: 18,
                      //       fontWeight: FontWeight.bold,
                      //       color: Colors.black87,
                      //       height: 1.2,
                      //     ),
                      //   ),
                      //   SizedBox(height: 12),
                      // ],

                      // Description (only for cards with description)
                      if (hasDescription) ...[
                        Text(
                          hasDescription && isLargerCard
                              ? 'A patient went to a hospital for routine check-up. He had had COVID-19 and taken medicines for six months and was cured, but went to the physician regularly for routine check-up. The physician did ECG due'
                              : '',
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.grey.shade700,
                            height: 1.4,
                          ),
                        ),
                        SizedBox(height: 16),
                      ],

                      // Stats positioned at the right
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Container(
                                padding: EdgeInsets.symmetric(
                                  horizontal: 16,
                                  vertical: 8,
                                ),
                                decoration: BoxDecoration(
                                  color: Colors.grey.shade400,
                                  borderRadius: BorderRadius.circular(6),
                                ),
                                child: Text(
                                  '0 Comments',
                                  style: TextStyle(
                                    color: Colors.black87,
                                    fontSize: 12,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),

                              SizedBox(height: 8),

                              Container(
                                padding: EdgeInsets.symmetric(
                                  horizontal: 16,
                                  vertical: 8,
                                ),
                                decoration: BoxDecoration(
                                  color: Colors.grey.shade400,
                                  borderRadius: BorderRadius.circular(6),
                                ),
                                child: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Container(
                                      width: 16,
                                      height: 16,
                                      decoration: BoxDecoration(
                                        color: Colors.grey.shade600,
                                        shape: BoxShape.circle,
                                      ),
                                      child: Icon(
                                        Icons.visibility,
                                        size: 10,
                                        color: Colors.white,
                                      ),
                                    ),
                                    SizedBox(width: 6),
                                    Text(
                                      '997 Views',
                                      style: TextStyle(
                                        color: Colors.black87,
                                        fontSize: 12,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          // Bottom yellow strip
          Container(
            height: 6,
            decoration: BoxDecoration(
              color: Color(0xFFE8D41F),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(8),
                bottomRight: Radius.circular(8),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
