import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class AyurvedhHeader extends StatelessWidget {
  const AyurvedhHeader({super.key});

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
                  icon: const Icon(Icons.menu, size: 24, color: Colors.black87),
                ),
            ],
          ),
        ),
        // Sub navigation bar
        Container(
          height: 60,
          color: const Color(0xffD4BB26),
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child:
              isMobile
                  ? _buildMobileSubNav(context)
                  : _buildDesktopSubNav(context),
        ),
      ],
    );
  }

  Widget _buildMobileSubNav(BuildContext context) {
    return Row(
      children: [
        Expanded(child: _buildSubNavItem(context, 'Article’s', '')),
        Expanded(child: _buildSubNavItem(context, 'Case Discussions', '')),
        Expanded(
          child: _buildSubNavItem(
            context,
            'Find  Doctor',
            '/ayurvedha_find_doc',
          ),
        ),
        Expanded(child: _buildSubNavItem(context, 'Buy Herbs & Medicines', '')),
        Expanded(child: _buildSubNavItem(context, 'Blog', '')),
        Expanded(child: _buildMoreDropdown(context, false)),
      ],
    );
  }

  Widget _buildDesktopSubNav(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _buildSubNavItem(context, 'Article’s', '/ayurvedha_articles'),
        _buildSubNavItem(context, 'Case Discussions', ''),
        _buildSubNavItem(context, 'Find Doctor', '/ayurvedha_find_doc'),
        _buildSubNavItem(context, 'Buy Herbs & Medicines', ''),
        _buildSubNavItem(context, 'Blog', ''),
        _buildMoreDropdown(context, false),
      ],
    );
  }

  Widget _buildMoreDropdown(BuildContext context, bool isMobile) {
    return PopupMenuButton<String>(
      onSelected: (String value) {
        switch (value) {
          case 'notifications':
            context.go('/notifications');
            break;
          case 'patient_reg':
            context.go('/ayurvedha_patient_reg');
            break;
        }
      },
      itemBuilder:
          (BuildContext context) => [
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
            const PopupMenuItem<String>(
              value: 'patient_reg',
              child: Row(
                children: [
                  Icon(
                    Icons.medical_services_rounded,
                    size: 20,
                    color: Colors.black87,
                  ),
                  SizedBox(width: 8),
                  Text('Patient Reg'),
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
              'More',
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
            Icon(
              Icons.keyboard_arrow_down,
              color: Colors.white,
              size: isMobile ? 16 : 18,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildHeaderButton(context, String text, String path) => TextButton(
    onPressed: () => context.go(path),
    child: Text(
      text,
      style: const TextStyle(
        fontSize: 18,
        color: Colors.black87,
        fontWeight: FontWeight.w500,
      ),
    ),
  );

  Widget _buildSubNavItem(BuildContext context, String text, String route) {
    final isMobile = _isMobile(context);
    return TextButton(
      onPressed: () => context.go(route),
      child: Text(
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
    );
  }
}
