import 'package:flutter/material.dart';
import 'package:lalitha_peetham/widgets/reusable_responsive_type_widget.dart';

class MatriProfileWidget extends StatelessWidget {
  const MatriProfileWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final isMobile = ResponsiveHelper.isMobile(context);
    final isTablet = ResponsiveHelper.isTablet(context);

    // Font & padding scale
    double scale = 1.0;
    if (isMobile) scale = 0.9;
   // if (isDesktop(context)) scale = 1.1;

    return Container(
      width: isMobile
          ? ResponsiveHelper.screenWidth(context) * 0.9
          : isTablet
              ? 300
              : 350,
      constraints: const BoxConstraints(minHeight: 720),
      decoration: BoxDecoration(
        color: const Color(0xffD4BB26),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 10,
            offset: const Offset(0, 5),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          // Profile Image
          ClipRRect(
            child: Image.network(
              'https://upload.wikimedia.org/wikipedia/commons/7/7c/Profile_avatar_placeholder_large.png?20150327203541',
              fit: BoxFit.cover,
              height: isMobile ? 200 : 250,
              width: double.infinity,
              errorBuilder: (context, error, stackTrace) => Container(
                height: isMobile ? 200 : 250,
                width: double.infinity,
                color: Colors.grey[300],
                child: Icon(
                  Icons.person,
                  size: isMobile ? 80 : 100,
                  color: Colors.grey[600],
                ),
              ),
            ),
          ),

          // Profile Content
          Padding(
            padding: EdgeInsets.all(isMobile ? 16.0 : 20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                _buildInfoRow(
                  'ELAMPIRAL.K',
                  'Edit',
                  (isMobile ? 16 : 18) * scale,
                  (isMobile ? 12 : 14) * scale,
                  Colors.black87,
                  Colors.black54,
                ),
                const SizedBox(height: 8),
                Text(
                  'SH73537294',
                  style: TextStyle(
                    fontSize: (isMobile ? 12 : 14) * scale,
                    color: Colors.white,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                SizedBox(height: isMobile ? 20 : 30),
                _buildSectionHeader('ACCOUNT TYPE'),
                const SizedBox(height: 8),
                _buildInfoRow(
                  'Free Membership',
                  'Upgrade',
                  (isMobile ? 14 : 16) * scale,
                  (isMobile ? 12 : 14) * scale,
                  Colors.white,
                  const Color(0xFF3498DB),
                ),
                SizedBox(height: isMobile ? 20 : 30),
                _buildSectionHeader('VERIFICATION'),
                const SizedBox(height: 8),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Text(
                        'Get Blue Tick',
                        style: TextStyle(
                          fontSize: (isMobile ? 14 : 16) * scale,
                          color: const Color(0xFF3498DB),
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                    Container(
                      width: 24 * scale,
                      height: 24 * scale,
                      decoration: BoxDecoration(
                        color: const Color(0xFF3498DB).withOpacity(0.2),
                        borderRadius: BorderRadius.circular(12 * scale),
                      ),
                      child: const Icon(
                        Icons.check,
                        size: 16,
                        color: Color(0xFF3498DB),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildSectionHeader(String title) => Text(
        title,
        style: const TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.bold,
          color: Colors.black87,
          letterSpacing: 1.0,
        ),
      );

  Widget _buildInfoRow(
    String left,
    String right,
    double leftSize,
    double rightSize,
    Color leftColor,
    Color rightColor,
  ) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          flex: 3,
          child: Text(
            left,
            style: TextStyle(
              fontSize: leftSize,
              fontWeight: FontWeight.bold,
              color: leftColor,
              letterSpacing: 1.2,
            ),
            overflow: TextOverflow.ellipsis,
          ),
        ),
        const SizedBox(width: 8),
        Text(
          right,
          style: TextStyle(
            fontSize: rightSize,
            color: rightColor,
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    );
  }
}