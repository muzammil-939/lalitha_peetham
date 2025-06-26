import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class NotificationHeader extends StatelessWidget {
  const NotificationHeader({super.key});

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
                      child: Row(
                        children: [
                          Flexible(
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
                          const SizedBox(width: 8),
                          Text(
                            '/ NOTIFICATIONS',
                            style: TextStyle(
                              color: Colors.black87,
                              fontSize: isMobile ? 12 : 14,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
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
                      Row(
                        children: [
                          Icon(Icons.phone, size: 16, color: Colors.white),
                          SizedBox(width: 4),
                          Text(
                            '+(088) 123 456 789',
                            style: TextStyle(color: Colors.white, fontSize: 14),
                          ),
                        ],
                      ),
                      const SizedBox(width: 20),
                      _buildHeaderButton(context, 'log out', ''),
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
      ],
    );
  }

  Widget _buildHeaderButton(context, String text, String path) => TextButton(
    onPressed: () => context.go(path),
    child: Text(
      text,
      style: const TextStyle(
        fontSize: 16,
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