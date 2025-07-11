import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:go_router/go_router.dart';

import 'login.dart';
import '../providers/firebase_phone_auth.dart';

class HomeHeader extends ConsumerWidget {
  const HomeHeader({super.key});

  bool _isMobile(BuildContext context) {
    return MediaQuery.of(context).size.width < 768;
  }

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
      builder:
          (context) => AlertDialog(
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

  Widget _buildLoginSection(BuildContext context, bool isSmallScreen) {
    if (isSmallScreen) {
      return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Text(
            'Already Have An Account?',
            style: TextStyle(
              color: Colors.white,
              fontSize: isSmallScreen ? 12 : 16,
              fontWeight: FontWeight.w500,
            ),
          ),
          const SizedBox(height: 8),
          Padding(
            padding: const EdgeInsets.only(bottom: 3),
            child: _buildButton(
              onPressed: () => _showLoginDialog(context),
              backgroundColor: const Color(0xFFEFE7BA),
              foregroundColor: Colors.black,
              isSmallScreen: isSmallScreen,
              child: Text(
                "Log in",
                style: TextStyle(
                  fontSize: isSmallScreen ? 14 : 16,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ),
        ],
      );
    }

    return Row(
      children: [
        const Text(
          'Already Have An Account?',
          style: TextStyle(
            color: Colors.white,
            fontSize: 16,
            fontWeight: FontWeight.w500,
          ),
        ),
        const SizedBox(width: 16),
        _buildButton(
          onPressed: () => _showLoginDialog(context),
          backgroundColor: const Color(0xFFEFE7BA),
          foregroundColor: Colors.black,
          isSmallScreen: isSmallScreen,
          child: const Text(
            "Log in",
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
          ),
        ),
      ],
    );
  }

  Widget _buildLoggedInSection(
    BuildContext context,
    WidgetRef ref,
    User user,
    bool isSmallScreen,
  ) {
    if (isSmallScreen) {
      return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                'Welcome back!',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: isSmallScreen ? 12 : 14,
                  fontWeight: FontWeight.w400,
                ),
              ),
              Text(
                user.phoneNumber ?? 'User',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: isSmallScreen ? 14 : 16,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
          const SizedBox(height: 8),
          _buildButton(
            onPressed: () => _handleLogout(context, ref),
            backgroundColor: Colors.red.shade600,
            foregroundColor: Colors.white,
            isSmallScreen: isSmallScreen,
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(Icons.logout, size: isSmallScreen ? 16 : 18),
                SizedBox(width: isSmallScreen ? 4 : 8),
                Text(
                  "Logout",
                  style: TextStyle(fontSize: isSmallScreen ? 12 : 14),
                ),
              ],
            ),
          ),
        ],
      );
    }

    return Row(
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            const Text(
              'Welcome back!',
              style: TextStyle(
                color: Colors.white,
                fontSize: 14,
                fontWeight: FontWeight.w400,
              ),
            ),
            Text(
              user.phoneNumber ?? 'User',
              style: const TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
        const SizedBox(width: 16),
        _buildButton(
          onPressed: () => _handleLogout(context, ref),
          backgroundColor: Colors.red.shade600,
          foregroundColor: Colors.white,
          isSmallScreen: isSmallScreen,
          child: const Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(Icons.logout, size: 18),
              SizedBox(width: 8),
              Text("Logout"),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildButton({
    required VoidCallback onPressed,
    required Color backgroundColor,
    required Color foregroundColor,
    required Widget child,
    required bool isSmallScreen,
  }) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.2),
            offset: const Offset(0, 2),
            blurRadius: 4,
          ),
        ],
      ),
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: backgroundColor,
          foregroundColor: foregroundColor,
          padding: EdgeInsets.symmetric(
            horizontal: isSmallScreen ? 12 : 20,
            vertical: isSmallScreen ? 12 : 16,
          ),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
          elevation: 0,
        ),
        child: child,
      ),
    );
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final authState = ref.watch(authNotifierProvider);
    final screenWidth = MediaQuery.of(context).size.width;
    final isSmallScreen = screenWidth < 600;
    final isMediumScreen = screenWidth < 900;

    return Container(
      width: double.infinity,
      height: isSmallScreen ? 120 : 100,
      decoration: const BoxDecoration(color: Color(0xFFD4BB26)),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: isSmallScreen ? 12.0 : 24.0),
        child:
            isSmallScreen
                ? Column(
                  children: [
                    // Top row with logo and help
                    Expanded(
                      child: Row(
                        children: [
                          SizedBox(
                            width: 60,
                            height: 48,
                            child: Image.asset(
                              'assets/images/Logo.jpg',
                              fit: BoxFit.cover,
                            ),
                          ),
                          const Spacer(),
                          TextButton(
                            onPressed: () {},
                            style: TextButton.styleFrom(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 4,
                              ),
                              minimumSize: Size.zero,
                              tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                            ),
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                PopupMenuButton<String>(
                                  onSelected: (String value) {
                                    switch (value) {
                                      case 'help':
                                        context.go('null');
                                        break;
                                      case 'Admin':
                                        context.go('/admin_panchangam');
                                        break;
                                    }
                                  },
                                  itemBuilder:
                                      (BuildContext context) => [
                                        const PopupMenuItem<String>(
                                          value: 'help',
                                          child: Row(
                                            children: [
                                              Icon(
                                                Icons.notifications,
                                                size: 20,
                                                color: Colors.black87,
                                              ),
                                              SizedBox(width: 8),
                                              Text('Help'),
                                            ],
                                          ),
                                        ),
                                        const PopupMenuItem<String>(
                                          value: 'admin',
                                          child: Row(
                                            children: [
                                              Icon(
                                                Icons.shopping_bag,
                                                size: 20,
                                                color: Colors.black87,
                                              ),
                                              SizedBox(width: 8),
                                              Text('Admin'),
                                            ],
                                          ),
                                        ),
                                      ],
                                  child: TextButton(
                                    onPressed:
                                        null, // Let PopupMenuButton handle the press
                                    child: Row(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        Text(
                                          'More',
                                          style: TextStyle(
                                            color: Colors.black87,
                                            fontWeight: FontWeight.w500,
                                            decorationThickness: 1.5,
                                            fontSize: 16,
                                          ),
                                          overflow: TextOverflow.ellipsis,
                                          maxLines: 1,
                                          textAlign: TextAlign.center,
                                        ),
                                        const SizedBox(width: 4),
                                        Icon(
                                          Icons.keyboard_arrow_down,
                                          color: Colors.black87,
                                          size: 18,
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    // Bottom row with auth section
                    SizedBox(
                      height: 60,
                      child: Row(
                        children: [
                          const Spacer(),
                          authState.when(
                            data:
                                (user) =>
                                    user != null
                                        ? _buildLoggedInSection(
                                          context,
                                          ref,
                                          user,
                                          isSmallScreen,
                                        )
                                        : _buildLoginSection(
                                          context,
                                          isSmallScreen,
                                        ),
                            loading:
                                () => const SizedBox(
                                  width: 20,
                                  height: 20,
                                  child: CircularProgressIndicator(
                                    color: Colors.white,
                                    strokeWidth: 2,
                                  ),
                                ),
                            error:
                                (_, __) =>
                                    _buildLoginSection(context, isSmallScreen),
                          ),
                        ],
                      ),
                    ),
                  ],
                )
                : Row(
                  children: [
                    SizedBox(
                      width: isMediumScreen ? 80 : 100,
                      height: isMediumScreen ? 64 : 80,
                      child: Image.asset(
                        'assets/images/Logo.jpg',
                        fit: BoxFit.cover,
                        height: isMediumScreen ? 64 : 80,
                        width: isMediumScreen ? 64 : 80,
                      ),
                    ),
                    const Spacer(),
                    authState.when(
                      data:
                          (user) =>
                              user != null
                                  ? _buildLoggedInSection(
                                    context,
                                    ref,
                                    user,
                                    isSmallScreen,
                                  )
                                  : _buildLoginSection(context, isSmallScreen),
                      loading:
                          () => const SizedBox(
                            width: 24,
                            height: 24,
                            child: CircularProgressIndicator(
                              color: Colors.white,
                              strokeWidth: 2,
                            ),
                          ),
                      error:
                          (_, __) => _buildLoginSection(context, isSmallScreen),
                    ),
                    SizedBox(width: isMediumScreen ? 8 : 16),
                    TextButton(
                      onPressed: () {},
                      style: TextButton.styleFrom(
                        padding: EdgeInsets.symmetric(
                          horizontal: isMediumScreen ? 4 : 8,
                        ),
                        minimumSize: Size.zero,
                        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          PopupMenuButton<String>(
                            onSelected: (String value) {
                              switch (value) {
                                case 'help':
                                  context.go('null');
                                  break;
                                case 'Admin':
                                  context.go('/admin_panchangam');
                                  break;
                              }
                            },
                            itemBuilder:
                                (BuildContext context) => [
                                  const PopupMenuItem<String>(
                                    value: 'help',
                                    child: Row(
                                      children: [
                                        Icon(
                                          Icons.notifications,
                                          size: 20,
                                          color: Colors.black87,
                                        ),
                                        SizedBox(width: 8),
                                        Text('Help'),
                                      ],
                                    ),
                                  ),
                                  const PopupMenuItem<String>(
                                    value: 'admin',
                                    child: Row(
                                      children: [
                                        Icon(
                                          Icons.shopping_bag,
                                          size: 20,
                                          color: Colors.black87,
                                        ),
                                        SizedBox(width: 8),
                                        Text('Admin'),
                                      ],
                                    ),
                                  ),
                                ],
                            child: TextButton(
                              onPressed:
                                  null, // Let PopupMenuButton handle the press
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Text(
                                    'More',
                                    style: TextStyle(
                                      color: Colors.black87,
                                      fontWeight: FontWeight.w500,
                                      decorationThickness: 1.5,
                                      fontSize: 16,
                                    ),
                                    overflow: TextOverflow.ellipsis,
                                    maxLines: 1,
                                    textAlign: TextAlign.center,
                                  ),
                                  const SizedBox(width: 4),
                                  Icon(
                                    Icons.keyboard_arrow_down,
                                    color: Colors.black87,
                                    size: 18,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
      ),
    );
  }
}
