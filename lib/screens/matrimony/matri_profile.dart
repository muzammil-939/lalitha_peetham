import 'package:flutter/material.dart';
import 'package:lalitha_peetham/screens/matrimony/matimony_page_layout.dart';

class MatriProfile extends StatelessWidget {
  const MatriProfile({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return MatriPageLayout(
      child: SingleChildScrollView(
        // Added to prevent overflow
        child: Container(
          width: size.width,
          padding: const EdgeInsets.symmetric(
            horizontal: 150,
            vertical: 50,
          ), // Reduced padding for mobile
          child: LayoutBuilder(
            builder: (context, constraints) {
              // Responsive layout
              if (constraints.maxWidth > 800) {
                return Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _buildLeftProfilePanel(size.height),
                    const SizedBox(width: 20),
                    Expanded(child: _buildMainContent()),
                  ],
                );
              } else {
                return Column(
                  children: [
                    _buildLeftProfilePanel(300), // Fixed height for mobile
                    const SizedBox(height: 20),
                    _buildMainContent(),
                  ],
                );
              }
            },
          ),
        ),
      ),
    );
  }

  Widget _buildMainContent() {
    return Container(
      padding: const EdgeInsets.all(20.0),
      margin: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8.0),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.1),
            spreadRadius: 1,
            blurRadius: 3,
            offset: const Offset(0, 1),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Breadcrumb
          Wrap(
            children: [
              Text(
                'My Lalitha Peetham',
                style: TextStyle(color: Colors.grey[600], fontSize: 16),
              ),
              Text(
                ' / ',
                style: TextStyle(color: Colors.grey[600], fontSize: 16),
              ),
              Text(
                'My Profile',
                style: TextStyle(color: Colors.grey[600], fontSize: 16),
              ),
              Text(
                ' / ',
                style: TextStyle(color: Colors.grey[600], fontSize: 16),
              ),
              Text(
                'Edit Basic Info',
                style: TextStyle(color: Colors.grey[600], fontSize: 16),
              ),
            ],
          ),
          const SizedBox(height: 20),

          // Title
          Text(
            'EDIT BASIC INFO',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Color(0xffDB9325),
            ),
          ),
          const SizedBox(height: 30),

          // Profile Managed By
          _buildDropdownField(
            label: 'Profile Managed By',
            value: 'Sibling',
            items: ['Sibling', 'Self', 'Parent', 'Other'],
            isRequired: true,
          ),
          const SizedBox(height: 20),

          // Gender
          _buildReadOnlyField(label: 'Gender', value: 'Female'),
          const SizedBox(height: 20),

          // Date Of Birth
          _buildEditableField(
            label: 'Date Of Birth',
            value: '21 July 1998',
            isRequired: true,
          ),
          const SizedBox(height: 20),

          // Marital Status
          _buildDropdownField(
            label: 'Marital Status',
            value: 'Never Married',
            items: ['Never Married', 'Married', 'Divorced', 'Widowed'],
            isRequired: true,
          ),
          const SizedBox(height: 20),

          // Height
          _buildDropdownField(
            label: 'Height',
            value: '5ft - 152cm',
            items: [
              '5ft - 152cm',
              '5ft 1in - 155cm',
              '5ft 2in - 157cm',
              '5ft 3in - 160cm',
            ],
            isRequired: true,
          ),
          const SizedBox(height: 20),

          // Diet
          _buildDropdownField(
            label: 'Diet',
            value: 'Veg',
            items: ['Veg', 'Non-Veg', 'Eggetarian', 'Vegan'],
            isRequired: true,
          ),
          const SizedBox(height: 20),

          // Health Information
          _buildDropdownField(
            label: 'Health Information',
            value: 'Select',
            items: ['Select', 'Normal', 'Physical Disability', 'Other'],
            isRequired: true,
          ),
          const SizedBox(height: 20),

          // Any Disability
          _buildDropdownField(
            label: 'Any Disability',
            value: 'None',
            items: ['None', 'Yes', 'Prefer not to say'],
            isRequired: true,
          ),
          const SizedBox(height: 20),

          // Blood Group
          _buildDropdownField(
            label: 'Blood Group',
            value: 'Don\'t Know',
            items: [
              'Don\'t Know',
              'A+',
              'A-',
              'B+',
              'B-',
              'AB+',
              'AB-',
              'O+',
              'O-',
            ],
            isRequired: false,
          ),
          const SizedBox(height: 40),

          // Update Button
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () {
                // Add your update logic here
                print('Update button pressed');
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.cyan[400],
                padding: const EdgeInsets.symmetric(vertical: 12),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(4),
                ),
              ),
              child: const Text(
                'Update',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildDropdownField({
    required String label,
    required String value,
    required List<String> items,
    required bool isRequired,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        RichText(
          text: TextSpan(
            text: label,
            style: TextStyle(color: Colors.grey[700], fontSize: 14),
            children:
                isRequired
                    ? [
                      const TextSpan(
                        text: ' *',
                        style: TextStyle(color: Colors.red),
                      ),
                    ]
                    : [],
          ),
        ),
        const SizedBox(height: 8),
        Container(
          width: double.infinity,
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
          decoration: BoxDecoration(
            border: Border.all(color: Colors.grey[300]!),
            borderRadius: BorderRadius.circular(4),
          ),
          child: DropdownButtonHideUnderline(
            child: DropdownButton<String>(
              value: value,
              isExpanded: true,
              items:
                  items.map((String item) {
                    return DropdownMenuItem<String>(
                      value: item,
                      child: Text(item, style: const TextStyle(fontSize: 14)),
                    );
                  }).toList(),
              onChanged: (String? newValue) {
                // Add your state management logic here
                print('Selected: $newValue');
              },
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildReadOnlyField({required String label, required String value}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(label, style: TextStyle(color: Colors.grey[700], fontSize: 14)),
        const SizedBox(height: 8),
        Container(
          width: double.infinity,
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
          decoration: BoxDecoration(
            border: Border.all(color: Colors.grey[300]!),
            borderRadius: BorderRadius.circular(4),
            color: Colors.grey[50],
          ),
          child: Text(
            value,
            style: TextStyle(fontSize: 14, color: Colors.grey[600]),
          ),
        ),
      ],
    );
  }

  Widget _buildEditableField({
    required String label,
    required String value,
    required bool isRequired,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        RichText(
          text: TextSpan(
            text: label,
            style: TextStyle(color: Colors.grey[700], fontSize: 14),
            children:
                isRequired
                    ? [
                      const TextSpan(
                        text: ' *',
                        style: TextStyle(color: Colors.red),
                      ),
                    ]
                    : [],
          ),
        ),
        const SizedBox(height: 8),
        Container(
          width: double.infinity,
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
          decoration: BoxDecoration(
            border: Border.all(color: Colors.grey[300]!),
            borderRadius: BorderRadius.circular(4),
            color: Colors.grey[50],
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                value,
                style: TextStyle(fontSize: 14, color: Colors.grey[600]),
              ),
              GestureDetector(
                onTap: () {
                  // Add your edit logic here
                  print('Edit $label');
                },
                child: Text(
                  'edit',
                  style: TextStyle(fontSize: 12, color: Colors.orange[600]),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildLeftProfilePanel(double height) {
    return Container(
      height: height,
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
    return Container(
      height: 250,
      width: 280,
      color: Colors.grey[300],
      child: Icon(Icons.person, size: 100, color: Colors.grey[600]),
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
}
