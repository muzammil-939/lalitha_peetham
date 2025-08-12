import 'package:flutter/material.dart';
import 'package:lalitha_peetham/widgets/reusable_responsive_type_widget.dart';


class PhotoUploadContainer extends StatelessWidget {
  const PhotoUploadContainer({super.key});

  static const _goldColor = Color(0xFFD4AF37);

  @override
  Widget build(BuildContext context) {
    final w = ResponsiveHelper.screenWidth(context);
    final isMobile = ResponsiveHelper.isMobile(context);
    final isTablet = ResponsiveHelper.isTablet(context);
    final isDesktop = ResponsiveHelper.isDesktop(context);

    // Scale factors (tweak as needed)
    final baseScale = isDesktop ? 1.1 : isTablet ? 1.0 : 0.92;

    // paddings
    final horizontalPadding = (isMobile ? 16.0 : 20.0) * baseScale;
    final verticalPadding = (isMobile ? 32.0 : 60.0) * baseScale;

    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: horizontalPadding,
        vertical: verticalPadding,
      ),
      decoration: BoxDecoration(
        color: Colors.grey[100],
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildPhotoSection(context, baseScale),
          SizedBox(height: 30 * baseScale),
          _buildUploadOptionsSection(context, baseScale),
          SizedBox(height: 30 * baseScale),
          _buildPhotoExamples(context, baseScale),
          SizedBox(height: 30 * baseScale),
          _buildFooterLinks(context, baseScale),
        ],
      ),
    );
  }

  Widget _buildPhotoSection(BuildContext context, double scale) {
    // compute card width/height relative to available width
    final availableWidth = ResponsiveHelper.screenWidth(context);
    // four cards with gaps: use fraction but cap absolute size similar to original 160x200
    final cardMaxWidth = (availableWidth / 4) - (16 * scale);
    final cardWidth = cardMaxWidth.clamp(120.0 * scale, 180.0 * scale);
    final cardHeight = (cardWidth / 160.0) * 200.0 * scale; // keep original aspect ratio

    return Row(
      children: List.generate(
        4,
        (index) => Expanded(
          child: Padding(
            padding: EdgeInsets.only(right: index < 3 ? 15 * scale : 0),
            child: _buildPhotoCard(
              context,
              index == 0 ? 'Profile Photo' : 'Album Photo ${index}',
              Icons.person,
              cardWidth,
              cardHeight,
              scale,
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildPhotoCard(
    BuildContext context,
    String title,
    IconData fallbackIcon,
    double width,
    double height,
    double scale,
  ) {
    return Column(
      children: [
        Container(
          width: width,
          height: height,
          decoration: BoxDecoration(color: Colors.grey[300]),
          child: Image.asset(
            'assets/images/album_pic.png',
            fit: BoxFit.cover,
            errorBuilder: (_, __, ___) =>
                Icon(fallbackIcon, size: 40 * scale, color: Colors.grey),
          ),
        ),
        SizedBox(height: 8 * scale),
        Container(
          width: width,
          height: 30 * scale,
          decoration: const BoxDecoration(color: _goldColor),
          child: Center(
            child: Text(
              title,
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w500,
                fontSize: 12 * scale,
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildUploadOptionsSection(BuildContext context, double scale) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Other Way To Upload Your Photos',
          style: TextStyle(
            fontSize: 16 * scale,
            fontWeight: FontWeight.w600,
            color: Colors.black87,
          ),
        ),
        SizedBox(height: 20 * scale),
        Row(
          children: [
            Expanded(
              child: _buildOptionRow(
                context,
                Icons.email,
                'E-Mail Your Photos To ',
                'Photos@Gmail.Com',
                scale,
              ),
            ),
            SizedBox(width: 20 * scale),
            Expanded(
              child: _buildOptionRow(
                context,
                Icons.email,
                'E-Mail Your Photos To ',
                'Photos@Gmail.Com',
                scale,
              ),
            ),
          ],
        ),
        SizedBox(height: 20 * scale),
        Row(
          children: [
            Expanded(
              child: _buildOptionRow(
                context,
                Icons.check,
                'Photos You Can Upload',
                '',
                scale,
                _goldColor,
              ),
            ),
            SizedBox(width: 20 * scale),
            Expanded(
              child: _buildOptionRow(
                context,
                Icons.close,
                'Photos You Can\'t Upload',
                '',
                scale,
                Colors.grey[400],
              ),
            ),
          ],
        ),
      ],
    );
  }

  Widget _buildOptionRow(
    BuildContext context,
    IconData icon,
    String text,
    String highlightedText,
    double scale, [
    Color? iconColor,
  ]) {
    return Row(
      children: [
        Container(
          width: 24 * scale,
          height: 24 * scale,
          decoration: BoxDecoration(
            color: iconColor ?? _goldColor,
            borderRadius: BorderRadius.circular(12 * scale),
          ),
          child: Icon(icon, size: 14 * scale, color: Colors.white),
        ),
        SizedBox(width: 8 * scale),
        Flexible(
          child: RichText(
            text: TextSpan(
              text: text,
              style: TextStyle(fontSize: 14 * scale, color: Colors.grey),
              children: highlightedText.isNotEmpty
                  ? [
                      TextSpan(
                        text: highlightedText,
                        style: TextStyle(
                          color: _goldColor,
                          fontWeight: FontWeight.w500,
                          fontSize: 14 * scale,
                        ),
                      ),
                    ]
                  : null,
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildPhotoExamples(BuildContext context, double scale) {
    final examples = [
      'close_up_pic.png',
      'full_view_pic.png',
      'side_face_pic.png',
      'blur_pic.png',
      'group_pic.png',
      'water_mark_pic.png',
    ];

    final screenW = ResponsiveHelper.screenWidth(context);
    // width for each example image: try to keep them visible but not huge
    final itemWidth = (screenW * (ResponsiveHelper.isMobile(context) ? 0.11 : 0.09))
        .clamp(36.0 * scale, 80.0 * scale);

    return SizedBox(
      width: double.infinity,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: examples
            .map(
              (imageName) => Padding(
                padding: EdgeInsets.symmetric(horizontal: 5 * scale),
                child: SizedBox(
                  width: itemWidth,
                  height: itemWidth,
                  child: Image.asset(
                    'assets/images/$imageName',
                    fit: BoxFit.cover,
                    errorBuilder: (_, __, ___) => Icon(
                      Icons.image,
                      size: (30 * scale).clamp(18.0, 40.0),
                      color: Colors.grey,
                    ),
                  ),
                ),
              ),
            )
            .toList(),
      ),
    );
  }

  Widget _buildFooterLinks(BuildContext context, double scale) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        _buildFooterLink('Photo Guidelines', scale),
        SizedBox(width: 20 * scale),
        Container(width: 1, height: 20 * scale, color: Colors.grey[400]),
        SizedBox(width: 20 * scale),
        _buildFooterLink('Photo FAQ', scale),
      ],
    );
  }

  Widget _buildFooterLink(String text, double scale) {
    return TextButton(
      onPressed: () {},
      style: TextButton.styleFrom(
        padding: EdgeInsets.zero,
        minimumSize: Size.zero,
        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
      ),
      child: Text(
        text,
        style: TextStyle(
          color: _goldColor,
          fontSize: 14 * scale,
          fontWeight: FontWeight.w500,
          decoration: TextDecoration.underline,
        ),
      ),
    );
  }
}
