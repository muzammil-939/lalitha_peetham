import 'package:flutter/material.dart';
import 'package:lalitha_peetham/screens/matrimony/matimony_page_layout.dart';

import 'matri_dash_subcat.dart';

class MatriDashboard extends StatelessWidget {
  const MatriDashboard({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return MatriPageLayout(
      child: SingleChildScrollView(
        child: Container(
          width: size.width,
          padding: const EdgeInsets.symmetric(horizontal: 150, vertical: 50),
          child: Column(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _buildLeftProfilePanel(size.height),
                  const SizedBox(width: 20),
                  _buildMiddleContentPanel(size),
                  const SizedBox(width: 20),
                  _buildRightPanel(size.height),
                ],
              ),
              MatriDashSubcat(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildLeftProfilePanel(double screenHeight) {
    return Container(
      height: screenHeight,
      width: 280,
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
          _buildProfileImage(),
          const SizedBox(height: 30),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _buildProfileInfo(),
                const SizedBox(height: 40),
                _buildAccountTypeSection(),
                const SizedBox(height: 40),
                _buildVerificationSection(),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildProfileImage() {
    return Image.network(
      'https://upload.wikimedia.org/wikipedia/commons/7/7c/Profile_avatar_placeholder_large.png?20150327203541',
      fit: BoxFit.cover,
      height: 250,
      width: 280,
      errorBuilder:
          (context, error, stackTrace) => Container(
            height: 250,
            width: 280,
            color: Colors.grey[300],
            child: Icon(Icons.person, size: 100, color: Colors.grey[600]),
          ),
    );
  }

  Widget _buildProfileInfo() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'ELAMPIRAL.K',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.black87,
                letterSpacing: 1.2,
              ),
            ),
            Text(
              'Edit',
              style: TextStyle(
                fontSize: 14,
                color: Colors.black54,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
        const SizedBox(height: 8),
        const Text(
          'SH73537294',
          style: TextStyle(
            fontSize: 14,
            color: Colors.white,
            fontWeight: FontWeight.w400,
          ),
        ),
      ],
    );
  }

  Widget _buildAccountTypeSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'ACCOUNT TYPE',
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.bold,
            color: Colors.black87,
            letterSpacing: 1.0,
          ),
        ),
        const SizedBox(height: 8),
        const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Free Membership',
              style: TextStyle(
                fontSize: 16,
                color: Colors.white,
                fontWeight: FontWeight.w400,
              ),
            ),
            Text(
              'Upgrade',
              style: TextStyle(
                fontSize: 14,
                color: Color(0xFF3498DB),
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
      ],
    );
  }

  Widget _buildVerificationSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'VERIFICATION',
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.bold,
            color: Colors.black87,
            letterSpacing: 1.0,
          ),
        ),
        const SizedBox(height: 8),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Flexible(
              child: Text(
                'Get Blue Tick',
                style: TextStyle(
                  fontSize: 16,
                  color: Color(0xFF3498DB),
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            Container(
              width: 24,
              height: 24,
              decoration: BoxDecoration(
                color: const Color(0xFF3498DB).withOpacity(0.2),
                borderRadius: BorderRadius.circular(12),
              ),
              child: const Icon(
                Icons.check,
                size: 16,
                color: Color(0xFF3498DB),
              ),
            ),
          ],
        ),
      ],
    );
  }

  Widget _buildMiddleContentPanel(Size size) {
    return SizedBox(
      width: size.width * 0.4,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildSectionTitle('YOUR ACTIVITY SUMMARY'),
          const SizedBox(height: 20),
          _buildActivitySummaryGrid(),
          const SizedBox(height: 20),
          _buildSectionTitle('IMPROVED YOUR PROFILE'),
          const SizedBox(height: 20),
          _buildUpgradeSection(size),
        ],
      ),
    );
  }

  Widget _buildSectionTitle(String title) {
    return Text(
      title,
      style: const TextStyle(
        fontSize: 40,
        letterSpacing: 2,
        color: Color(0xffD4BB26),
        fontWeight: FontWeight.bold,
      ),
    );
  }

  Widget _buildActivitySummaryGrid() {
    return Container(
      padding: const EdgeInsets.all(16.0),
      color: const Color(0xFFF5F5F5),
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: _buildStatsCard(
                  '63',
                  'Pending\nInvetations',
                  '2 New',
                  const Color(0xFFC4B454),
                ),
              ),
              const SizedBox(width: 12),
              Expanded(
                child: _buildStatsCard(
                  '20',
                  'Accepted\nInvetations',
                  '2 New',
                  const Color(0xFFC4B454),
                ),
              ),
              const SizedBox(width: 12),
              Expanded(
                child: _buildStatsCard(
                  '289',
                  'Recent\nVisitors',
                  '289 New',
                  const Color(0xFF4ECDC4),
                ),
              ),
            ],
          ),
          const SizedBox(height: 12),
          Row(
            children: [
              Expanded(
                child: _buildBottomCard(
                  title: 'Only Premium Members\nCan Avail These Benefits',
                  highlightWord: 'Premium',
                ),
              ),
              const SizedBox(width: 12),
              Expanded(
                child: _buildBottomCard(
                  icon: Icons.circle_outlined,
                  title: 'Contact\nViewed',
                ),
              ),
              const SizedBox(width: 12),
              Expanded(
                child: _buildBottomCard(
                  icon: Icons.circle_outlined,
                  title: 'Chat\nInitiated',
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildUpgradeSection(Size size) {
    return Container(
      height: size.height * 0.36,
      width: size.width * 0.39,
      color: const Color(0xffEFE7C0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            height: size.width * 0.1,
            width: size.width * 0.1,
            color: Colors.white,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'BLUE TICK VERIFICATION',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF4A4A4A),
                  letterSpacing: 1.0,
                ),
              ),
              const SizedBox(height: 4),
              const Text(
                'Register For Free & Put Up\nYour Matrimony Profile',
                style: TextStyle(
                  fontSize: 16,
                  color: Color(0xFF888888),
                  height: 1.3,
                ),
              ),
              const SizedBox(height: 12),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFFDAA520),
                  foregroundColor: Colors.white,
                  padding: const EdgeInsets.symmetric(
                    horizontal: 24,
                    vertical: 18,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  elevation: 1,
                  minimumSize: const Size(0, 32),
                ),
                child: const Text(
                  'UPGRADE NOW',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 0.5,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildRightPanel(double screenHeight) {
    return Container(
      height: screenHeight,
      width: 280,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        gradient: const LinearGradient(
          colors: [Color(0xffD4BB26), Color(0xffefefef), Color(0xffe7e7e7)],
          begin: Alignment.bottomCenter,
          end: Alignment.topCenter,
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 10,
            offset: const Offset(0, 5),
          ),
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Image.asset(
            'assets/images/gift.png',
            height: 300,
            width: 200,
            fit: BoxFit.cover,
          ),
          Image.asset(
            'assets/images/save_upto.png',
            height: 150,
            width: 200,
            fit: BoxFit.cover,
          ),
        ],
      ),
    );
  }

  Widget _buildStatsCard(
    String number,
    String title,
    String badgeText,
    Color badgeColor,
  ) {
    return Container(
      height: 120,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: const Color(0xFFE8E2B8),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                number,
                style: const TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF333333),
                ),
              ),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                decoration: BoxDecoration(
                  color: badgeColor,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Text(
                  badgeText,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 10,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ],
          ),
          const Spacer(),
          Text(
            title,
            style: const TextStyle(
              fontSize: 14,
              color: Color(0xFF666666),
              height: 1.2,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildBottomCard({
    String? title,
    String? highlightWord,
    IconData? icon,
  }) {
    return Container(
      height: 120,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: const Color(0xFFE8E2B8),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          if (icon != null) ...[
            Icon(icon, size: 24, color: const Color(0xFFCCCCCC)),
            const SizedBox(height: 8),
          ],
          if (title != null)
            highlightWord != null
                ? RichText(
                  text: TextSpan(
                    style: const TextStyle(
                      fontSize: 14,
                      color: Color(0xFFCCCCCC),
                      height: 1.3,
                    ),
                    children: _buildTextSpans(title, highlightWord),
                  ),
                )
                : Text(
                  title,
                  style: const TextStyle(
                    fontSize: 14,
                    color: Color(0xFFCCCCCC),
                    height: 1.3,
                  ),
                ),
        ],
      ),
    );
  }

  List<TextSpan> _buildTextSpans(String text, String highlightWord) {
    final spans = <TextSpan>[];
    final parts = text.split(highlightWord);

    for (int i = 0; i < parts.length; i++) {
      if (parts[i].isNotEmpty) spans.add(TextSpan(text: parts[i]));
      if (i < parts.length - 1) {
        spans.add(
          TextSpan(
            text: highlightWord,
            style: const TextStyle(
              color: Color(0xFF4ECDC4),
              fontWeight: FontWeight.w500,
            ),
          ),
        );
      }
    }
    return spans;
  }
}
