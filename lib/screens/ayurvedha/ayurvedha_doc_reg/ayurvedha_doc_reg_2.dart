import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:lalitha_peetham/screens/ayurvedha/ayurvedh_page_layout.dart';

class AyurvedhaDocReg2 extends StatefulWidget {
  const AyurvedhaDocReg2({super.key});

  @override
  AyurvedhaDocReg2State createState() => AyurvedhaDocReg2State();
}

class AyurvedhaDocReg2State extends State<AyurvedhaDocReg2> {
  String? selectedQualification,
      selectedSpecialization,
      selectedCity,
      selectedState;

  final _controllers = {
    'hospitalName': TextEditingController(),
    'hospitalAddress': TextEditingController(),
    'pincode': TextEditingController(),
    'hospitalAddress2': TextEditingController(),
  };

  @override
  void dispose() {
    _controllers.values.forEach((controller) => controller.dispose());
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AyurvedhPageLayout(
      child: Container(
        padding: const EdgeInsets.fromLTRB(200, 50, 200, 150),
        decoration: const BoxDecoration(color: Colors.white),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildBreadcrumb(),
            const SizedBox(height: 50),
            _buildHeader(),
            const SizedBox(height: 30),
            _buildProgressIndicator(),
            const SizedBox(height: 40),
            _buildProfessionalInfoContainer(),
            const SizedBox(height: 40),
            _buildSubmitButton(),
          ],
        ),
      ),
    );
  }

  Widget _buildBreadcrumb() => Center(
    child: Container(
      padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 12),
      decoration: BoxDecoration(
        color: const Color(0xFFD4BB26),
        borderRadius: BorderRadius.circular(20),
      ),
      child: const Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(Icons.home, size: 16, color: Colors.black),
          Text(
            ' // AYURVEDA CONSULTANCY // Registor As A Doctor',
            style: TextStyle(
              color: Colors.black,
              fontSize: 14,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    ),
  );

  Widget _buildHeader() => const Text(
    'Create Account',
    style: TextStyle(
      fontSize: 18,
      fontWeight: FontWeight.w600,
      letterSpacing: 1.2,
      color: Colors.black87,
    ),
  );

  Widget _buildProgressIndicator() => Center(
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        _buildProgressCircle('1', true),
        _buildProgressLine(true),
        _buildProgressCircle('2', true),
        _buildProgressLine(false),
        _buildProgressCircle('3', false),
      ],
    ),
  );

  Widget _buildSubmitButton() => SizedBox(
    width: 120,
    height: 45,
    child: ElevatedButton(
      onPressed: () => context.go('/ayurvedha_doc_reg_3'),
      style: ElevatedButton.styleFrom(
        backgroundColor: const Color(0xFFB8A835),
        elevation: 0,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
      ),
      child: const Text(
        'SUBMIT',
        style: TextStyle(
          color: Colors.white,
          fontSize: 13,
          fontWeight: FontWeight.w600,
          letterSpacing: 0.8,
        ),
      ),
    ),
  );

  Widget _buildProgressCircle(String number, bool isActive) => Container(
    width: 40,
    height: 40,
    decoration: BoxDecoration(
      color: isActive ? const Color(0xFFB8A835) : const Color(0xFFE6D57A),
      shape: BoxShape.circle,
    ),
    child: Center(
      child: Text(
        number,
        style: TextStyle(
          color: isActive ? Colors.white : const Color(0xFFB8A835),
          fontSize: 16,
          fontWeight: FontWeight.w600,
        ),
      ),
    ),
  );

  Widget _buildProgressLine(bool isActive) => Container(
    width: 60,
    height: 2,
    color: isActive ? const Color(0xFFB8A835) : const Color(0xFFE6D57A),
    margin: const EdgeInsets.symmetric(horizontal: 4),
  );

  Widget _buildProfessionalInfoContainer() => Container(
    width: double.infinity,
    padding: const EdgeInsets.all(24.0),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _buildSectionHeader('PROFESSIONAL INFORMATION'),
        const SizedBox(height: 30),
        _buildFormRow([
          _buildDropdownField(
            'QUALIFICATION',
            selectedQualification,
            ['MBBS', 'MD', 'MS', 'BDS', 'MDS'],
            'Select Qualification',
            true,
            (value) => setState(() => selectedQualification = value),
          ),
          _buildDropdownField(
            'SPECIALIZATION',
            selectedSpecialization,
            [
              'Cardiology',
              'Neurology',
              'Orthopedics',
              'Dermatology',
              'Pediatrics',
            ],
            'Choose Specialization',
            true,
            (value) => setState(() => selectedSpecialization = value),
          ),
        ]),
        const SizedBox(height: 50),
        _buildFormRow([
          _buildTextField(
            'CLINIC / HOSPITAL NAME',
            _controllers['hospitalName']!,
            'Enter Hospital Name',
            true,
          ),
          _buildTextField(
            'HOSPITAL ADDRESS',
            _controllers['hospitalAddress']!,
            'pick hospital location',
            false,
            suffixIcon: Icons.location_on_outlined,
          ),
        ]),
        const SizedBox(height: 50),
        _buildSectionHeader('LOCATION'),
        const SizedBox(height: 30),
        _buildFormRow([
          _buildDropdownField(
            'CITY',
            selectedCity,
            ['Mumbai', 'Delhi', 'Bangalore', 'Chennai', 'Kolkata'],
            'Select',
            true,
            (value) => setState(() => selectedCity = value),
          ),
          _buildDropdownField(
            'STATE',
            selectedState,
            ['Maharashtra', 'Delhi', 'Karnataka', 'Tamil Nadu', 'West Bengal'],
            'Select State',
            true,
            (value) => setState(() => selectedState = value),
          ),
        ]),
        const SizedBox(height: 50),
        _buildFormRow([
          _buildTextField(
            'PINCODE',
            _controllers['pincode']!,
            'Enter Pincode',
            true,
            keyboardType: TextInputType.number,
          ),
          _buildTextField(
            'HOSPITAL ADDRESS',
            _controllers['hospitalAddress2']!,
            'pick hospital location',
            false,
            suffixIcon: Icons.location_on_outlined,
          ),
        ]),
        const SizedBox(height: 50),
        _buildUploadSection('PROFILE', 'SELECT PROFILE'),
        const SizedBox(height: 50),
        _buildUploadSection('MEDICAL CERTIFICATE', 'UPLOAD DOCUMENT'),
      ],
    ),
  );

  Widget _buildSectionHeader(String title) => Text(
    title,
    style: const TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.w600,
      color: Color(0xFF333333),
      letterSpacing: 0.5,
    ),
  );

  Widget _buildFormRow(List<Widget> children) => Row(
    children:
        children
            .map(
              (child) =>
                  children.indexOf(child) == 0
                      ? Expanded(child: child)
                      : Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(left: 80),
                          child: child,
                        ),
                      ),
            )
            .toList(),
  );

  Widget _buildDropdownField(
    String label,
    String? value,
    List<String> items,
    String hint,
    bool required,
    Function(String?) onChanged,
  ) => Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      _buildFieldLabel(label, required),
      const SizedBox(height: 8),
      Container(
        height: 48,
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(color: const Color(0xFF8D8D8D)),
        ),
        child: DropdownButtonFormField<String>(
          value: value,
          decoration: InputDecoration(
            hintText: hint,
            hintStyle: const TextStyle(color: Color(0xFF999999), fontSize: 14),
            border: InputBorder.none,
            contentPadding: const EdgeInsets.symmetric(
              horizontal: 12,
              vertical: 14,
            ),
          ),
          items:
              items
                  .map(
                    (item) => DropdownMenuItem(value: item, child: Text(item)),
                  )
                  .toList(),
          onChanged: onChanged,
        ),
      ),
    ],
  );

  Widget _buildTextField(
    String label,
    TextEditingController controller,
    String hint,
    bool required, {
    IconData? suffixIcon,
    TextInputType? keyboardType,
  }) => Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      _buildFieldLabel(label, required),
      const SizedBox(height: 8),
      Container(
        height: 48,
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(color: const Color(0xFF8D8D8D)),
        ),
        child: TextFormField(
          controller: controller,
          keyboardType: keyboardType,
          decoration: InputDecoration(
            hintText: hint,
            hintStyle: const TextStyle(color: Color(0xFF999999), fontSize: 14),
            border: InputBorder.none,
            contentPadding: const EdgeInsets.symmetric(
              horizontal: 12,
              vertical: 14,
            ),
            suffixIcon:
                suffixIcon != null
                    ? Icon(suffixIcon, color: const Color(0xFF999999), size: 20)
                    : null,
          ),
        ),
      ),
    ],
  );

  Widget _buildFieldLabel(String label, bool required) => RichText(
    text: TextSpan(
      text: label,
      style: const TextStyle(
        fontSize: 12,
        fontWeight: FontWeight.w500,
        color: Color(0xFF666666),
        letterSpacing: 0.3,
      ),
      children:
          required
              ? [const TextSpan(text: '*', style: TextStyle(color: Colors.red))]
              : [],
    ),
  );

  Widget _buildUploadSection(String title, String buttonText) => Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      _buildSectionHeader(title),
      const SizedBox(height: 16),
      Column(
        children: [
          Container(
            width: 250,
            height: 200,
            decoration: const BoxDecoration(color: Color(0xFFD4BB26)),
            child: const Icon(
              Icons.cloud_upload_outlined,
              color: Color(0xFF333333),
              size: 32,
            ),
          ),
          const SizedBox(height: 8),
          Text(
            buttonText,
            style: const TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w600,
              color: Color(0xFF333333),
              letterSpacing: 0.3,
            ),
          ),
        ],
      ),
    ],
  );
}
