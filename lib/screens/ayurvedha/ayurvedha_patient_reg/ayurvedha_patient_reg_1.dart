import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:lalitha_peetham/screens/ayurvedha/ayurvedh_page_layout.dart';

class AyurvedhaPatientReg1 extends StatefulWidget {
  const AyurvedhaPatientReg1({super.key});

  @override
  AyurvedhaPatientReg1State createState() => AyurvedhaPatientReg1State();
}

class AyurvedhaPatientReg1State extends State<AyurvedhaPatientReg1> {
  final _controllers = {
    'firstName': TextEditingController(),
    'lastName': TextEditingController(),
    'phone': TextEditingController(),
    'email': TextEditingController(),
    'mobile': TextEditingController(),
  };

  String _selectedGender = 'India(91)';
  String _selectedCountry = 'India(91)';
  DateTime? _selectedDate;

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
            _buildPersonalDetailsSection(),
            const SizedBox(height: 40),
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
          borderRadius: BorderRadius.circular(20),
        ),
        child: const Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(Icons.home, size: 16, color: Colors.black),
            Text(
              ' / AYURVEDA CONSULTANCY // Registor As A Patient',
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
  }

  Widget _buildHeader() {
    return const Text(
      'Create Account',
      style: TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.w600,
        letterSpacing: 1.2,
        color: Colors.black87,
      ),
    );
  }

  Widget _buildProgressIndicator() {
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          _buildProgressCircle('1', true),
          _buildProgressLine(false),
          _buildProgressCircle('2', false),
          _buildProgressLine(false),
          _buildProgressCircle('3', false),
        ],
      ),
    );
  }

  Widget _buildPersonalDetailsSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'PERSONAL DETAILS',
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w600,
            letterSpacing: 1.0,
            color: Colors.black87,
          ),
        ),
        const SizedBox(height: 25),
        _buildFormRow([
          _buildTextField(
            'FIRST NAME*',
            'Enter Your First Name',
            _controllers['firstName']!,
          ),
          _buildTextField(
            'LAST NAME*',
            'Enter Your Last Name',
            _controllers['lastName']!,
          ),
        ]),
        const SizedBox(height: 25),
        _buildFormRow([
          _buildTextField(
            'YOUR PHONE*',
            '+44 3737 838xxx',
            _controllers['phone']!,
          ),
          _buildTextField(
            'YOUR EMAIL*',
            'youremail@domain.com',
            _controllers['email']!,
          ),
        ]),
        const SizedBox(height: 25),
        _buildFormRow([
          _buildDropdownField(
            'GENDER',
            _selectedGender,
            (v) => setState(() => _selectedGender = v!),
          ),
          _buildDateField(
            'DATE OF BIRTH',
            'Pick Your Birth',
            _selectedDate,
            () => _selectDate(context),
          ),
        ]),
        const SizedBox(height: 25),
        _buildFormRow([
          _buildDropdownField(
            'COUNTRY*',
            _selectedCountry,
            (v) => setState(() => _selectedCountry = v!),
          ),
          _buildTextField(
            'MOBILE NUMBER*',
            'Enter Your Mobile Number',
            _controllers['mobile']!,
          ),
        ]),
      ],
    );
  }

  Widget _buildFormRow(List<Widget> children) {
    return Row(
      children: [
        Expanded(child: children[0]),
        const SizedBox(width: 20),
        Expanded(child: children[1]),
      ],
    );
  }

  Widget _buildSubmitButton() {
    return SizedBox(
      width: 120,
      height: 45,
      child: ElevatedButton(
        onPressed: () => context.go('/ayurvedha_patient_reg_2'),
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
  }

  Widget _buildProgressCircle(String number, bool isActive) {
    return Container(
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
  }

  Widget _buildProgressLine(bool isActive) {
    return Container(
      width: 60,
      height: 2,
      color: isActive ? const Color(0xFFB8A835) : const Color(0xFFE6D57A),
      margin: const EdgeInsets.symmetric(horizontal: 4),
    );
  }

  Widget _buildTextField(
    String label,
    String placeholder,
    TextEditingController controller,
  ) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: const TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w600,
            color: Colors.black87,
            letterSpacing: 0.5,
          ),
        ),
        const SizedBox(height: 8),
        SizedBox(
          height: 60,
          width: 400,
          child: TextField(
            controller: controller,
            decoration: InputDecoration(
              hintText: placeholder,
              hintStyle: TextStyle(color: Colors.grey[600], fontSize: 14),
              border: _inputBorder(),
              enabledBorder: _inputBorder(),
              focusedBorder: _inputBorder(const Color(0xFFB8A835)),
              contentPadding: const EdgeInsets.symmetric(
                horizontal: 16,
                vertical: 18,
              ),
              filled: true,
              fillColor: Colors.white,
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildDropdownField(
    String label,
    String value,
    ValueChanged<String?> onChanged,
  ) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: const TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w600,
            color: Colors.black87,
            letterSpacing: 0.5,
          ),
        ),
        const SizedBox(height: 8),
        Container(
          height: 60,
          width: 400,
          padding: const EdgeInsets.symmetric(horizontal: 16),
          decoration: BoxDecoration(
            border: Border.all(color: Colors.grey[600]!, width: 1),
            borderRadius: BorderRadius.circular(4),
            color: Colors.white,
          ),
          child: DropdownButtonHideUnderline(
            child: DropdownButton<String>(
              value: value,
              isExpanded: true,
              icon: const Icon(Icons.keyboard_arrow_down, color: Colors.grey),
              items:
                  ['India(91)', 'USA(1)', 'UK(44)']
                      .map(
                        (item) => DropdownMenuItem(
                          value: item,
                          child: Text(
                            item,
                            style: const TextStyle(
                              fontSize: 14,
                              color: Colors.black87,
                            ),
                          ),
                        ),
                      )
                      .toList(),
              onChanged: onChanged,
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildDateField(
    String label,
    String placeholder,
    DateTime? selectedDate,
    VoidCallback onTap,
  ) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: const TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w600,
            color: Colors.black87,
            letterSpacing: 0.5,
          ),
        ),
        const SizedBox(height: 8),
        GestureDetector(
          onTap: onTap,
          child: Container(
            height: 60,
            width: 400,
            padding: const EdgeInsets.symmetric(horizontal: 16),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey[600]!, width: 1),
              borderRadius: BorderRadius.circular(4),
              color: Colors.white,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  selectedDate != null
                      ? '${selectedDate.day}/${selectedDate.month}/${selectedDate.year}'
                      : placeholder,
                  style: TextStyle(
                    fontSize: 14,
                    color:
                        selectedDate != null
                            ? Colors.black87
                            : Colors.grey[500],
                  ),
                ),
                const Icon(Icons.calendar_today, color: Colors.grey, size: 20),
              ],
            ),
          ),
        ),
      ],
    );
  }

  OutlineInputBorder _inputBorder([Color? color]) {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(4),
      borderSide: BorderSide(color: color ?? Colors.grey[600]!, width: 1),
    );
  }

  Future<void> _selectDate(BuildContext context) async {
    final picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now().subtract(const Duration(days: 6570)),
      firstDate: DateTime(1950),
      lastDate: DateTime.now(),
    );
    if (picked != null && picked != _selectedDate) {
      setState(() => _selectedDate = picked);
    }
  }
}
