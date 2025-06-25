import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class MatchesHeader extends StatelessWidget {
  const MatchesHeader({super.key});

  void _showMobileMenu(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return Container(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              ListTile(
                leading: const Icon(Icons.login),
                title: const Text('Login'),
                onTap: () {
                  Navigator.pop(context);
                  // Add login functionality
                },
              ),
              ListTile(
                leading: const Icon(Icons.help),
                title: const Text('Help'),
                onTap: () {
                  Navigator.pop(context);
                  // Add help functionality
                },
              ),
              const Divider(),
              ListTile(
                leading: const Icon(Icons.home),
                title: const Text('MY LALITHA PEETHAM'),
                onTap: () {
                  Navigator.pop(context);
                  context.go('');
                },
              ),
              ListTile(
                leading: const Icon(Icons.favorite),
                title: const Text('MATCHES'),
                onTap: () {
                  Navigator.pop(context);
                  context.go('');
                },
              ),
              ListTile(
                leading: const Icon(Icons.search),
                title: const Text('SEARCH'),
                onTap: () {
                  Navigator.pop(context);
                  context.go('/matri_search');
                },
              ),
              ListTile(
                leading: const Icon(Icons.inbox),
                title: const Text('INBOX'),
                onTap: () {
                  Navigator.pop(context);
                  context.go('');
                },
              ),
              const Divider(),
              ListTile(
                leading: const Icon(Icons.upgrade),
                title: const Text('UPGRADE NOW'),
                onTap: () {
                  Navigator.pop(context);
                  // Add upgrade functionality
                },
              ),
            ],
          ),
        );
      },
    );
  }

  void _showDesktopMenu(BuildContext context) {
    // Add desktop menu functionality if needed
  }

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
                _buildNavItem(context, 'HOME', ''),
                const SizedBox(width: 20),
                _buildNavItem(context, 'MATCHES', '/matches'),
                const SizedBox(width: 20),
                _buildNavItem(context, 'SEARCH', '/matri_search'),
                const SizedBox(width: 20),
                _buildNavItem(context, 'INBOX', '/messages'),
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
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Flexible(child: _buildNavItem(context, 'MY LALITHA PEETHAM', '')),
              SizedBox(width: isTablet ? 15 : 40),
              Flexible(child: _buildNavItem(context, 'MATCHES', '/matches')),
              SizedBox(width: isTablet ? 15 : 40),
              Flexible(
                child: _buildNavItem(context, 'SEARCH', '/matri_search'),
              ),
              SizedBox(width: isTablet ? 15 : 40),
              Flexible(child: _buildNavItem(context, 'INBOX', '/messages')),
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
        Expanded(child: _buildSubNavItem(context, 'New Matches', '/matches')),
        Expanded(
          child: _buildSubNavItem(context, 'Today Matches', '/tdy_matches'),
        ),
        Expanded(child: _buildSubNavItem(context, 'My Matches', '/my_matches')),
        Expanded(child: _buildSubNavItem(context, 'Near Me', '/Match_nearme')),
      ],
    );
  }

  Widget _buildDesktopSubNav(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _buildSubNavItem(context, 'New Matches', '/matches'),
        _buildSubNavItem(context, 'Today Matches', '/tdy_matches'),
        _buildSubNavItem(context, 'My Matches', '/my_matches'),
        _buildSubNavItem(context, 'Near Me', '/Match_nearme'),
      ],
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
