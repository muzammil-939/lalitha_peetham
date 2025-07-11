import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class FlowerDecoVendorHeader extends StatelessWidget {
  const FlowerDecoVendorHeader({super.key});

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

  @override
  Widget build(BuildContext context) {
    final isMobile = _isMobile(context);
    final isTablet = _isTablet(context);

    return Column(
      children: [
        // Top header
        Container(
          height: 70,
          color: const Color(0xffEDE5BA),
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
                      _buildHeaderButton('Login'),
                      const SizedBox(width: 20),
                      _buildHeaderButton('Help'),
                    ],
                  ),
                ),
              // Mobile menu icon
              if (isMobile)
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.menu, size: 24, color: Colors.black87),
                ),
            ],
          ),
        ),

        // Navigation bar
        Container(
          height: 60,
          color: const Color(0xffD4BB26),
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child:
              isMobile
                  ? _buildMobileNav(context)
                  : _buildDesktopNav(context, isTablet),
        ),

        // Sub navigation bar
        Container(
          height: 60,
          color: const Color(0xffEDE5BA),
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child:
              isMobile
                  ? _buildMobileSubNav(context)
                  : _buildDesktopSubNav(context),
        ),
      ],
    );
  }

  Widget _buildMobileNav(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                _buildNavItem(context, 'SEARCH', 'null'),
                const SizedBox(width: 20),
                _buildNavItem(context, 'INBOX', 'null'),
                const SizedBox(width: 20),
              ],
            ),
          ),
        ),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
          decoration: BoxDecoration(
            border: Border.all(color: Colors.white, width: 1.5),
            borderRadius: BorderRadius.circular(4),
          ),
          child: const Text(
            'UPGRADE',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w600,
              fontSize: 10,
              letterSpacing: 0.3,
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildDesktopNav(BuildContext context, bool isTablet) {
    return Row(
      children: [
        Expanded(
          flex: 3,
          child: Row(
            children: [
              SizedBox(width: isTablet ? 40 : 80),
              Flexible(child: _buildNavItem(context, 'FLOWER DECORATION ', '')),
              SizedBox(width: isTablet ? 20 : 40),
              Flexible(
                child: _buildNavItem(
                  context,
                  '(Contractor Portal)',
                  '/matches',
                ),
              ),
            ],
          ),
        ),
        SizedBox(width: isTablet ? 20 : 50),
        Expanded(
          flex: 2,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Flexible(
                child: Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 16,
                    vertical: 8,
                  ),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.white, width: 1.5),
                    borderRadius: BorderRadius.circular(4),
                  ),
                  child: Text(
                    'UPGRADE NOW',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                      fontSize: isTablet ? 11 : 13,
                      letterSpacing: 0.5,
                    ),
                  ),
                ),
              ),
              SizedBox(width: isTablet ? 15 : 30),
              Flexible(
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      'HELP',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                        fontSize: isTablet ? 11 : 13,
                        letterSpacing: 0.5,
                      ),
                    ),
                    const SizedBox(width: 5),
                    const Icon(
                      Icons.keyboard_arrow_down,
                      color: Colors.white,
                      size: 18,
                    ),
                  ],
                ),
              ),
              SizedBox(width: isTablet ? 15 : 30),
              Container(
                width: isTablet ? 30 : 35,
                height: isTablet ? 30 : 35,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(isTablet ? 15 : 17.5),
                  border: Border.all(color: Colors.white, width: 2),
                  image: const DecorationImage(
                    image: NetworkImage(
                      'https://via.placeholder.com/35x35/8B4513/FFFFFF?text=P',
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              const SizedBox(width: 5),
              const Icon(
                Icons.keyboard_arrow_down,
                color: Colors.white,
                size: 18,
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildMobileSubNav(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: _buildSubNavItem(
            context,
            'Dashboard',
            '/flower_deco_vendor_dash',
          ),
        ),
        Expanded(
          child: _buildSubNavItem(context, 'Booking Management', 'null'),
        ),
        Expanded(child: _buildSubNavItem(context, 'Services', 'null')),
        Expanded(
          child: _buildSubNavItem(
            context,
            'Profile',
            '/flower_deco_vendor_profile',
          ),
        ),
        Expanded(child: _buildSubNavItem(context, 'Gallery', 'null')),
        Expanded(child: _buildSubNavItem(context, 'Settings', 'null')),
        Expanded(child: _buildMoreDropdown(context, true)),
      ],
    );
  }

  Widget _buildDesktopSubNav(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Expanded(
          child: _buildSubNavItem(
            context,
            'Dashboard',
            '/flower_deco_vendor_dash',
          ),
        ),
        Expanded(
          child: _buildSubNavItem(context, 'Booking Management', 'null'),
        ),
        Expanded(child: _buildSubNavItem(context, 'Services', 'null')),
        Expanded(
          child: _buildSubNavItem(
            context,
            'Profile',
            '/flower_deco_vendor_profile',
          ),
        ),
        Expanded(child: _buildSubNavItem(context, 'Gallery', 'null')),
        Expanded(child: _buildSubNavItem(context, 'Settings', 'null')),
        Expanded(child: _buildMoreDropdown(context, true)),
      ],
    );
  }

  Widget _buildMoreDropdown(BuildContext context, bool isMobile) {
    return PopupMenuButton<String>(
      onSelected: (String value) {
        switch (value) {
          case 'notifications':
            context.go('/flower_deco_vendor_notisettings');
            break;
          case 'settings':
            context.go('/flower_deco_vendor_settings');
            break;
        }
      },
      itemBuilder:
          (BuildContext context) => [
            const PopupMenuItem<String>(
              value: 'settings',
              child: Row(
                children: [
                  Icon(Icons.shopping_bag, size: 20, color: Colors.black87),
                  SizedBox(width: 8),
                  Text('Settings'),
                ],
              ),
            ),

            const PopupMenuItem<String>(
              value: 'notifications',
              child: Row(
                children: [
                  Icon(Icons.notifications, size: 20, color: Colors.black87),
                  SizedBox(width: 8),
                  Text('Notifications'),
                ],
              ),
            ),
          ],
      child: TextButton(
        onPressed: null, // Let PopupMenuButton handle the press
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              'Settings',
              style: TextStyle(
                color: Colors.black87,
                fontWeight: FontWeight.w500,
                decorationThickness: 1.5,
                fontSize: isMobile ? 12 : 16,
              ),
              overflow: TextOverflow.ellipsis,
              maxLines: 1,
              textAlign: TextAlign.center,
            ),
            const SizedBox(width: 4),
            Icon(
              Icons.keyboard_arrow_down,
              color: Colors.black87,
              size: isMobile ? 16 : 18,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildHeaderButton(String text) => Text(
    text,
    style: const TextStyle(
      fontSize: 18,
      color: Colors.black87,
      fontWeight: FontWeight.w500,
    ),
  );

  Widget _buildNavItem(BuildContext context, String text, String route) {
    final isTablet = _isTablet(context);

    return GestureDetector(
      onTap: () => context.go(route),
      child: Text(
        text,
        style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
          decorationColor: Colors.white,
          fontSize: isTablet ? 14 : 16,
          letterSpacing: 0.5,
          decorationThickness: 1.5,
        ),
        overflow: TextOverflow.ellipsis,
        maxLines: 1,
      ),
    );
  }

  Widget _buildSubNavItem(BuildContext context, String text, String route) {
    final isMobile = _isMobile(context);
    return TextButton(
      onPressed: () => context.go(route),
      child: Text(
        text,
        style: TextStyle(
          color: Colors.black87,
          fontWeight: FontWeight.w500,
          decorationThickness: 1.5,
          fontSize: isMobile ? 12 : 16,
        ),
        overflow: TextOverflow.ellipsis,
        maxLines: 1,
        textAlign: TextAlign.center,
      ),
    );
  }
}
