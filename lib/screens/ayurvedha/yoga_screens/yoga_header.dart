import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class YogaHeader extends StatefulWidget {
  const YogaHeader({super.key});

  @override
  State<YogaHeader> createState() => _YogaHeaderState();
}

class _YogaHeaderState extends State<YogaHeader> {
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
                            'MY LALITHA PEETHAM',
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
        Expanded(child: _buildMobileDropdown(context, 'ONLINE CLASSES')),
        Expanded(child: _buildMobileDropdown(context, 'YOGA THERAPHY')),
        Expanded(child: _buildMobileDropdown(context, 'PREGNANNCY YOGA')),
        Expanded(child: _buildMobileDropdown(context, 'COURSES & TRAINING')),
      ],
    );
  }

  Widget _buildDesktopSubNav(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _buildSubNavItem(context, 'ONLINE CLASSES'),
        _buildSubNavItem(context, 'YOGA THERAPHY'),
        _buildSubNavItem(context, 'PREGNANNCY YOGA'),
        _buildSubNavItem(context, 'COURSES & TRAINING'),
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
              'Personalised Yoga Classes',
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
      case 'ONLINE CLASSES':
        return _buildOnlineClassesDropdown();
      case 'PREGNANNCY YOGA':
        return _buildPregnancyYogaDropdown();
      case 'COURSES & TRAINING':
        return _buildCoursesTrainingDropdown();
      case 'YOGA THERAPHY':
        return _buildYogaTherapyDropdown();
      default:
        return const SizedBox.shrink();
    }
  }

  Widget _buildOnlineClassesDropdown() {
    return Container(
      width: 350,
      height: 440,
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
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Online Classes',
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
            _buildClassItem(
              'One To One Online Yoga Classes',
              '/one_to_one_yogareg',
            ),
            const SizedBox(height: 16.0),
            _buildClassItem('Online Meditation Classes', ''),
            const SizedBox(height: 16.0),
            _buildClassItem('Yoga For Kids', ''),
            const SizedBox(height: 16.0),
            _buildClassItem('Online Seniors Yoga', ''),
            const SizedBox(height: 16.0),
            _buildClassItem('Online Beginners Yoga', ''),
            const SizedBox(height: 16.0),
            _buildClassItem('Yoga For Corporates (Karya Yoga)', ''),
            const SizedBox(height: 16.0),
            _buildClassItem('Online Women Yoga', ''),
          ],
        ),
      ),
    );
  }

  Widget _buildPregnancyYogaDropdown() {
    return Container(
      width: 350,
      height: 200,
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
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Pregnancy Yoga',
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
                color: Colors.black,
                letterSpacing: 1.2,
              ),
            ),
            const SizedBox(height: 24.0),
            _buildClassItem('pregnancy yoga', '/pregnancy_yoga'),
            const SizedBox(height: 16.0),
            _buildClassItem('online post natal yoga classes', ''),
            const SizedBox(height: 16.0),
            _buildClassItem('online fertility yoga classes', ''),
          ],
        ),
      ),
    );
  }

  Widget _buildCoursesTrainingDropdown() {
    return Container(
      width: 500,
      height: 420,
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
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Courses & Training',
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
                color: Colors.black,
                letterSpacing: 1.2,
              ),
            ),
            const SizedBox(height: 24.0),
            _buildClassItem(
              '200 hours online yoga teacher training | level 1 | certifies',
              '',
            ),
            const SizedBox(height: 16.0),
            _buildClassItem('500 hours online yoga teacher training ', ''),
            const SizedBox(height: 16.0),
            _buildClassItem(
              '900 hours online yoga teacher training | level 3 |yCB certifies ',
              '',
            ),
            const SizedBox(height: 16.0),
            _buildClassItem('online preganancy yoga teacher training ', ''),
            const SizedBox(height: 16.0),
            _buildClassItem('online kids yoga teacher training ', ''),
            const SizedBox(height: 16.0),
            _buildClassItem('online face yoga teacher  training ', ''),
            const SizedBox(height: 16.0),
            _buildClassItem('Yoga For Corporates (Karya Yoga)', ''),
            const SizedBox(height: 16.0),
            _buildClassItem('online meditation yoga teacher  training ', ''),
          ],
        ),
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
                _buildClassItem('Yoga For Kids', ''),
                const SizedBox(height: 16.0),
                _buildClassItem('Online Seniors Yoga', ''),
                const SizedBox(height: 16.0),
                _buildClassItem('Online Beginners Yoga', ''),
                const SizedBox(height: 16.0),
                _buildClassItem('Yoga For Corporates (Karya Yoga)', ''),
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
                _buildClassItem('Yoga For Kids', ''),
                const SizedBox(height: 16.0),
                _buildClassItem('Online Seniors Yoga', ''),
                const SizedBox(height: 16.0),
                _buildClassItem('Online Beginners Yoga', ''),
                const SizedBox(height: 16.0),
                _buildClassItem('Yoga For Corporates (Karya Yoga)', ''),
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
                _buildClassItem('Yoga For Kids', ''),
                const SizedBox(height: 16.0),
                _buildClassItem('Online Seniors Yoga', ''),
                const SizedBox(height: 16.0),
                _buildClassItem('Online Beginners Yoga', ''),
                const SizedBox(height: 16.0),
                _buildClassItem('Yoga For Corporates (Karya Yoga)', ''),
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
