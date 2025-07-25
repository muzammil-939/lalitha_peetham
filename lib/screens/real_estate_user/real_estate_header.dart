import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class RealEstateHeader extends StatefulWidget {
  const RealEstateHeader({super.key});

  @override
  State<RealEstateHeader> createState() => _RealEstateHeaderState();
}

class _RealEstateHeaderState extends State<RealEstateHeader> {
  String? _selectedDropdown;

  bool _isMobile(BuildContext context) {
    return MediaQuery.of(context).size.width < 768;
  }

  bool _isTablet(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return width >= 768 && width < 1024;
  }

  bool _isDesktop(BuildContext context) {
    return MediaQuery.of(context).size.width >= 1024;
  }

  void _toggleDropdown(String item) {
    setState(() {
      if (_selectedDropdown == item) {
        _selectedDropdown = null; // Close if already open
      } else {
        _selectedDropdown = item; // Open new dropdown
      }
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
    final isTablet = _isTablet(context);

    return GestureDetector(
      onTap: _closeDropdown, // Close dropdown when tapping outside
      child: Column(
        children: [
          // Top header
          Container(
            height: 70,
            color: const Color(0xffD4BB26),
            padding: EdgeInsets.symmetric(horizontal: isMobile ? 10 : 20),
            child: Row(
              children: [
                // Logo and title section
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
                      if (!isMobile) const SizedBox(width: 10),
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
            child:
                isMobile
                    ? _buildMobileSubNav(context)
                    : _buildDesktopSubNav(context),
          ),
          // Dropdown content
          if (_selectedDropdown != null && !isMobile) _buildDropdownContent(),
        ],
      ),
    );
  }

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
        Expanded(child: _buildMobileDropdown(context, 'HELP')),
      ],
    );
  }

  Widget _buildDesktopSubNav(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _buildSubNavItem(context, 'BENGALORE'),
        _buildSubNavItem(context, 'BUY'),
        _buildSubNavItem(context, 'RENT'),
        _buildSubNavItem(context, 'PG'),
        _buildSubNavItem(context, 'PROJECTS'),
        _buildSubNavItem(context, 'AGENTS'),
        _buildSubNavItem(context, 'SERVICES'),
        _buildSubNavItem(context, 'HELP'),
      ],
    );
  }

  Widget _buildMobileDropdown(BuildContext context, String text) {
    return PopupMenuButton<String>(
      onSelected: (String value) {
        // Handle selection
        print('Selected: $value from $text');
      },
      itemBuilder: (BuildContext context) {
        List<String> items = [];
        switch (text) {
          case 'ONLINE CLASSES':
            items = [
              'Personalised Yoga Classes',
              'One To One Online Yoga Classes',
              'Online Meditation Classes',
              'Yoga For Kids',
              'Online Seniors Yoga',
              'Online Beginners Yoga',
              'Yoga For Corporates (Karya Yoga)',
              'Online Women Yoga',
            ];
            break;
          case 'PREGNANNCY YOGA':
            items = [
              'pregnancy yoga',
              'online post natal yoga classes',
              'online fertility yoga classes',
            ];
            break;
          case 'COURSES & TRAINING':
            items = [
              '200 hours online yoga teacher training | level 1 | certifies',
              '500 hours online yoga teacher training ',
              '900 hours online yoga teacher training | level 3 |yCB certifies ',
              'online preganancy yoga teacher training ',
              'online kids yoga teacher training ',
              'online face yoga teacher  training ',
              'Yoga For Corporates (Karya Yoga)',
              'online meditation yoga teacher  training ',
            ];
            break;
          case 'YOGA THERAPHY':
            items = [
              'Online Back Pain Yoga',
              'One To One Online Yoga Classes',
              'Online Meditation Classes',
              'Yoga For Kids',
              'Online Seniors Yoga',
              'Online Beginners Yoga',
              'Yoga For Corporates (Karya Yoga)',
              'Online Women Yoga',
              'online yoga for mental health',
              'online aerobics classes',
            ];
            break;
        }

        return items
            .map(
              (String item) => PopupMenuItem<String>(
                value: item,
                child: Text(item, style: const TextStyle(fontSize: 14)),
              ),
            )
            .toList();
      },
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 8),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Flexible(
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
            ),
            const Icon(Icons.arrow_drop_down, color: Colors.white, size: 16),
          ],
        ),
      ),
    );
  }

  Widget _buildHeaderButton(context, String text, String path) => TextButton(
    onPressed: () {
      // Handle navigation if needed
    },
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

    return GestureDetector(
      onTap: () => _toggleDropdown(text),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        decoration: BoxDecoration(
          color:
              isSelected ? Colors.white.withOpacity(0.1) : Colors.transparent,
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
        ),
      ),
    );
  }

  Widget _buildDropdownContent() {
    if (_selectedDropdown == null) return const SizedBox.shrink();

    return Container(
      child: GestureDetector(
        onTap: _closeDropdown,
        behavior: HitTestBehavior.translucent,
        child: Container(
          padding: const EdgeInsets.all(20),
          child: GestureDetector(
            onTap: () {}, // Prevent closing when clicking on dropdown content
            child: _getDropdownWidget(_selectedDropdown!),
          ),
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

  Widget _buildYogaTherapyDropdown() {
    final screenWidth = MediaQuery.of(context).size.width;
    return Container(
      width: screenWidth * 0.9,
      height: 500,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16.0),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 10.0,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Yoga Theraphy',
                  style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                    letterSpacing: 1.2,
                  ),
                ),
                const SizedBox(height: 24.0),
                _buildClassItem(
                  'Online Back Pain Yoga',
                  '/theraphy_backpain_form',
                ),
                const SizedBox(height: 16.0),
                _buildClassItem('One To One Online Yoga Classes', ''),
                const SizedBox(height: 16.0),
                _buildClassItem('Online Meditation Classes', ''),
                const SizedBox(height: 16.0),
                _buildClassItem('Yoga For Kids', '/yoga_for_kids_form'),
                const SizedBox(height: 16.0),
                _buildClassItem('Online Seniors Yoga', ''),
                const SizedBox(height: 16.0),
                _buildClassItem('Online Beginners Yoga', ''),
                const SizedBox(height: 16.0),
                _buildClassItem(
                  'Yoga For Corporates (Karya Yoga)',
                  '/yoga_for_corporates_form',
                ),
                const SizedBox(height: 16.0),
                _buildClassItem('Online Women Yoga', ''),
              ],
            ),
          ),
          Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'ONLINE CLASSES',
                  style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                    letterSpacing: 1.2,
                  ),
                ),
                const SizedBox(height: 24.0),
                _buildClassItem('Personalised Yoga Classes', ''),
                const SizedBox(height: 16.0),
                _buildClassItem('One To One Online Yoga Classes', ''),
                const SizedBox(height: 16.0),
                _buildClassItem('Online Meditation Classes', ''),
                const SizedBox(height: 16.0),
                _buildClassItem('Yoga For Kids', '/yoga_for_kids_form'),
                const SizedBox(height: 16.0),
                _buildClassItem('Online Seniors Yoga', ''),
                const SizedBox(height: 16.0),
                _buildClassItem('Online Beginners Yoga', ''),
                const SizedBox(height: 16.0),
                _buildClassItem(
                  'Yoga For Corporates (Karya Yoga)',
                  '/yoga_for_corporates_form',
                ),
                const SizedBox(height: 16.0),
                _buildClassItem('Online Women Yoga', ''),
              ],
            ),
          ),
          Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Other',
                  style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                    letterSpacing: 1.2,
                  ),
                ),
                const SizedBox(height: 24.0),
                _buildClassItem('online yoga for mental health', ''),
                const SizedBox(height: 16.0),
                _buildClassItem('online aerobics classes', ''),
                const SizedBox(height: 16.0),
                _buildClassItem('Online Meditation Classes', ''),
                const SizedBox(height: 16.0),
                _buildClassItem('General Yoga', '/general_yoga'),
                const SizedBox(height: 16.0),
                _buildClassItem('Yoga For Kids', '/yoga_for_kids_form'),
                const SizedBox(height: 16.0),
                _buildClassItem('Online Seniors Yoga', ''),
                const SizedBox(height: 16.0),
                _buildClassItem('Online Beginners Yoga', ''),
                const SizedBox(height: 16.0),
                _buildClassItem(
                  'Yoga For Corporates (Karya Yoga)',
                  '/yoga_for_corporates_form',
                ),
                const SizedBox(height: 16.0),
                _buildClassItem('Online Women Yoga', ''),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildClassItem(String text, String route) {
    return TextButton(
      onPressed: () {
        // Close dropdown first
        _closeDropdown();

        // Then navigate if route is provided
        if (route.isNotEmpty) {
          context.go(route);
        }

        // Debug print
        print('Selected: $text, Route: $route');
      },
      child: Container(
        alignment: Alignment.centerLeft,
        child: Text(
          text,
          style: TextStyle(
            fontSize: 16.0,
            color: Colors.grey[600],
            height: 1.4,
          ),
        ),
      ),
    );
  }
}
