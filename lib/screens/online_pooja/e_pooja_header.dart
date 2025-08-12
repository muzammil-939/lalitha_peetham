import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:lalitha_peetham/widgets/menu.dart';
import 'package:lalitha_peetham/widgets/reusable_responsive_type_widget.dart';

class EPoojaHeader extends StatelessWidget {
  const EPoojaHeader({super.key});

  void _openMenu(BuildContext context) {
    Navigator.push(
      context,
      PageRouteBuilder(
        pageBuilder: (context, animation, _) =>  DropdownGridMenu(),
        transitionDuration: const Duration(milliseconds: 300),
        transitionsBuilder: (context, animation, _, child) =>
            FadeTransition(opacity: animation, child: child),
        opaque: false,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final isMobile = ResponsiveHelper.isMobile(context);
    final isTablet = ResponsiveHelper.isTablet(context);
    final isDesktop = ResponsiveHelper.isDesktop(context);

    return Container(
      color: const Color(0xFFE9BD3F),
      padding: EdgeInsets.symmetric(
        horizontal: isMobile ? 12 : 24,
        vertical: isMobile ? 10 : 14,
      ),
      child: Row(
        children: [
          // Logo
          GestureDetector(
            onTap: () => context.go('/'),
            child: Image.asset(
              'assets/images/Logo.jpg',
              height: isMobile ? 40 : 50,
              width: isMobile ? 40 : 50,
              fit: BoxFit.contain,
            ),
          ),

          const SizedBox(width: 10),

          // Hamburger Menu Icon
          GestureDetector(
            onTap: () => _openMenu(context),
            child: const Icon(
              Icons.menu,
              size: 26,
              color: Colors.black,
            ),
          ),

          const SizedBox(width: 12),

          // Title
          Expanded(
            child: Text(
              'My Lalitha Peetham /  E - Pooja',
              style: TextStyle(
                fontSize: isMobile ? 13 : isTablet ? 15 : 18,
                fontWeight: FontWeight.bold,
                letterSpacing: 0.4,
                color: Colors.black,
              ),
              overflow: TextOverflow.ellipsis,
            ),
          ),

          // User Icon
          GestureDetector(
            onTap: () => context.go('/mybookings_page'),
            child: CircleAvatar(
              radius: isMobile ? 18 : 22,
              backgroundColor: Colors.white,
              child: Icon(
                Icons.person,
                color: Colors.blue,
                size: isMobile ? 24 : 28,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
