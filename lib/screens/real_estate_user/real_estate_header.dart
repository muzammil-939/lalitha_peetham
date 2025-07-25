import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class RealEstateHeader extends StatefulWidget {
  const RealEstateHeader({super.key});

  @override
  State<RealEstateHeader> createState() => _RealEstateHeaderState();
}

class _RealEstateHeaderState extends State<RealEstateHeader> {
  String? _selectedDropdown;

  bool _isMobile(BuildContext context) => MediaQuery.of(context).size.width < 768;
  bool _isTablet(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return width >= 768 && width < 1024;
  }
  bool _isDesktop(BuildContext context) => MediaQuery.of(context).size.width >= 1024;

  void _toggleDropdown(String item) {
    setState(() {
      _selectedDropdown = _selectedDropdown == item ? null : item;
    });
  }

  void _closeDropdown() {
    setState(() {
      _selectedDropdown = null;
    });
  }

  @override
  Widget build(BuildContext context) {
    final isMobile = _isMobile(context);

    return GestureDetector(
      onTap: _closeDropdown,
      child: Column(
        children: [
          // Top header
          Container(
            height: 70,
            color: const Color(0xffD4BB26),
            padding: EdgeInsets.symmetric(horizontal: isMobile ? 10 : 20),
            child: Row(
              children: [
                // Logo and title
                Expanded(
                  flex: isMobile ? 4 : 3,
                  child: Row(
                    children: [
                      SizedBox(width: isMobile ? 5 : 15),
                      Container(
                        width: isMobile ? 40 : 50,
                        height: isMobile ? 40 : 50,
                        child: Image.asset(
                          'assets/images/Logo.jpg',
                          fit: BoxFit.cover,
                        ),
                      ),
                      SizedBox(width: isMobile ? 8 : 12),
                      if (!isMobile)
                        const Icon(Icons.menu, size: 24, color: Colors.black87),
                      if (!isMobile)
                        const SizedBox(width: 10),
                      Expanded(
                        child: FittedBox(
                          fit: BoxFit.scaleDown,
                          alignment: Alignment.centerLeft,
                          child: Text(
                            'MY LALITHA PEETHAM / REAL ESTATE',
                            style: TextStyle(
                              fontSize: isMobile ? 16 : 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.black87,
                              letterSpacing: isMobile ? 0.8 : 1.2,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                // Login/Help section
                if (!isMobile)
                  Expanded(
                    flex: 2,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        _buildHeaderButton(context, 'Login', ''),
                        const SizedBox(width: 20),
                        _buildHeaderButton(context, 'Help', ''),
                      ],
                    ),
                  ),
                // Mobile menu icon
                if (isMobile)
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.menu,
                      size: 24,
                      color: Colors.black87,
                    ),
                  ),
              ],
            ),
          ),
          // Sub navigation bar with dropdowns
          Container(
            height: 60,
            color: const Color(0xffD4BB26),
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: isMobile
                ? _buildMobileSubNav(context)
                : _buildDesktopSubNav(context),
          ),
          // Dropdown content
          if (_selectedDropdown != null && !isMobile) _buildDropdownContent(),
        ],
      ),
    );
  }

  // ---- NAVIGATION BARS ----

  Widget _buildMobileSubNav(BuildContext context) {
    return Row(
      children: [
        Expanded(child: _buildMobileDropdown(context, 'BENGALORE')),
        Expanded(child: _buildMobileDropdown(context, 'BUY')),
        Expanded(child: _buildMobileDropdown(context, 'RENT')),
        Expanded(child: _buildMobileDropdown(context, 'PG')),
        Expanded(child: _buildMobileDropdown(context, 'PROJECTS')),
        Expanded(child: _buildMobileDropdown(context, 'AGENTS')),
        Expanded(child: _buildMobileDropdown(context, 'SERVICES')),
        SizedBox(width: 24),
        _buildPostPropertyButton(context),
        SizedBox(width: 10),
        Expanded(child: _buildMobileDropdown(context, 'HELP')),
      ],
    );
  }

  Widget _buildDesktopSubNav(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        _buildSubNavItem(context, 'BENGALORE'),
        _buildSubNavItem(context, 'BUY'),
        _buildSubNavItem(context, 'RENT'),
        _buildSubNavItem(context, 'PG'),
        _buildSubNavItem(context, 'PROJECTS'),
        _buildSubNavItem(context, 'AGENTS'),
        _buildSubNavItem(context, 'SERVICES'),
        SizedBox(width: 24),
        _buildPostPropertyButton(context),
        SizedBox(width: 10),
        _buildSubNavItem(context, 'HELP'),
      ],
    );
  }

  // ---- DROPDOWNS: Only for RENT, PG, PROJECTS, SERVICES ----

  Widget _buildDropdownContent() {
    if (_selectedDropdown == null) return const SizedBox.shrink();

    return GestureDetector(
      onTap: _closeDropdown,
      behavior: HitTestBehavior.translucent,
      child: Container(
        padding: const EdgeInsets.all(20),
        child: GestureDetector(
          onTap: () {}, // Prevent closing when clicking on dropdown content
          child: _getDropdownWidget(_selectedDropdown!),
        ),
      ),
    );
  }

  Widget _getDropdownWidget(String category) {
    switch (category) {
      case 'RENT':
        return _buildRentDropdown();
      case 'PG':
        return _buildPgDropdown();
      case 'PROJECTS':
        return _buildProjectsDropdown();
      case 'SERVICES':
        return _buildServicesDropdown();
      default:
        return const SizedBox.shrink();
    }
  }

  Widget _buildRentDropdown() {
    return Container(
      width: 1000,
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12.0),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 10,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          _buildRentColumn(
            title: "Property By Locality",
            items: [
              "Property For Sale In Bangalore",
              "Property For Sale In Whitefield",
              "Property For Sale In Electronic City",
              "Property For Sale In Devanahalli",
              "Property For Sale In Sarjapur Road",
            ],
          ),
          _buildRentColumn(
            title: "Property By Type",
            items: [
              "Property For Sale In Bangalore",
              "Residential Plots For Sale In Bangalore",
              "House For Sale In Bangalore",
              "Villa For Sale In Bangalore",
              "Commercial And For Sale In Bangalore",
            ],
          ),
          _buildRentColumn(
            title: "Property By BHK",
            items: [
              "1 BHK Property For Sale In Bangalore",
              "2 BHK Property For Sale In Bangalore",
              "3 BHK Property For Sale In Bangalore",
              "4 BHK Property For Sale In Bangalore",
              "5 BHK Property For Sale In Bangalore",
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildRentColumn({required String title, required List<String> items}) {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16,
              letterSpacing: 0.5,
            ),
          ),
          const SizedBox(height: 12),
          ...items.map(
            (item) => Padding(
              padding: const EdgeInsets.symmetric(vertical: 6.0),
              child: TextButton(
                onPressed: () {
                  _closeDropdown();
                  // Replace below with actual navigation if needed
                  print('Selected: $item');
                },
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    item,
                    style: TextStyle(
                      color: Colors.grey[700],
                      fontSize: 15,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildProjectsDropdown() {
    return Container(
      width: 1000,
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12.0),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 10,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          _buildProjectsColumn(
            title: "Property By Locality",
            items: [
              "Property For Sale In Bangalore",
              "Property For Sale In Whitefield",
              "Property For Sale In Electronic City",
              "Property For Sale In Devanahalli",
              "Property For Sale In Sarjapur Road",
            ],
          ),
          _buildProjectsColumn(
            title: "Property By Type",
            items: [
              "Property For Sale In Bangalore",
              "Residential Plots For Sale In Bangalore",
              "House For Sale In Bangalore",
              "Villa For Sale In Bangalore",
              "Commercial And For Sale In Bangalore",
            ],
          ),
          _buildProjectsColumn(
            title: "Property By BHK",
            items: [
              "1 BHK Property For Sale In Bangalore",
              "2 BHK Property For Sale In Bangalore",
              "3 BHK Property For Sale In Bangalore",
              "4 BHK Property For Sale In Bangalore",
              "5 BHK Property For Sale In Bangalore",
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildProjectsColumn({required String title, required List<String> items}) {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16,
              letterSpacing: 0.5,
            ),
          ),
          const SizedBox(height: 12),
          ...items.map(
            (item) => Padding(
              padding: const EdgeInsets.symmetric(vertical: 6.0),
              child: TextButton(
                onPressed: () {
                  _closeDropdown();
                  print('Selected: $item');
                },
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    item,
                    style: TextStyle(
                      color: Colors.grey[700],
                      fontSize: 15,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildPgDropdown() {
    return Container(
      width: 500,
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12.0),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 10,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          _buildPgColumn(
            title: "Pg In Bengalore",
            items: [
              "Pg For Rent In Bangalore",
              "Pg For Rent In Whitefield",
              "Pg For Rent In Electronic City",
              "Pg For Rent In Devanahalli",
              "Pg For Rent In Sarjapur Road",
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildPgColumn({required String title, required List<String> items}) {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16,
              letterSpacing: 0.5,
            ),
          ),
          const SizedBox(height: 12),
          ...items.map(
            (item) => Padding(
              padding: const EdgeInsets.symmetric(vertical: 6.0),
              child: TextButton(
                onPressed: () {
                  _closeDropdown();
                  print('Selected: $item');
                },
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    item,
                    style: TextStyle(
                      color: Colors.grey[700],
                      fontSize: 15,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildServicesDropdown() {
    return Container(
      width: 1000,
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12.0),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 10,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          _buildServicesColumn(
            title: "For Owner",
            items: [
              "Post Property For Sale / Rent",
              "Property Promotion / Ads",
              "Dashboard / My Listings",
              "Submit Your Property Requirement",
            ],
          ),
          _buildServicesColumn(
            title: "For Agents",
            items: [
              "Property Leads",
              "Post Multiple Listings",
              "Dashboard / My Listings",
              "Subscription Pages",
            ],
          ),
          _buildServicesColumn(
            title: "Services In Bangalore",
            items: [
              "Architects In Bangalore",
              "Building Contractors In Bangalore",
              "Interior Decorators In Bangalore",
              "Builders In Bangalore",
              "Vastu Consultant In Bangalore",
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildServicesColumn({required String title, required List<String> items}) {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16,
              letterSpacing: 0.5,
            ),
          ),
          const SizedBox(height: 12),
          ...items.map(
            (item) => Padding(
              padding: const EdgeInsets.symmetric(vertical: 6.0),
              child: TextButton(
                onPressed: () {
                  _closeDropdown();
                  print('Selected: $item');
                },
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    item,
                    style: TextStyle(
                      color: Colors.grey[700],
                      fontSize: 15,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  // ---- BUTTONS/STUBS ----

  Widget _buildMobileDropdown(BuildContext context, String text) {
    return TextButton(
      onPressed: () {
        // Optional: could pop up a simple menu for mobile
      },
      child: Text(
        text,
        style: const TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.w500,
          fontSize: 12,
        ),
        overflow: TextOverflow.ellipsis,
        maxLines: 1,
        textAlign: TextAlign.center,
      ),
    );
  }

  Widget _buildHeaderButton(context, String text, String path) => TextButton(
        onPressed: () {},
        child: Text(
          text,
          style: const TextStyle(
            fontSize: 18,
            color: Colors.black87,
            fontWeight: FontWeight.w500,
          ),
        ),
      );

  Widget _buildSubNavItem(BuildContext context, String text) {
    final isMobile = _isMobile(context);
    final isSelected = _selectedDropdown == text;

    // Only open dropdown for menu items which have dropdowns:
    final arrowMenus = [
  'RENT', 'PG', 'PROJECTS', 'SERVICES',
  'BENGALORE', 'BUY', 'AGENTS', 'HELP' // add here to show arrows for "other" items
];

final showArrow = arrowMenus.contains(text);

    return GestureDetector(
  onTap: showArrow ? () => _toggleDropdown(text) : null,
  child: Container(
    padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
    decoration: BoxDecoration(
      color: isSelected ? Colors.white.withOpacity(0.1) : Colors.transparent,
      borderRadius: BorderRadius.circular(4),
    ),
    child: Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          text,
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w500,
            decorationThickness: 1.5,
            fontSize: isMobile ? 12 : 16,
          ),
          overflow: TextOverflow.ellipsis,
          maxLines: 1,
          textAlign: TextAlign.center,
        ),
        if (showArrow) ...[
          const SizedBox(width: 4),
          AnimatedRotation(
            turns: isSelected ? 0.5 : 0,
            duration: const Duration(milliseconds: 200),
            child: const Icon(
              Icons.arrow_drop_down,
              color: Colors.white,
              size: 20,
            ),
          ),
        ],
      ],
    ),
  ),
);
  }

  Widget _buildPostPropertyButton(BuildContext context) {
    return Container(
      height: 38,
      margin: const EdgeInsets.symmetric(vertical: 10),
      child: OutlinedButton(
        style: OutlinedButton.styleFrom(
          backgroundColor: Colors.transparent,
          side: const BorderSide(color: Colors.white, width: 2),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(4),
          ),
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 8),
        ),
        onPressed: () {
          print('Post Property Clicked!');
          // Example: context.go('/post-property');
        },
        child: const Text(
          'POST PROPERTY',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 18,
            letterSpacing: 1.1,
          ),
        ),
      ),
    );
  }
}
