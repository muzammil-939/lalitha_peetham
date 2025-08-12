import 'package:flutter/material.dart';
import 'package:lalitha_peetham/screens/matrimony/matimony_page_layout.dart';
import 'package:lalitha_peetham/widgets/reusable_responsive_type_widget.dart';


class SettingsPage extends StatefulWidget {
  const SettingsPage({super.key});

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  bool _isAccountSettingsExpanded = false;
  bool _isMyContactSettingsExpanded = false;
  bool _isContactDisplayStatusExpanded = false;
  bool _isContactFiltersExpanded = false;
  bool _isAstroDetailsExpanded = false;
  bool _isEmailSmsAlertExpanded = false;
  bool _isPrivacyOptionsExpanded = false;
  bool _isHideDeleteProfileExpanded = false;
  bool _isMessagesExpanded = false;

  String _selectedContactDisplayStatus = 'Only Premium Members';

  @override
  Widget build(BuildContext context) {
    final isMobile = ResponsiveHelper.isMobile(context);
    final isTablet = ResponsiveHelper.isTablet(context);
    final isDesktop = ResponsiveHelper.isDesktop(context);

    // Responsive base values
    final horizontalPadding = isMobile ? 16.0 : isTablet ? 40.0 : 80.0;
    final sectionVerticalSpacing = isMobile ? 16.0 : 20.0;
    final headerTopSpace = isMobile ? 18.0 : 30.0;
    final headerFontSize = isMobile ? 20.0 : isTablet ? 25.0 : 30.0;
    final titleFontSize = isMobile ? 14.0 : 16.0;
    final subtitleFontSize = isMobile ? 12.0 : 13.0;
    final cardPadding = isMobile ? 12.0 : 20.0;
    final smallIconSize = isMobile ? 14.0 : 16.0;
    final regularIconSize = isMobile ? 18.0 : 20.0;
    final radioScale = isMobile ? 0.9 : 1.0;
    final submitBtnWidth = isMobile ? 160.0 : isTablet ? 200.0 : 240.0;
    final dividerMargin = isMobile ? 12.0 : 20.0;

    return MatriPageLayout(
      child: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: horizontalPadding),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: headerTopSpace),
            Text(
              'SETTINGS',
              style: TextStyle(
                fontSize: headerFontSize,
                fontWeight: FontWeight.bold,
                color: Colors.orange[700],
                letterSpacing: 1.2,
              ),
            ),
            SizedBox(height: sectionVerticalSpacing * 2),

            // Account Settings
            _buildExpandableSection(
              context,
              title: 'ACCOUNT SETTINGS',
              isExpanded: _isAccountSettingsExpanded,
              paddingHorizontal: horizontalPadding,
              paddingVertical: cardPadding,
              titleFontSize: titleFontSize,
              iconSize: regularIconSize,
              onTap: () {
                setState(() {
                  _isAccountSettingsExpanded = !_isAccountSettingsExpanded;
                });
              },
              child: Container(), // Add account settings content here
            ),

            SizedBox(height: sectionVerticalSpacing),

            // My Contact Settings
            _buildExpandableSection(
              context,
              title: 'MY CONTACT SETTINGS',
              isExpanded: _isMyContactSettingsExpanded,
              paddingHorizontal: horizontalPadding,
              paddingVertical: cardPadding,
              titleFontSize: titleFontSize,
              iconSize: regularIconSize,
              onTap: () {
                setState(() {
                  _isMyContactSettingsExpanded = !_isMyContactSettingsExpanded;
                });
              },
              child: Container(
                color: Colors.white,
                padding: EdgeInsets.all(cardPadding),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Contact Number',
                          style: TextStyle(
                              fontSize: titleFontSize, color: Colors.grey),
                        ),
                        TextButton(
                          onPressed: () {
                            // Handle edit action
                          },
                          child: Text(
                            'Edit',
                            style: TextStyle(
                              color: Colors.orange[700],
                              fontSize: titleFontSize,
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: sectionVerticalSpacing / 2),
                    Row(
                      children: [
                        Text(
                          '91-7868911991',
                          style: TextStyle(
                            fontSize: titleFontSize,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        SizedBox(width: 10),
                        Container(
                          padding: EdgeInsets.symmetric(
                            horizontal: isMobile ? 8 : 10,
                            vertical: isMobile ? 4 : 6,
                          ),
                          decoration: BoxDecoration(
                            color: Colors.orange[100],
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Icon(
                                Icons.check_circle,
                                color: Colors.orange[700],
                                size: smallIconSize,
                              ),
                              SizedBox(width: 6),
                              Text(
                                'Verified',
                                style: TextStyle(
                                  color: Colors.orange[700],
                                  fontSize: subtitleFontSize,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),

            SizedBox(height: sectionVerticalSpacing),

            // Contact Display Status
            _buildExpandableSection(
              context,
              title: 'CONTACT DISPLAY STATUS',
              isExpanded: _isContactDisplayStatusExpanded,
              paddingHorizontal: horizontalPadding,
              paddingVertical: cardPadding,
              titleFontSize: titleFontSize,
              iconSize: regularIconSize,
              onTap: () {
                setState(() {
                  _isContactDisplayStatusExpanded =
                      !_isContactDisplayStatusExpanded;
                });
              },
              child: Container(
                color: const Color(0xFFF5F1E8),
                padding: EdgeInsets.all(isMobile ? 14 : 24),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Radio Options
                    _buildRadioOption(
                      context,
                      'Only Premium Members',
                      'Only Premium Members',
                      titleFontSize: subtitleFontSize,
                      radioScale: radioScale,
                    ),
                    SizedBox(height: 12),
                    _buildRadioOption(
                      context,
                      'Only Premium Members Like',
                      'Only Premium Members Like',
                      titleFontSize: subtitleFontSize,
                      radioScale: radioScale,
                    ),
                    SizedBox(height: 12),
                    _buildRadioOption(
                      context,
                      'No One( Matches Won\'t Be Able To Call You )',
                      'No One( Matches Won\'t Be Able To Call You )',
                      titleFontSize: subtitleFontSize,
                      radioScale: radioScale,
                    ),
                    SizedBox(height: 12),
                    Row(
                      children: [
                        Transform.scale(
                          scale: radioScale,
                          child: Radio<String>(
                            value:
                                'Only Visible To All Your Matches (Expires With Membership)',
                            groupValue: _selectedContactDisplayStatus,
                            onChanged: (String? newValue) {
                              setState(() {
                                _selectedContactDisplayStatus = newValue!;
                              });
                            },
                            activeColor: Colors.orange[700],
                          ),
                        ),
                        Expanded(
                          child: Row(
                            children: [
                              Flexible(
                                child: Text(
                                  'Only Visible To All Your Matches (Expires With Membership)',
                                  style: TextStyle(
                                    fontSize: subtitleFontSize,
                                    color: const Color(0xFF8B8B8B),
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ),
                              SizedBox(width: 8),
                              Icon(
                                Icons.help_outline,
                                color: Colors.grey[400],
                                size: smallIconSize,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: isMobile ? 18 : 32),

                    // Submit Button
                    Center(
                      child: Container(
                        width: submitBtnWidth,
                        child: ElevatedButton(
                          onPressed: () {
                            // Handle submit action
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: const Color(0xFFD4A574),
                            padding: EdgeInsets.symmetric(
                                vertical: isMobile ? 10 : 12),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(25),
                            ),
                            elevation: 0,
                          ),
                          child: Text(
                            'SUBMIT',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: isMobile ? 14 : 16,
                              fontWeight: FontWeight.w600,
                              letterSpacing: 1.0,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),

            SizedBox(height: sectionVerticalSpacing),

            // Privacy Notice Text (between cards as requested)
            Container(
              padding: EdgeInsets.symmetric(
                  horizontal: isMobile ? 12 : 20, vertical: isMobile ? 10 : 15),
              child: Row(
                children: [
                  Icon(Icons.lock, color: Colors.orange[700], size: smallIconSize),
                  SizedBox(width: 8),
                  Expanded(
                    child: Text(
                      'Lalitha Peetham.com Doesn\'t Share Personal Details / Contact Information With Third Parties',
                      style: TextStyle(
                        color: Colors.orange[700],
                        fontSize: isMobile ? 12 : 13,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ],
              ),
            ),

            SizedBox(height: sectionVerticalSpacing),

            // Combined Settings Card (Contact Filters to Messages)
            Container(
              decoration: BoxDecoration(
                color: const Color(0xFFF5F1E8),
                borderRadius: BorderRadius.circular(0),
              ),
              child: Column(
                children: [
                  _buildSectionWithDivider(
                    context,
                    title: 'CONTACT FILTERS',
                    isExpanded: _isContactFiltersExpanded,
                    paddingHorizontal: horizontalPadding,
                    paddingVertical: cardPadding,
                    titleFontSize: titleFontSize,
                    iconSize: regularIconSize,
                    onTap: () {
                      setState(() {
                        _isContactFiltersExpanded = !_isContactFiltersExpanded;
                      });
                    },
                    child: Container(),
                    showDivider: true,
                    dividerMargin: dividerMargin,
                  ),

                  _buildSectionWithDivider(
                    context,
                    title: 'ASTRO DETAILS',
                    isExpanded: _isAstroDetailsExpanded,
                    paddingHorizontal: horizontalPadding,
                    paddingVertical: cardPadding,
                    titleFontSize: titleFontSize,
                    iconSize: regularIconSize,
                    onTap: () {
                      setState(() {
                        _isAstroDetailsExpanded = !_isAstroDetailsExpanded;
                      });
                    },
                    child: Container(),
                    showDivider: true,
                    dividerMargin: dividerMargin,
                  ),

                  _buildSectionWithDivider(
                    context,
                    title: 'EMAIL & SMS ALERT',
                    isExpanded: _isEmailSmsAlertExpanded,
                    paddingHorizontal: horizontalPadding,
                    paddingVertical: cardPadding,
                    titleFontSize: titleFontSize,
                    iconSize: regularIconSize,
                    onTap: () {
                      setState(() {
                        _isEmailSmsAlertExpanded = !_isEmailSmsAlertExpanded;
                      });
                    },
                    child: Container(),
                    showDivider: true,
                    dividerMargin: dividerMargin,
                  ),

                  _buildSectionWithDivider(
                    context,
                    title: 'PRIVACY OPTIONS',
                    isExpanded: _isPrivacyOptionsExpanded,
                    paddingHorizontal: horizontalPadding,
                    paddingVertical: cardPadding,
                    titleFontSize: titleFontSize,
                    iconSize: regularIconSize,
                    onTap: () {
                      setState(() {
                        _isPrivacyOptionsExpanded = !_isPrivacyOptionsExpanded;
                      });
                    },
                    child: Container(),
                    showDivider: true,
                    dividerMargin: dividerMargin,
                  ),

                  _buildSectionWithDivider(
                    context,
                    title: 'HIDE AND DELETE PROFILE',
                    isExpanded: _isHideDeleteProfileExpanded,
                    paddingHorizontal: horizontalPadding,
                    paddingVertical: cardPadding,
                    titleFontSize: titleFontSize,
                    iconSize: regularIconSize,
                    onTap: () {
                      setState(() {
                        _isHideDeleteProfileExpanded = !_isHideDeleteProfileExpanded;
                      });
                    },
                    child: Container(),
                    showDivider: true,
                    dividerMargin: dividerMargin,
                  ),

                  _buildSectionWithDivider(
                    context,
                    title: 'MESSAGES',
                    isExpanded: _isMessagesExpanded,
                    paddingHorizontal: horizontalPadding,
                    paddingVertical: cardPadding,
                    titleFontSize: titleFontSize,
                    iconSize: regularIconSize,
                    onTap: () {
                      setState(() {
                        _isMessagesExpanded = !_isMessagesExpanded;
                      });
                    },
                    child: Container(),
                    showDivider: false,
                    dividerMargin: dividerMargin,
                  ),
                ],
              ),
            ),

            SizedBox(height: isMobile ? 24 : 40),
          ],
        ),
      ),
    );
  }

  Widget _buildSectionWithDivider(
    BuildContext context, {
    required String title,
    required bool isExpanded,
    required VoidCallback onTap,
    required Widget child,
    required bool showDivider,
    required double paddingHorizontal,
    required double paddingVertical,
    required double titleFontSize,
    required double iconSize,
    required double dividerMargin,
  }) {
    return Column(
      children: [
        InkWell(
          onTap: onTap,
          child: Container(
            padding:
                EdgeInsets.symmetric(horizontal: paddingHorizontal, vertical: paddingVertical),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  title,
                  style: TextStyle(
                    fontSize: titleFontSize,
                    fontWeight: FontWeight.w600,
                    color: const Color(0xFF6B5B73),
                    letterSpacing: 0.5,
                  ),
                ),
                Icon(
                  isExpanded ? Icons.keyboard_arrow_up : Icons.keyboard_arrow_down,
                  color: const Color(0xFF6B5B73),
                  size: iconSize,
                ),
              ],
            ),
          ),
        ),
        if (isExpanded) child,
        if (showDivider)
          Container(
            margin: EdgeInsets.symmetric(horizontal: dividerMargin),
            height: 1,
            color: const Color(0xFFD0C4A8),
          ),
      ],
    );
  }

  Widget _buildExpandableSection(
    BuildContext context, {
    required String title,
    required bool isExpanded,
    required VoidCallback onTap,
    required Widget child,
    required double paddingHorizontal,
    required double paddingVertical,
    required double titleFontSize,
    required double iconSize,
  }) {
    return Container(
      decoration: BoxDecoration(
        color: const Color(0xFFF5F1E8),
        borderRadius: BorderRadius.circular(0),
      ),
      child: Column(
        children: [
          InkWell(
            onTap: onTap,
            child: Container(
              padding:
                  EdgeInsets.symmetric(horizontal: paddingHorizontal, vertical: paddingVertical),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    title,
                    style: TextStyle(
                      fontSize: titleFontSize,
                      fontWeight: FontWeight.w600,
                      color: const Color(0xFF6B5B73),
                      letterSpacing: 0.5,
                    ),
                  ),
                  Icon(
                    isExpanded ? Icons.keyboard_arrow_up : Icons.keyboard_arrow_down,
                    color: const Color(0xFF6B5B73),
                    size: iconSize,
                  ),
                ],
              ),
            ),
          ),
          if (isExpanded) child,
        ],
      ),
    );
  }

  Widget _buildRadioOption(
    BuildContext context,
    String value,
    String title, {
    required double titleFontSize,
    required double radioScale,
  }) {
    return Row(
      children: [
        Transform.scale(
          scale: radioScale,
          child: Radio<String>(
            value: value,
            groupValue: _selectedContactDisplayStatus,
            onChanged: (String? newValue) {
              setState(() {
                _selectedContactDisplayStatus = newValue!;
              });
            },
            activeColor: Colors.orange[700],
          ),
        ),
        Expanded(
          child: Text(
            title,
            style: TextStyle(
              fontSize: titleFontSize,
              color: const Color(0xFF8B8B8B),
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
      ],
    );
  }
}
