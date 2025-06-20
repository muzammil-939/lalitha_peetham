import 'package:flutter/material.dart';
import 'package:lalitha_peetham/screens/matrimony/matimony_page_layout.dart';

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
    return MatriPageLayout(
      child: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 80.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 30),
            Text(
              'SETTINGS',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Colors.orange[700],
                letterSpacing: 1.2,
              ),
            ),
            const SizedBox(height: 30),

            // Account Settings
            _buildExpandableSection(
              title: 'ACCOUNT SETTINGS',
              isExpanded: _isAccountSettingsExpanded,
              onTap: () {
                setState(() {
                  _isAccountSettingsExpanded = !_isAccountSettingsExpanded;
                });
              },
              child: Container(), // Add account settings content here
            ),

            const SizedBox(height: 20),

            // My Contact Settings
            _buildExpandableSection(
              title: 'MY CONTACT SETTINGS',
              isExpanded: _isMyContactSettingsExpanded,
              onTap: () {
                setState(() {
                  _isMyContactSettingsExpanded = !_isMyContactSettingsExpanded;
                });
              },
              child: Container(
                color: Colors.white,
                padding: const EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          'Contact Number',
                          style: TextStyle(fontSize: 16, color: Colors.grey),
                        ),
                        TextButton(
                          onPressed: () {
                            // Handle edit action
                          },
                          child: Text(
                            'Edit',
                            style: TextStyle(
                              color: Colors.orange[700],
                              fontSize: 16,
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 10),
                    Row(
                      children: [
                        const Text(
                          '91-7868911991',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        const SizedBox(width: 10),
                        Container(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 8,
                            vertical: 4,
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
                                size: 16,
                              ),
                              const SizedBox(width: 4),
                              Text(
                                'Verified',
                                style: TextStyle(
                                  color: Colors.orange[700],
                                  fontSize: 12,
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

            const SizedBox(height: 20),

            // Contact Display Status
            _buildExpandableSection(
              title: 'CONTACT DISPLAY STATUS',
              isExpanded: _isContactDisplayStatusExpanded,
              onTap: () {
                setState(() {
                  _isContactDisplayStatusExpanded =
                      !_isContactDisplayStatusExpanded;
                });
              },
              child: Container(
                color: const Color(0xFFF5F1E8),
                padding: const EdgeInsets.all(24),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Radio Options
                    _buildRadioOption(
                      'Only Premium Members',
                      'Only Premium Members',
                    ),
                    const SizedBox(height: 12),
                    _buildRadioOption(
                      'Only Premium Members Like',
                      'Only Premium Members Like',
                    ),
                    const SizedBox(height: 12),
                    _buildRadioOption(
                      'No One( Matches Won\'t Be Able To Call You )',
                      'No One( Matches Won\'t Be Able To Call You )',
                    ),
                    const SizedBox(height: 12),
                    Row(
                      children: [
                        Radio<String>(
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
                        Expanded(
                          child: Row(
                            children: [
                              const Text(
                                'Only Visible To All Your Matches (Expires With Membership)',
                                style: TextStyle(
                                  fontSize: 15,
                                  color: Color(0xFF8B8B8B),
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              const SizedBox(width: 8),
                              Icon(
                                Icons.help_outline,
                                color: Colors.grey[400],
                                size: 18,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 32),

                    // Submit Button
                    Center(
                      child: Container(
                        width: 200,
                        child: ElevatedButton(
                          onPressed: () {
                            // Handle submit action
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: const Color(
                              0xFFD4A574,
                            ), // Golden color from reference
                            padding: const EdgeInsets.symmetric(vertical: 12),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(25),
                            ),
                            elevation: 0,
                          ),
                          child: const Text(
                            'SUBMIT',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
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

            const SizedBox(height: 20),

            // Privacy Notice Text (between cards as requested)
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
              child: Row(
                children: [
                  Icon(Icons.lock, color: Colors.orange[700], size: 16),
                  const SizedBox(width: 8),
                  Expanded(
                    child: Text(
                      'Lalitha Peetham.com Doesn\'t Share Personal Details / Contact Information With Third Parties',
                      style: TextStyle(
                        color: Colors.orange[700],
                        fontSize: 13,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 20),

            // Combined Settings Card (Contact Filters to Messages)
            Container(
              decoration: BoxDecoration(
                color: const Color(
                  0xFFF5F1E8,
                ), // Light beige color matching the design
                borderRadius: BorderRadius.circular(0),
              ),
              child: Column(
                children: [
                  // Contact Filters
                  _buildSectionWithDivider(
                    title: 'CONTACT FILTERS',
                    isExpanded: _isContactFiltersExpanded,
                    onTap: () {
                      setState(() {
                        _isContactFiltersExpanded = !_isContactFiltersExpanded;
                      });
                    },
                    child: Container(), // Add contact filters content here
                    showDivider: true,
                  ),

                  // Astro Details
                  _buildSectionWithDivider(
                    title: 'ASTRO DETAILS',
                    isExpanded: _isAstroDetailsExpanded,
                    onTap: () {
                      setState(() {
                        _isAstroDetailsExpanded = !_isAstroDetailsExpanded;
                      });
                    },
                    child: Container(), // Add astro details content here
                    showDivider: true,
                  ),

                  // Email & SMS Alert
                  _buildSectionWithDivider(
                    title: 'EMAIL & SMS ALERT',
                    isExpanded: _isEmailSmsAlertExpanded,
                    onTap: () {
                      setState(() {
                        _isEmailSmsAlertExpanded = !_isEmailSmsAlertExpanded;
                      });
                    },
                    child: Container(), // Add email & sms alert content here
                    showDivider: true,
                  ),

                  // Privacy Options
                  _buildSectionWithDivider(
                    title: 'PRIVACY OPTIONS',
                    isExpanded: _isPrivacyOptionsExpanded,
                    onTap: () {
                      setState(() {
                        _isPrivacyOptionsExpanded = !_isPrivacyOptionsExpanded;
                      });
                    },
                    child: Container(), // Add privacy options content here
                    showDivider: true,
                  ),

                  // Hide and Delete Profile
                  _buildSectionWithDivider(
                    title: 'HIDE AND DELETE PROFILE',
                    isExpanded: _isHideDeleteProfileExpanded,
                    onTap: () {
                      setState(() {
                        _isHideDeleteProfileExpanded =
                            !_isHideDeleteProfileExpanded;
                      });
                    },
                    child:
                        Container(), // Add hide and delete profile content here
                    showDivider: true,
                  ),

                  // Messages (last item, no divider)
                  _buildSectionWithDivider(
                    title: 'MESSAGES',
                    isExpanded: _isMessagesExpanded,
                    onTap: () {
                      setState(() {
                        _isMessagesExpanded = !_isMessagesExpanded;
                      });
                    },
                    child: Container(), // Add messages content here
                    showDivider: false, // No divider for the last item
                  ),
                ],
              ),
            ),

            const SizedBox(height: 40),
          ],
        ),
      ),
    );
  }

  Widget _buildSectionWithDivider({
    required String title,
    required bool isExpanded,
    required VoidCallback onTap,
    required Widget child,
    required bool showDivider,
  }) {
    return Column(
      children: [
        InkWell(
          onTap: onTap,
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: Color(0xFF6B5B73), // Dark grayish color
                    letterSpacing: 0.5,
                  ),
                ),
                Icon(
                  isExpanded
                      ? Icons.keyboard_arrow_up
                      : Icons.keyboard_arrow_down,
                  color: const Color(0xFF6B5B73),
                ),
              ],
            ),
          ),
        ),
        if (isExpanded) child,
        if (showDivider)
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 20),
            height: 1,
            color: const Color(0xFFD0C4A8), // Light divider color
          ),
      ],
    );
  }

  Widget _buildExpandableSection({
    required String title,
    required bool isExpanded,
    required VoidCallback onTap,
    required Widget child,
  }) {
    return Container(
      decoration: BoxDecoration(
        color: const Color(0xFFF5F1E8), // Light beige color matching the design
        borderRadius: BorderRadius.circular(0),
      ),
      child: Column(
        children: [
          InkWell(
            onTap: onTap,
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    title,
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: Color(0xFF6B5B73), // Dark grayish color
                      letterSpacing: 0.5,
                    ),
                  ),
                  Icon(
                    isExpanded
                        ? Icons.keyboard_arrow_up
                        : Icons.keyboard_arrow_down,
                    color: const Color(0xFF6B5B73),
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

  Widget _buildRadioOption(String value, String title) {
    return Row(
      children: [
        Radio<String>(
          value: value,
          groupValue: _selectedContactDisplayStatus,
          onChanged: (String? newValue) {
            setState(() {
              _selectedContactDisplayStatus = newValue!;
            });
          },
          activeColor: Colors.orange[700],
        ),
        Expanded(
          child: Text(
            title,
            style: const TextStyle(
              fontSize: 15,
              color: Color(0xFF8B8B8B),
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
      ],
    );
  }
}
