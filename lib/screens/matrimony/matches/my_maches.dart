import 'package:flutter/material.dart';
import 'package:lalitha_peetham/screens/matrimony/matches/filtered_section_widget.dart';
import 'package:lalitha_peetham/screens/matrimony/matches/matches_header_layout.dart';

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
    return MatchesHeaderLayout(
      child: SingleChildScrollView(
        child: Container(
          color: const Color(0xFFF5F3E7),
          padding: const EdgeInsets.symmetric(horizontal: 150),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              /// LEFT FILTER SIDEBAR
              Container(
                width: 220,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    FilterSection(
                      title: 'REFINE SEARCH',
                      options: ['All', 'Blue Tick Profile'],
                      selectedValue: selectedRefineFilter,
                      onChanged:
                          (value) =>
                              setState(() => selectedRefineFilter = value),
                    ),
                    FilterSection(
                      title: 'PHOTO SETTINGS',
                      options: ['All', 'Visible To All', 'Protected Pho...(4)'],
                      selectedValue: selectedPhotoFilter,
                      onChanged:
                          (value) =>
                              setState(() => selectedPhotoFilter = value),
                    ),
                    FilterSection(
                      title: 'RECENTLY JOINED',
                      options: [
                        'All',
                        'With In A Day',
                        'With In A Week',
                        'With In A Month',
                      ],
                      selectedValue: selectedRecentlyJoined,
                      onChanged:
                          (value) =>
                              setState(() => selectedRecentlyJoined = value),
                    ),
                    FilterSection(
                      title: 'ACTIVE MEMBERS',
                      options: [
                        'All',
                        'With In A Day',
                        'With In A Week',
                        'With In A Month',
                      ],
                      selectedValue: activeMembers,
                      onChanged:
                          (value) => setState(() => activeMembers = value),
                    ),
                    FilterSection(
                      title: 'ANNUAL INCOME',
                      options: [
                        'All',
                        '2 To 4 Lakh',
                        '4 To 5 Lakh',
                        '5 To 6 Lakh',
                      ],
                      selectedValue: annualIncome,
                      onChanged:
                          (value) => setState(() => annualIncome = value),
                    ),
                    FilterSection(
                      title: 'MARRITAL STATUS',
                      options: [
                        'All',
                        'Never Married',
                        'Divorced',
                        'Awaiting Divorce',
                        'Widowed',
                      ],
                      selectedValue: marritalStatus,
                      onChanged:
                          (value) => setState(() => marritalStatus = value),
                    ),
                  ],
                ),
              ),

              const SizedBox(width: 16),

              /// RIGHT PROFILES SECTION
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Members Who Match Most Of Your Preferences',
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color: Colors.black87,
                          ),
                        ),
                        const SizedBox(height: 8),

                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            // Include More Matches toggle
                            Row(
                              children: [
                                const Text(
                                  'Include More Matches',
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: Colors.black87,
                                  ),
                                ),
                                const SizedBox(width: 8),
                                Switch(
                                  value: true,
                                  onChanged: (val) {
                                    // handle toggle state
                                  },
                                  activeColor: Color(0xFFD4AF37),
                                ),
                              ],
                            ),

                            // Default Order dropdown
                            Row(
                              children: [
                                const Text(
                                  'Default Order:',
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: Colors.black87,
                                  ),
                                ),
                                const SizedBox(width: 8),
                                Container(
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 12,
                                  ),
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(6),
                                    border: Border.all(
                                      color: Colors.grey.withOpacity(0.3),
                                    ),
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
                                    onChanged: (value) {
                                      // handle dropdown selection
                                    },
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),

                    const SizedBox(height: 20),

                    // PREMIUM PROFILES
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(child: _buildPremiumProfileCard()),
                        const SizedBox(width: 12),
                        Expanded(child: _buildPremiumProfileCard()),
                        const SizedBox(width: 12),
                        Expanded(child: _buildPremiumProfileCard()),
                      ],
                    ),
                    const SizedBox(height: 20),

                    // REGULAR PROFILES
                    _buildRegularProfileCard(
                      imageAsset: 'assets/profile1.jpg',
                      hasPhoto: true,
                    ),
                    const SizedBox(height: 16),

                    _buildRegularProfileCard(
                      imageAsset: 'assets/profile2.jpg',
                      hasPhoto: true,
                    ),
                    const SizedBox(height: 16),

                    _buildRegularProfileCard(imageAsset: null, hasPhoto: false),
                    const SizedBox(height: 20),

                    // PAGINATION
                    _buildPagination(),
                    const SizedBox(height: 16),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildPremiumProfileCard() {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(4),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 8,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Column(
        children: [
          // Profile image with crown
          Stack(
            alignment: Alignment.topRight,
            children: [
              Container(
              width: double.infinity,
              height: 150,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.vertical(top: Radius.circular(12)),
              ),
              child: ClipOval(
                  child: Image.asset(
                    'assets/images/Logo.jpg',
                    width: 50,
                    height: 50,
                    fit: BoxFit.cover,
                  ),
                ),

            ),
              Positioned(
                top: 8,
                right: 8,
                child: Container(
                  padding: const EdgeInsets.all(4),
                  decoration: const BoxDecoration(
                    color: Color(0xFFFFD700),
                    shape: BoxShape.circle,
                  ),
                  child: const Icon(
                    Icons.workspace_premium,
                    color: Colors.white,
                    size: 16,
                  ),
                ),
              ),
            ],
          ),

          // Profile details
          Padding(
            padding: const EdgeInsets.all(12),
            child: Column(
              children: [
                const Text(
                  'SHREEHARI',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
                ),
                const SizedBox(height: 4),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      '\$ 34',
                      style: TextStyle(
                        color: Colors.red,
                        fontWeight: FontWeight.bold,
                        fontSize: 12,
                      ),
                    ),
                    Text(
                      '.43',
                      style: TextStyle(color: Colors.grey, fontSize: 10),
                    ),
                    Text(
                      '/-min',
                      style: TextStyle(color: Colors.grey, fontSize: 10),
                    ),
                  ],
                ),
                const SizedBox(height: 8),
                const Text(
                  'Vedic, Numerology, Face Reading',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 10, color: Colors.grey),
                ),
                const Text(
                  'Telugu',
                  style: TextStyle(fontSize: 10, color: Colors.grey),
                ),
                const Text(
                  'Exp: 9 Years',
                  style: TextStyle(fontSize: 10, color: Colors.grey),
                ),
                const SizedBox(height: 12),

                // Connect button
                Container(
                  width: double.infinity,
                  height: 32,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFFFFD700),
                      foregroundColor: Colors.black,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16),
                      ),
                      textStyle: const TextStyle(
                        fontSize: 11,
                        fontWeight: FontWeight.bold,
                      ),
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

  Widget _buildRegularProfileCard({
    String? imageAsset,
    required bool hasPhoto,
  }) {
    return Container(
      decoration: BoxDecoration(
        color: const Color(0xFFF5F3E7),
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: Colors.brown.withOpacity(0.3)),
      ),
      child: Row(
        children: [
          // Profile image
          Container(
            width: 120,
            height: 140,
            margin: const EdgeInsets.all(12),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: hasPhoto ? null : const Color(0xFFD4AF37),
            ),
            child: Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child:
                      hasPhoto
                          ? Container(
                            color: Colors.grey[300],
                            child: const Icon(
                              Icons.person,
                              size: 60,
                              color: Colors.grey,
                            ),
                          )
                          : Container(color: const Color(0xFFD4AF37)),
                ),
                if (!hasPhoto)
                  Positioned(
                    bottom: 8,
                    left: 8,
                    right: 8,
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 8,
                        vertical: 4,
                      ),
                      decoration: BoxDecoration(
                        color: const Color(0xFFFFD700),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: const Text(
                        'REQUEST PHOTO',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 10,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                Positioned(
                  top: 8,
                  right: 8,
                  child: Container(
                    padding: const EdgeInsets.all(4),
                    decoration: const BoxDecoration(
                      color: Color(0xFFFFD700),
                      shape: BoxShape.circle,
                    ),
                    child: const Icon(
                      Icons.workspace_premium,
                      color: Colors.white,
                      size: 12,
                    ),
                  ),
                ),
              ],
            ),
          ),

          // Profile details
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      const Text(
                        'LP78488320',
                        style: TextStyle(
                          color: Color(0xFFD4AF37),
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                      const Spacer(),
                      PopupMenuButton(
                        icon: const Icon(Icons.more_vert, size: 20),
                        itemBuilder:
                            (context) => [
                              const PopupMenuItem(
                                child: Text('Add To Shortlist'),
                              ),
                              const PopupMenuItem(
                                child: Text("Don't Show Again"),
                              ),
                              const PopupMenuItem(child: Text('Block Profile')),
                              const PopupMenuItem(
                                child: Text('Report Profile/Photo'),
                              ),
                            ],
                      ),
                    ],
                  ),

                  Row(
                    children: [
                      Icon(Icons.circle, size: 8, color: Colors.green),
                      const SizedBox(width: 4),
                      const Text(
                        'Online 1h Ago',
                        style: TextStyle(fontSize: 12, color: Colors.grey),
                      ),
                      const SizedBox(width: 12),
                      const Icon(Icons.people, size: 14, color: Colors.grey),
                      const SizedBox(width: 4),
                      const Text(
                        'You & Him',
                        style: TextStyle(fontSize: 12, color: Colors.grey),
                      ),
                      const SizedBox(width: 12),
                      const Icon(Icons.star, size: 14, color: Colors.grey),
                      const SizedBox(width: 4),
                      const Text(
                        'Astro',
                        style: TextStyle(fontSize: 12, color: Colors.grey),
                      ),
                    ],
                  ),

                  const SizedBox(height: 8),
                  const Text(
                    "28 Yrs, 5'3\"",
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
                  ),
                  const Text(
                    'Tamil, Agamudayar',
                    style: TextStyle(fontSize: 12, color: Colors.grey),
                  ),
                  const Text(
                    'Chennai, Tamil Nadu',
                    style: TextStyle(fontSize: 12, color: Colors.grey),
                  ),
                  const Text(
                    'B.Eng (Hons)',
                    style: TextStyle(fontSize: 12, color: Colors.grey),
                  ),
                  const Text(
                    'Occupation: Company Secretary',
                    style: TextStyle(fontSize: 12, color: Colors.grey),
                  ),

                  const SizedBox(height: 12),
                  Row(
                    children: [
                      const Text(
                        'LIKED THIS PROFILE?',
                        style: TextStyle(
                          fontSize: 11,
                          color: Color(0xFFD4AF37),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const Spacer(),
                      TextButton(
                        onPressed: () {},
                        child: const Text(
                          'VIEW',
                          style: TextStyle(
                            color: Color(0xFFD4AF37),
                            fontWeight: FontWeight.bold,
                            fontSize: 11,
                          ),
                        ),
                      ),
                    ],
                  ),

                  Row(
                    children: [
                      Container(
                        padding: const EdgeInsets.all(4),
                        decoration: BoxDecoration(
                          color: const Color(0xFFFFD700),
                          shape: BoxShape.circle,
                        ),
                        child: const Icon(
                          Icons.check,
                          color: Colors.black,
                          size: 16,
                        ),
                      ),
                      const SizedBox(width: 8),
                      const Text(
                        'Connect Now',
                        style: TextStyle(fontSize: 12, color: Colors.grey),
                      ),
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

  Widget _buildPagination() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        _buildPaginationButton('«', false),
        _buildPaginationButton('‹', false),
        _buildPaginationButton('1', true),
        _buildPaginationButton('2', false),
        _buildPaginationButton('3', false),
        const Text('...', style: TextStyle(color: Colors.grey)),
        _buildPaginationButton('10', false),
        _buildPaginationButton('›', false),
        _buildPaginationButton('»', false),
      ],
    );
  }

  Widget _buildPaginationButton(String text, bool isActive) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 2),
      width: 32,
      height: 32,
      decoration: BoxDecoration(
        color: isActive ? const Color(0xFFFFD700) : Colors.white,
        border: Border.all(
          color:
              isActive ? const Color(0xFFFFD700) : Colors.grey.withOpacity(0.3),
        ),
        shape: BoxShape.circle,
      ),
      child: Center(
        child: Text(
          text,
          style: TextStyle(
            color: isActive ? Colors.black : Colors.grey,
            fontWeight: isActive ? FontWeight.bold : FontWeight.normal,
            fontSize: 12,
          ),
        ),
      ),
    );
  }
}
