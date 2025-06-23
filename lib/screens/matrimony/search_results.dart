import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:lalitha_peetham/screens/matrimony/matimony_page_layout_2.dart';

class SearchResults extends StatefulWidget {
  const SearchResults({super.key});

  @override
  State<SearchResults> createState() => _SearchResultsState();
}

class _SearchResultsState extends State<SearchResults> {
  String selectedRefineFilter = 'All';
  String selectedPhotoFilter = 'All';
  String selectedRecentlyJoined = 'All';
  String activeMembers = 'All';
  String annualIncome = 'All';
  String marritalStatus = 'All';

  @override
  Widget build(BuildContext context) {
    return MatriPageLayoutTwo(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Sidebar (fixed)
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
            child: Container(
              width: 250,
              color: Colors.white,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _buildFilterSection(
                    title: 'REFINE SEARCH',
                    options: [
                      'blue tick members',
                      'blue tick members',
                      'super connects',
                      'premium members',
                      'members online now',
                    ],
                    selectedValue: selectedRefineFilter,
                    onChanged:
                        (value) => setState(() => selectedRefineFilter = value),
                  ),
                ],
              ),
            ),
          ),

          // Main Scrollable Area (cards)
          Expanded(
            child: SingleChildScrollView(
              padding: const EdgeInsets.only(top: 20, right: 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Text(
                    'New Members Who Match Most Of Your Preferences',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.grey,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const SizedBox(height: 20),
                  ListView.builder(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: 3,
                    itemBuilder: (context, index) => _buildProfileCard(),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildFilterSection({
    required String title,
    required List<String> options,
    required String selectedValue,
    required Function(String) onChanged,
  }) {
    return Container(
      margin: const EdgeInsets.all(8.0),
      decoration: BoxDecoration(
        color: const Color(0xFFffffff), // Golden color
        borderRadius: BorderRadius.circular(4),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Header
          Container(
            width: double.infinity,
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
            decoration: BoxDecoration(
              border: Border.all(
                width: 6,
                color: Color(0xFFD4AF37),
                strokeAlign: BorderSide.strokeAlignInside,
              ),
            ),
            child: Text(
              title,
              style: const TextStyle(
                color: Color(0xFFD4AF37),
                fontSize: 12,
                fontWeight: FontWeight.bold,
                letterSpacing: 0.5,
              ),
            ),
          ),

          // Options
          Container(
            color: Color(0xE6D8C340),
            child: Column(
              children:
                  options.map((option) {
                    return RadioListTile<String>(
                      value: option,
                      groupValue: selectedValue,

                      onChanged: (value) {
                        if (value != null) {
                          onChanged(value);
                        }
                      },
                      title: Text(
                        option,
                        style: const TextStyle(
                          fontSize: 13,
                          color: Colors.white,
                        ),
                      ),
                      dense: true,
                      contentPadding: const EdgeInsets.symmetric(horizontal: 8),
                      activeColor: Colors.black,
                    );
                  }).toList(),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildProfileCard() {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 150),
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: const Color(0xFFFFF9E4), // Light cream background
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: Colors.grey.shade300),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Profile Image
              Padding(
                padding: const EdgeInsets.only(top: 20, left: 20),
                child: SizedBox(
                  height: 200,
                  width: 200,
                  child: CircleAvatar(
                    foregroundImage: const NetworkImage(
                      'https://images.unsplash.com/photo-1507003211169-0a1dd7228f2d?w=300&h=400&fit=crop',
                    ),
                  ),
                ),
              ),
              const SizedBox(width: 12),
              // Profile Info
              Container(height: 200),
            ],
          ),
          const SizedBox(height: 12),

          // Description Box
          SizedBox(
            width: 780,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                SizedBox(
                  width: 520,
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          DottedBorder(
                            borderType: BorderType.RRect,
                            radius: Radius.circular(4),
                            color: Color(0xFFD4AF37),
                            strokeWidth: 1,
                            dashPattern: [4, 3],
                            child: Container(
                              padding: EdgeInsets.symmetric(
                                vertical: 30,
                                horizontal: 35,
                              ),
                              width: 500,
                              color: Colors.white,
                              child: Column(
                                children: [
                                  Text(
                                    '\n\n\n\n\n\n\n\n',
                                    style: TextStyle(
                                      fontSize: 12,
                                      color: Colors.black87,
                                    ),
                                  ),
                                  SizedBox(
                                    child: ElevatedButton(
                                      onPressed: () {
                                        context.go('/upgrade_plans');
                                      },
                                      style: ElevatedButton.styleFrom(
                                        backgroundColor: const Color(
                                          0xFFDAA520,
                                        ),
                                        foregroundColor: Colors.white,
                                        padding: EdgeInsets.symmetric(
                                          horizontal: 30,
                                          vertical: 18,
                                        ),
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(
                                            20,
                                          ),
                                        ),
                                        elevation: 2,
                                      ),
                                      child: Text(
                                        'UPGRADE NOW',
                                        style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold,
                                          letterSpacing: 0.5,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 80),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          _buildCircleButton(
                            Icons.close,
                            Colors.grey.shade600,
                            Colors.grey.withOpacity(0.6),
                            context,
                          ),

                          _buildCircleButton(
                            Icons.check,
                            Colors.orange,
                            Colors.orange,
                            context,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 16),
        ],
      ),
    );
  }

  Widget _buildCircleButton(
    IconData icon,
    Color color,
    Color borderColor,
    BuildContext context,
  ) {
    final isMobile = MediaQuery.of(context).size.width < 768;
    double buttonSize = isMobile ? 50 : 60;
    double iconSize = isMobile ? 24 : 30;

    return Container(
      width: buttonSize,
      height: buttonSize,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(color: borderColor, width: 3),
      ),
      child: IconButton(
        onPressed: () => print('$icon button pressed'),
        icon: Icon(icon, color: color, size: iconSize),
        splashRadius: buttonSize / 2,
      ),
    );
  }
}
