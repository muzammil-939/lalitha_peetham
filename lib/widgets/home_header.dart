import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:lalitha_peetham/providers/firebase_phone_auth.dart';
import 'package:lalitha_peetham/widgets/login.dart';
import 'package:lalitha_peetham/widgets/reusable_responsive_type_widget.dart';

class HomeHeader extends ConsumerStatefulWidget {
  const HomeHeader({super.key});

  @override
  ConsumerState<HomeHeader> createState() => _HomeHeaderState();
}

class _HomeHeaderState extends ConsumerState<HomeHeader> {
  void _showLoginDialog(BuildContext context) async {
    final result = await showDialog<bool>(
      context: context,
      barrierDismissible: true,
      builder: (context) => const PhoneOtpLoginDialog(),
    );

    if (result == true && context.mounted) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Login successful!'),
          backgroundColor: Colors.green,
        ),
      );
    }
  }

  void _handleLogout(BuildContext context, WidgetRef ref) async {
    final shouldLogout = await showDialog<bool>(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Confirm Logout'),
        content: const Text('Are you sure you want to logout?'),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(context).pop(false),
            child: const Text('Cancel'),
          ),
          ElevatedButton(
            onPressed: () => Navigator.of(context).pop(true),
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.red,
              foregroundColor: Colors.white,
            ),
            child: const Text('Logout'),
          ),
        ],
      ),
    );

    if (shouldLogout == true) {
      try {
        await ref.read(authNotifierProvider.notifier).signOut();
        if (context.mounted) {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
              content: Text('Logged out successfully!'),
              backgroundColor: Colors.green,
            ),
          );
        }
      } catch (e) {
        if (context.mounted) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text('Logout failed: $e'),
              backgroundColor: Colors.red,
            ),
          );
        }
      }
    }
  }

  Widget _buildButton({
    required VoidCallback onPressed,
    required Color backgroundColor,
    required Color foregroundColor,
    required Widget child,
    required bool isMobile,
  }) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: backgroundColor,
        foregroundColor: foregroundColor,
        padding: EdgeInsets.symmetric(
          horizontal: isMobile ? 12 : 20,
          vertical: isMobile ? 8 : 12,
        ),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      ),
      child: child,
    );
  }

@override
Widget build(BuildContext context) {
  bool isMobile = ResponsiveHelper.isMobile(context);
  bool isTablet = ResponsiveHelper.isTablet(context);
  bool isDesktop = ResponsiveHelper.isDesktop(context);

  double headingFontSize = isMobile ? 18 : (isTablet ? 18 : 26);
  double subHeadingFontSize = isMobile ? 8 : (isTablet ? 9 : 14);
  double iconSize = isMobile ? 18 : (isTablet ? 20 : 22);
  double avatarRadius = isMobile ? 14 : (isTablet ? 16 : 18);

  final authState = ref.watch(authNotifierProvider);

  return Container(
    color: const Color(0xFFD4BB26),
    padding: EdgeInsets.symmetric(
      horizontal: isMobile ? 8 : (isTablet ? 12 : 20),
      vertical: isMobile ? 6 : (isTablet ? 8 : 12),
    ),
    child: isMobile
        ? Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildHeaderTitle(headingFontSize, subHeadingFontSize, iconSize),
              const SizedBox(height: 8),
              _buildRightSection(authState, isMobile, iconSize, avatarRadius),
            ],
          )
        : isTablet
            ? Wrap(
                alignment: WrapAlignment.spaceBetween,
                crossAxisAlignment: WrapCrossAlignment.center,
                runSpacing: 8,
                children: [
                  _buildHeaderTitle(
                      headingFontSize, subHeadingFontSize, iconSize),
                  _buildRightSection(
                      authState, isMobile, iconSize, avatarRadius),
                ],
              )
            : Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  _buildHeaderTitle(
                      headingFontSize, subHeadingFontSize, iconSize),
                  const Spacer(),
                  _buildRightSection(
                      authState, isMobile, iconSize, avatarRadius),
                ],
              ),
  );
}

  Widget _buildHeaderTitle(double headingFontSize, double subHeadingFontSize, double iconSize) {
    return Row(
      children: [
        Icon(Icons.home, color: Colors.black, size: iconSize),
        const SizedBox(width: 8),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "WELCOME TO SREE LALITHA PEETHAM",
              style: TextStyle(
                fontSize: headingFontSize,
                fontWeight: FontWeight.bold,
                color: Colors.black,
                letterSpacing: 1
              ),
            ),
            Text(
              "SPIRITUAL TRADITIONAL RICHVAL NEEDS MADE SIMPLE",
              style: TextStyle(fontSize: subHeadingFontSize, color: Colors.black,
              letterSpacing: 4.5),
            ),
          ],
        ),
      ],
    );
  }

Widget _buildRightSection(
    AsyncValue<User?> authState, bool isMobile, double iconSize, double avatarRadius) {
  return Wrap(
    alignment: WrapAlignment.end,
    crossAxisAlignment: WrapCrossAlignment.center,
    spacing: isMobile ? 6 : 8,
    runSpacing: 4,
    children: [
      _buildWallet(iconSize, isMobile),
      authState.when(
        data: (user) => user != null
            ? _buildButton(
                onPressed: () => _handleLogout(context, ref),
                backgroundColor: Colors.red,
                foregroundColor: Colors.white,
                isMobile: isMobile,
                child: const Text("Logout"),
              )
            : _buildButton(
                onPressed: () => _showLoginDialog(context),
                backgroundColor: const Color(0xFFF1E4B0),
                foregroundColor: Colors.black,
                isMobile: isMobile,
                child: const Text("Log in"),
              ),
        loading: () => const SizedBox(
            height: 20, width: 20, child: CircularProgressIndicator(strokeWidth: 2)),
        error: (_, __) => const Text("Error"),
      ),
      CircleAvatar(radius: avatarRadius, backgroundImage: const AssetImage("assets/images/person.jpg")),
      Icon(Icons.notifications_none, size: iconSize),
      PopupMenuButton<String>(
        onSelected: (value) {},
        itemBuilder: (_) => [
          const PopupMenuItem(value: 'help', child: Text("Help")),
         
        ],
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Text("Help"),
            Icon(Icons.keyboard_arrow_down, size: iconSize),
          ],
        ),
      ),
    ],
  );
}

Widget _buildWallet(double iconSize, bool isMobile) {
  return Container(
    padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
    decoration: BoxDecoration(
      color: const Color(0xFFEFE7BA),
      border: Border.all(color: Colors.red),
      borderRadius: BorderRadius.circular(4),
    ),
    child: Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(Icons.account_balance_wallet_outlined, size: iconSize),
        const SizedBox(width: 4),
        Text("₹ 4567.00", style: TextStyle(fontSize: isMobile ? 10 : 14)),
      ],
    ),
  );
}

}
