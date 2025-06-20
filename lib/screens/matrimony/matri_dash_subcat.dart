import 'package:flutter/material.dart';

class MatriDashSubcat extends StatelessWidget {
  const MatriDashSubcat({super.key});

  // Constants
  static const _primaryColor = Color(0xffD4BB26);
  static const _bgColor = Color(0xffEFE7C0);
  static const _textGrey = Color(0xFF666666);

  static const _sampleImageUrl =
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT5M575luUI1KzsdsAkJeGz9tZlTyy0jz_zAw&s';

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final isTablet = screenWidth >= 768 && screenWidth < 1024;
    final isDesktop = screenWidth >= 1024;
    final isMobile = screenWidth < 768;

    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: isMobile ? 16 : (isTablet ? 24 : 32),
      ),
      child: Column(
        children: [
          _buildSection('INVITATIONS', _buildInvitationsRow(context)),
          _buildSection('PREMIUM MATCHES', _buildPremiumMatchesRow(context)),
          SizedBox(height: isMobile ? 24 : 40),
          _buildBottomSections(context),
        ],
      ),
    );
  }

  Widget _buildSection(String title, Widget content) {
    return Builder(
      builder: (context) {
        final isMobile = MediaQuery.of(context).size.width < 768;
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: isMobile ? 24 : 40),
            _buildSectionTitle(title, context),
            SizedBox(height: isMobile ? 12 : 20),
            content,
          ],
        );
      },
    );
  }

  Widget _buildInvitationsRow(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final isMobile = screenWidth < 768;
    final isTablet = screenWidth >= 768 && screenWidth < 1024;

    int itemCount = isMobile ? 1 : (isTablet ? 2 : 3);
    double spacing = isMobile ? 12 : 20;

    if (isMobile) {
      return SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: List.generate(
            3,
            (i) => Padding(
              padding: EdgeInsets.only(right: i < 2 ? spacing : 0),
              child: _buildInvitationCard(context),
            ),
          ),
        ),
      );
    }

    return Wrap(
      spacing: spacing,
      runSpacing: spacing,
      children: List.generate(itemCount, (i) => _buildInvitationCard(context)),
    );
  }

  Widget _buildPremiumMatchesRow(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: List.generate(
          4,
          (i) => Padding(
            padding: EdgeInsets.only(
              right: i < 3 ? (screenWidth < 768 ? 12 : 20) : 0,
            ),
            child: _buildPremiumCard(context),
          ),
        ),
      ),
    );
  }

  Widget _buildBottomSections(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final isMobile = screenWidth < 768;
    final spacing = isMobile ? 16.0 : 20.0;

    if (isMobile) {
      return Column(
        children: [
          _buildListSection(
            'RECENT VISITORS',
            _buildRecentVisitorsContent(context),
            context,
          ),
          SizedBox(height: spacing),
          _buildListSection(
            'NEW MATCHES FOR YOU',
            _buildNewMatchesContent(context),
            context,
          ),
        ],
      );
    }

    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: _buildListSection(
            'RECENT VISITORS',
            _buildRecentVisitorsContent(context),
            context,
          ),
        ),
        SizedBox(width: spacing),
        Expanded(
          child: _buildListSection(
            'NEW MATCHES FOR YOU',
            _buildNewMatchesContent(context),
            context,
          ),
        ),
      ],
    );
  }

  Widget _buildListSection(String title, Widget content, BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _buildTitleWithBadge(title, context),
        SizedBox(height: screenWidth < 768 ? 12 : 20),
        content,
      ],
    );
  }

  Widget _buildTitleWithBadge(String title, BuildContext context) {
    return Row(
      children: [
        Flexible(
          child: Text(
            title,
            style: _titleStyle(context: context),
            overflow: TextOverflow.ellipsis,
          ),
        ),
        const SizedBox(width: 8),
        _buildBadge('5', context),
      ],
    );
  }

  Widget _buildBadge(String count, BuildContext context) {
    final isMobile = MediaQuery.of(context).size.width < 768;
    return Container(
      padding: EdgeInsets.symmetric(horizontal: isMobile ? 6 : 8, vertical: 2),
      decoration: BoxDecoration(
        color: _primaryColor,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Text(count, style: _badgeTextStyle(isMobile)),
    );
  }

  Widget _buildRecentVisitorsContent(BuildContext context) =>
      _buildListContent(_buildVisitorCard, context);
  Widget _buildNewMatchesContent(BuildContext context) =>
      _buildListContent(_buildNewMatchCard, context);

  Widget _buildListContent(
    Widget Function(BuildContext) cardBuilder,
    BuildContext context,
  ) {
    final isMobile = MediaQuery.of(context).size.width < 768;
    return Container(
      color: _bgColor,
      padding: EdgeInsets.all(isMobile ? 12 : 20),
      child: Column(
        children: [
          ...List.generate(
            4,
            (i) => Column(
              children: [cardBuilder(context), if (i < 3) _buildDivider()],
            ),
          ),
          SizedBox(height: isMobile ? 10 : 15),
          _buildViewAllButton(context),
        ],
      ),
    );
  }

  Widget _buildDivider() {
    return Container(
      height: 1,
      color: _primaryColor,
      margin: const EdgeInsets.symmetric(vertical: 8),
    );
  }

  Widget _buildViewAllButton(BuildContext context) {
    final isMobile = MediaQuery.of(context).size.width < 768;
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: () => print('View All pressed'),
        style: ElevatedButton.styleFrom(
          backgroundColor: _primaryColor,
          foregroundColor: Colors.white,
          padding: EdgeInsets.symmetric(
            horizontal: isMobile ? 40 : 60,
            vertical: isMobile ? 16 : 24,
          ),
          shape: const RoundedRectangleBorder(borderRadius: BorderRadius.zero),
          elevation: 0,
        ),
        child: Text(
          'VIEW ALL',
          style: TextStyle(
            fontSize: isMobile ? 12 : 14,
            fontWeight: FontWeight.w600,
            letterSpacing: 0.5,
          ),
        ),
      ),
    );
  }

  Widget _buildVisitorCard(BuildContext context) => _buildUserCard(context);
  Widget _buildNewMatchCard(BuildContext context) => _buildUserCard(context);

  Widget _buildUserCard(BuildContext context) {
    final isMobile = MediaQuery.of(context).size.width < 768;
    return Container(
      margin: EdgeInsets.symmetric(vertical: isMobile ? 10 : 15),
      child: Row(
        children: [
          CircleAvatar(
            radius: isMobile ? 20 : 25,
            backgroundImage: const NetworkImage(_sampleImageUrl),
          ),
          SizedBox(width: isMobile ? 8 : 12),
          Expanded(child: _buildUserInfo(context)),
          _buildConnectButton(context),
        ],
      ),
    );
  }

  Widget _buildUserInfo(BuildContext context) {
    final isMobile = MediaQuery.of(context).size.width < 768;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Yuvarajan L',
          style: TextStyle(
            fontSize: isMobile ? 12 : 14,
            fontWeight: FontWeight.w600,
          ),
          overflow: TextOverflow.ellipsis,
        ),
        SizedBox(height: isMobile ? 1 : 2),
        ...['28 Yrs, 5\'7", Tamil', 'Chennai', 'Manager'].map(
          (text) => Padding(
            padding: const EdgeInsets.only(bottom: 2),
            child: Text(
              text,
              style: TextStyle(fontSize: isMobile ? 10 : 12, color: _textGrey),
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildConnectButton(BuildContext context) {
    final isMobile = MediaQuery.of(context).size.width < 768;
    return Column(
      children: [
        Container(
          width: isMobile ? 24 : 30,
          height: isMobile ? 24 : 30,
          decoration: const BoxDecoration(
            color: _primaryColor,
            shape: BoxShape.circle,
          ),
          child: Icon(
            Icons.check,
            color: Colors.white,
            size: isMobile ? 14 : 18,
          ),
        ),
        SizedBox(height: isMobile ? 4 : 8),
        Text(
          'Connect Now',
          style: TextStyle(
            fontSize: isMobile ? 8 : 10,
            color: Colors.grey,
            fontWeight: FontWeight.w500,
          ),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }

  Widget _buildProfileCard({
    required Widget actionWidget,
    required BuildContext context,
  }) {
    final screenWidth = MediaQuery.of(context).size.width;
    final isMobile = screenWidth < 768;
    final isTablet = screenWidth >= 768 && screenWidth < 1024;

    double cardWidth = isMobile ? 280 : (isTablet ? 320 : 350);
    double cardHeight = isMobile ? 400 : 500;
    double avatarRadius = isMobile ? 60 : 75;

    return Container(
      height: cardHeight,
      width: cardWidth,
      color: _bgColor,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          SizedBox(
            width: avatarRadius * 2,
            height: avatarRadius * 2,
            child: CircleAvatar(
              radius: avatarRadius,
              backgroundImage: const NetworkImage(_sampleImageUrl),
            ),
          ),
          _buildProfileInfo(context),
          actionWidget,
        ],
      ),
    );
  }

  Widget _buildProfileInfo(BuildContext context) {
    final isMobile = MediaQuery.of(context).size.width < 768;
    return Column(
      children: [
        ...[
          ('yuvarajan l', Colors.black),
          ('28 yrs, 5\'7", tamil', _textGrey),
          ('upgrade', const Color(0xFFCC901C)),
        ].map(
          (data) => Padding(
            padding: const EdgeInsets.only(bottom: 4),
            child: Text(
              data.$1,
              style: TextStyle(
                fontSize: isMobile ? 14 : 16,
                color: data.$2,
                letterSpacing: isMobile ? 1 : 2,
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildInvitationCard(BuildContext context) {
    return _buildProfileCard(
      context: context,
      actionWidget: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          _buildCircleButton(
            Icons.close,
            Colors.grey.shade600,
            Colors.grey.withOpacity(0.6),
            context,
          ),
          _buildCircleButton(
            Icons.check,
            Colors.orange,
            Colors.orange,
            context,
          ),
        ],
      ),
    );
  }

  Widget _buildPremiumCard(BuildContext context) {
    final isMobile = MediaQuery.of(context).size.width < 768;
    return _buildProfileCard(
      context: context,
      actionWidget: ElevatedButton(
        onPressed: () => print('Connect Now pressed'),
        style: ElevatedButton.styleFrom(
          backgroundColor: _primaryColor,
          foregroundColor: Colors.white,
          padding: EdgeInsets.symmetric(
            horizontal: isMobile ? 20 : 30,
            vertical: isMobile ? 16 : 20,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(25),
          ),
          elevation: 2,
        ),
        child: Text(
          'CONNECT NOW',
          style: TextStyle(
            fontSize: isMobile ? 12 : 14,
            fontWeight: FontWeight.w600,
            letterSpacing: 0.5,
          ),
        ),
      ),
    );
  }

  Widget _buildCircleButton(
    IconData icon,
    Color color,
    Color borderColor,
    BuildContext context,
  ) {
    final isMobile = MediaQuery.of(context).size.width < 768;
    double buttonSize = isMobile ? 50 : 60;
    double iconSize = isMobile ? 24 : 30;

    return Container(
      width: buttonSize,
      height: buttonSize,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(color: borderColor, width: 3),
      ),
      child: IconButton(
        onPressed: () => print('$icon button pressed'),
        icon: Icon(icon, color: color, size: iconSize),
        splashRadius: buttonSize / 2,
      ),
    );
  }

  Widget _buildSectionTitle(String title, BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final isMobile = screenWidth < 768;
    final isTablet = screenWidth >= 768 && screenWidth < 1024;

    double fontSize = isMobile ? 28 : (isTablet ? 34 : 40);
    return Text(
      title,
      style: _titleStyle(fontSize: fontSize, context: context),
    );
  }

  // Style helpers
  TextStyle _titleStyle({double? fontSize, BuildContext? context}) {
    final isMobile =
        context != null ? MediaQuery.of(context).size.width < 768 : false;
    final actualFontSize = fontSize ?? (isMobile ? 24 : 30);

    return TextStyle(
      fontSize: actualFontSize,
      color: _primaryColor,
      fontWeight: FontWeight.bold,
      letterSpacing: actualFontSize > 30 ? 2 : 1,
    );
  }

  TextStyle _badgeTextStyle(bool isMobile) {
    return TextStyle(
      fontSize: isMobile ? 10 : 12,
      color: Colors.white,
      fontWeight: FontWeight.bold,
    );
  }
}
