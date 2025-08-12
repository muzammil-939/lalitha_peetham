import 'package:flutter/material.dart';

class ResponsiveWrapper extends StatelessWidget {
  final Widget child;

  const ResponsiveWrapper({super.key, required this.child});
  

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    double maxWidth;

    if (width >= 1200) {
      maxWidth = 1100;
    } else if (width >= 800) {
      maxWidth = 700;
    } else {
      maxWidth = width * 0.95;
    }

    return Center(
      child: Container(
        width: maxWidth,
        child: child,
      ),
    );
  }
}



class ResponsiveButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final Color? backgroundColor;
  final Color? textColor;
  final EdgeInsets? margin;

  const ResponsiveButton({
    super.key,
    required this.text,
    required this.onPressed,
    this.backgroundColor,
    this.textColor,
    this.margin,
  });

  double _getFontSize(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    if (width >= 1200) return 18;
    if (width >= 800) return 16;
    return 14;
  }

  EdgeInsets _getPadding(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    if (width >= 1200) return const EdgeInsets.symmetric(horizontal: 36, vertical: 16);
    if (width >= 800) return const EdgeInsets.symmetric(horizontal: 28, vertical: 14);
    return const EdgeInsets.symmetric(horizontal: 20, vertical: 10);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin ?? const EdgeInsets.all(0),
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          padding: _getPadding(context),
          backgroundColor: backgroundColor ?? Colors.white,
          textStyle: TextStyle(
            fontSize: _getFontSize(context),
            fontWeight: FontWeight.w500,
          ),
        ),
        child: Text(
          text,
          style: TextStyle(
            color: textColor ?? Colors.black,
          ),
        ),
      ),
    );
  }
}


class ResponsiveFontsize {
  /// Get responsive font size based on screen width
  static double fontSize(
    BuildContext context, {
    required double mobile,
    required double tablet,
    required double desktop,
  }) {
    final width = MediaQuery.of(context).size.width;
    if (width >= 1200) return desktop;
    if (width >= 800) return tablet;
    return mobile;
  }

  /// Get responsive padding based on screen width
  static EdgeInsets padding(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    if (width >= 1200) return const EdgeInsets.symmetric(horizontal: 100.0);
    if (width >= 800) return const EdgeInsets.symmetric(horizontal: 60.0);
    return const EdgeInsets.symmetric(horizontal: 20.0);
  }

  /// Get responsive image size (width & height)
  static Size imageSize(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    if (width >= 1200) return const Size(300, 300);
    if (width >= 800) return const Size(250, 250);
    return const Size(180, 180);
  }

  /// Check if screen is mobile
  static bool isMobile(BuildContext context) =>
      MediaQuery.of(context).size.width < 800;

  /// Check if screen is tablet
  static bool isTablet(BuildContext context) =>
      MediaQuery.of(context).size.width >= 800 &&
      MediaQuery.of(context).size.width < 1200;

  /// Check if screen is desktop
  static bool isDesktop(BuildContext context) =>
      MediaQuery.of(context).size.width >= 1200;
}


class ResponsiveHelper {
  static bool isMobile(BuildContext context) =>
      MediaQuery.of(context).size.width < 600;

  static bool isTablet(BuildContext context) =>
      MediaQuery.of(context).size.width >= 600 &&
      MediaQuery.of(context).size.width < 1024;

  static bool isDesktop(BuildContext context) =>
      MediaQuery.of(context).size.width >= 1024;

  static double screenWidth(BuildContext context) =>
      MediaQuery.of(context).size.width;

  static double screenHeight(BuildContext context) =>
      MediaQuery.of(context).size.height;

   static double getResponsiveSize(
      BuildContext context, double mobile, double tablet, double desktop) {
    if (isMobile(context)) return mobile;
    if (isTablet(context)) return tablet;
    return desktop;
  }

}
