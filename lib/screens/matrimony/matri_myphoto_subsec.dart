import 'package:flutter/material.dart';

class PhotoUploadContainer extends StatelessWidget {
  const PhotoUploadContainer({super.key});

  static const _goldColor = Color(0xFFD4AF37);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 60),
      decoration: BoxDecoration(
        color: Colors.grey[100],
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildPhotoSection(),
          const SizedBox(height: 30),
          _buildUploadOptionsSection(),
          const SizedBox(height: 30),
          _buildPhotoExamples(context),
          const SizedBox(height: 30),
          _buildFooterLinks(),
        ],
      ),
    );
  }

  Widget _buildPhotoSection() {
    return Row(
      children: List.generate(
        4,
        (index) => Expanded(
          child: Padding(
            padding: EdgeInsets.only(right: index < 3 ? 15 : 0),
            child: _buildPhotoCard(
              index == 0 ? 'Profile Photo' : 'Album Photo $index',
              Icons.person,
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildPhotoCard(String title, IconData fallbackIcon) {
    return Column(
      children: [
        Container(
          width: 160,
          height: 200,
          decoration: BoxDecoration(color: Colors.grey[300]),
          child: Image.asset(
            'assets/images/album_pic.png',
            fit: BoxFit.cover,
            errorBuilder:
                (_, __, ___) =>
                    Icon(fallbackIcon, size: 40, color: Colors.grey),
          ),
        ),
        const SizedBox(height: 8),
        Container(
          width: 160,
          height: 30,
          decoration: const BoxDecoration(color: _goldColor),
          child: Center(
            child: Text(
              title,
              style: const TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w500,
                fontSize: 12,
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildUploadOptionsSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Other Way To Upload Your Photos',
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w600,
            color: Colors.black87,
          ),
        ),
        const SizedBox(height: 20),
        Row(
          children: [
            Expanded(
              child: _buildOptionRow(
                Icons.email,
                'E-Mail Your Photos To ',
                'Photos@Gmail.Com',
              ),
            ),
            const SizedBox(width: 20),
            Expanded(
              child: _buildOptionRow(
                Icons.email,
                'E-Mail Your Photos To ',
                'Photos@Gmail.Com',
              ),
            ),
          ],
        ),
        const SizedBox(height: 20),
        Row(
          children: [
            Expanded(
              child: _buildOptionRow(
                Icons.check,
                'Photos You Can Upload',
                '',
                _goldColor,
              ),
            ),
            const SizedBox(width: 20),
            Expanded(
              child: _buildOptionRow(
                Icons.close,
                'Photos You Can\'t Upload',
                '',
                Colors.grey[400],
              ),
            ),
          ],
        ),
      ],
    );
  }

  Widget _buildOptionRow(
    IconData icon,
    String text,
    String highlightedText, [
    Color? iconColor,
  ]) {
    return Row(
      children: [
        Container(
          width: 24,
          height: 24,
          decoration: BoxDecoration(
            color: iconColor ?? _goldColor,
            borderRadius: BorderRadius.circular(12),
          ),
          child: Icon(icon, size: 14, color: Colors.white),
        ),
        const SizedBox(width: 8),
        Flexible(
          child: RichText(
            text: TextSpan(
              text: text,
              style: const TextStyle(fontSize: 14, color: Colors.grey),
              children:
                  highlightedText.isNotEmpty
                      ? [
                        TextSpan(
                          text: highlightedText,
                          style: const TextStyle(
                            color: _goldColor,
                            fontWeight: FontWeight.w500,
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

  Widget _buildPhotoExamples(BuildContext context) {
    final examples = [
      'close_up_pic.png',
      'full_view_pic.png',
      'side_face_pic.png',
      'blur_pic.png',
      'group_pic.png',
      'water_mark_pic.png',
    ];

    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.8,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children:
            examples
                .map(
                  (imageName) => Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 5),
                    child: Image.asset(
                      'assets/images/$imageName',
                      fit: BoxFit.cover,
                      errorBuilder:
                          (_, __, ___) => const Icon(
                            Icons.image,
                            size: 30,
                            color: Colors.grey,
                          ),
                    ),
                  ),
                )
                .toList(),
      ),
    );
  }

  Widget _buildFooterLinks() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        _buildFooterLink('Photo Guidelines'),
        const SizedBox(width: 20),
        Container(width: 1, height: 20, color: Colors.grey[400]),
        const SizedBox(width: 20),
        _buildFooterLink('Photo FAQ'),
      ],
    );
  }

  Widget _buildFooterLink(String text) {
    return TextButton(
      onPressed: () {},
      style: TextButton.styleFrom(
        padding: EdgeInsets.zero,
        minimumSize: Size.zero,
        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
      ),
      child: Text(
        text,
        style: const TextStyle(
          color: _goldColor,
          fontSize: 14,
          fontWeight: FontWeight.w500,
          decoration: TextDecoration.underline,
        ),
      ),
    );
  }
}
