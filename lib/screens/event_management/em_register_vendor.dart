import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:lalitha_peetham/screens/event_management/em_layout.dart';

class EmRegisterVendor extends StatefulWidget {
  const EmRegisterVendor({super.key});

  @override
  State<EmRegisterVendor> createState() => _EmRegisterVendorState();
}

class _EmRegisterVendorState extends State<EmRegisterVendor> {
  String? selectedExperience;
  String? selectedPriceRange;
  String? selectedAvailability;
  String? selectedTimeSlot;
  bool agreedToPrivacy = false;
  bool agreedToTerms = false;
    bool _isLocationAllowed = false;

  @override
  Widget build(BuildContext context) {
    return EmLayout(
      child: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 150, vertical: 40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildBreadcrumb(),
            const SizedBox(height: 30),
            _buildAllowLocationSection(),
            const SizedBox(height: 30),
            _buildBusinessDetailsSection(),
            const SizedBox(height: 30),
            _buildSubmitButton(),
          ],
        ),
      ),
    );
  }

  Widget _buildBreadcrumb() {
    return Center(
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 12),
        decoration: BoxDecoration(
          color: const Color(0xFFD4BB26),
          borderRadius: BorderRadius.circular(30),
        ),
        child: const Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(Icons.home, size: 16, color: Colors.black),
            SizedBox(width: 6),
            Text(' / /  Event Management / /  Register As A Vendor',
                style: TextStyle(color: Colors.black, fontWeight: FontWeight.w500)),
          ],
        ),
      ),
    );
  }

Widget _buildAllowLocationSection() {
  return Center(
    child: Column(
      children: [
        GestureDetector(
          onTap: () {
            setState(() {
              _isLocationAllowed = !_isLocationAllowed;
            });
          },
          child: Container(
            width: 250,
            height: 45,
            padding: const EdgeInsets.symmetric(horizontal: 8),
            decoration: BoxDecoration(
              color: const Color(0xFFF3F0D4),
              borderRadius: BorderRadius.circular(30),
            ),
            child: Stack(
              alignment: Alignment.center,
              children: [
                AnimatedAlign(
                  duration: const Duration(milliseconds: 300),
                  alignment: _isLocationAllowed
                      ? Alignment.centerRight
                      : Alignment.centerLeft,
                  child: Container(
                    width: 140,
                    height: 36,
                    decoration: BoxDecoration(
                      color: const Color(0xFFE6D84A),
                      borderRadius: BorderRadius.circular(25),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.2),
                          offset: const Offset(0, 2),
                          blurRadius: 4,
                        ),
                      ],
                    ),
                    child: const Center(
                      child: Text(
                        'Allow Location',
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w600,
                          fontSize: 14,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        const SizedBox(height: 30),

        // Steps (1, 2, 3)
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _buildStepCircle('1', true),
            _buildStepLine(),
            _buildStepCircle('2', false),
            _buildStepLine(),
            _buildStepCircle('3', false),
          ],
        ),
      ],
    )
  );
  }


  Widget _buildStepCircle(String number, bool isActive) {
    return Container(
      width: 40,
      height: 40,
      decoration: BoxDecoration(
        color: isActive ? const Color(0xFFD4BB26) : const Color(0xFFE6D84A),
        shape: BoxShape.circle,
      ),
      child: Center(
        child: Text(
          number,
          style: const TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 16,
          ),
        ),
      ),
    );
  }

  Widget _buildStepLine() {
    return Container(
      width: 60,
      height: 2,
      color: const Color(0xFFE6D84A),
      margin: const EdgeInsets.symmetric(horizontal: 8),
    );
  }

  Widget _buildBusinessDetailsSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'BUSINESS DETAILS',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        const SizedBox(height: 25),
        Row(
          children: [
            Expanded(
              child: _buildDropdownField('YEARS OF EXPERIENCE', selectedExperience, [
                '1-2 years',
                '3-5 years',
                '5+ years',
              ], (value) => setState(() => selectedExperience = value)),
            ),
            const SizedBox(width: 30),
            Expanded(
              child: _buildDropdownField('PRIZE RANGE', selectedPriceRange, [
                '10,000-1,00,000',
                '1,00,000-5,00,000',
                '5,00,000+',
              ], (value) => setState(() => selectedPriceRange = value)),
            ),
          ],
        ),
        const SizedBox(height: 25),
        Row(
          children: [
            Expanded(
              child: _buildUploadSection('UPLOAD BUSINESS PORTFOLIO'),
            ),
            const SizedBox(width: 30),
            Expanded(
              child: _buildUploadSection('UPLOAD BUSINESS LOGO'),
            ),
          ],
        ),
        const SizedBox(height: 25),
        _buildVerificationSection(),
        const SizedBox(height: 25),
        _buildDropdownField('AVAILABILITY', selectedAvailability, [
          'Mon-Friday',
          'Mon-Saturday',
          'All Days',
        ], (value) => setState(() => selectedAvailability = value)),
        const SizedBox(height: 25),
        _buildDropdownField('PREFERRED TIME SLOT', selectedTimeSlot, [
          'Morning',
          'Afternoon',
          'Evening',
        ], (value) => setState(() => selectedTimeSlot = value)),
        const SizedBox(height: 30),
        _buildAgreementSection(),
      ],
    );
  }

  Widget _buildDropdownField(String label, String? value, List<String> items, Function(String?) onChanged) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: const TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w600,
            color: Colors.black,
          ),
        ),
        const SizedBox(height: 8),
        Container(
          height: 50,
          decoration: BoxDecoration(
            border: Border.all(color: Colors.grey[300]!),
            borderRadius: BorderRadius.circular(4),
            color: Colors.white,
          ),
          child: DropdownButtonFormField<String>(
            value: value,
            onChanged: onChanged,
            decoration: const InputDecoration(
              border: InputBorder.none,
              contentPadding: EdgeInsets.symmetric(horizontal: 12, vertical: 14),
            ),
            items: items.map((item) => DropdownMenuItem(
              value: item,
              child: Text(item),
            )).toList(),
          ),
        ),
      ],
    );
  }

  Widget _buildUploadSection(String title) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: const TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w600,
            color: Colors.black,
          ),
        ),
        const SizedBox(height: 8),
        Container(
          height: 180,
          width: 180,
          decoration: BoxDecoration(
            color: const Color(0xFFD4BB26),
            borderRadius: BorderRadius.circular(6),
          ),
          child: const Center(
            child: Icon(
              Icons.upload_outlined,
              size: 40,
              color: Colors.black,
            ),
          ),
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
            fontWeight: FontWeight.w600,
            color: Colors.black,
          ),
        ),
        const SizedBox(height: 8),
        Container(
          height: 50,
          decoration: BoxDecoration(
            border: Border.all(color: Colors.grey[300]!),
            borderRadius: BorderRadius.circular(4),
            color: Colors.white,
          ),
          child: const Row(
            children: [
              Expanded(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 12),
                  child: Text(
                    'Government Id Proof',
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 14,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(right: 12),
                child: Icon(
                  Icons.add_circle_outline,
                  color: Color(0xFFD4BB26),
                  size: 24,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildAgreementSection() {
    return Column(
      children: [
        Row(
          children: [
            Checkbox(
              value: agreedToPrivacy,
              onChanged: (value) => setState(() => agreedToPrivacy = value!),
              activeColor: const Color(0xFFD4BB26),
            ),
            const Expanded(
              child: Text(
                'I Read And Agree To Privacy Policy',
                style: TextStyle(fontSize: 14),
              ),
            ),
          ],
        ),
        Row(
          children: [
            Checkbox(
              value: agreedToTerms,
              onChanged: (value) => setState(() => agreedToTerms = value!),
              activeColor: const Color(0xFFD4BB26),
            ),
            const Expanded(
              child: Text(
                'I Read And Agree To Terms And Conditions',
                style: TextStyle(fontSize: 14),
              ),
            ),
          ],
        ),
      ],
    );
  }

  Widget _buildSubmitButton() {
    return SizedBox(
      height: 50,
      width: 150,
      child: ElevatedButton(
        onPressed: () {
          // Handle submit
          context.go('/em_register_vendor_successfull');
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: const Color(0xFFC1B11F),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(0),
          ),
        ),
        child: const Text(
          'SUBMIT',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 16,
          ),
        ),
      ),
    );
  }
}