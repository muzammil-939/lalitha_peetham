import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:lalitha_peetham/screens/ayurvedha/ayurvedh_page_layout.dart';

class AyurvedhaPatientReg1 extends StatefulWidget {
  const AyurvedhaPatientReg1({super.key});

  @override
  AyurvedhaPatientReg1State createState() => AyurvedhaPatientReg1State();
}

class AyurvedhaPatientReg1State extends State<AyurvedhaPatientReg1> {
  final TextEditingController _firstNameController = TextEditingController();
  final TextEditingController _lastNameController = TextEditingController();
  final TextEditingController _phoneController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _mobileController = TextEditingController();

  String _selectedGender = 'India(91)';
  String _selectedCountry = 'India(91)';
  DateTime? _selectedDate;

  @override
  Widget build(BuildContext context) {
    return AyurvedhPageLayout(
      child: Container(
        padding: EdgeInsets.fromLTRB(200, 50, 200, 150),
        decoration: BoxDecoration(color: Colors.white),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 18, vertical: 12),
                decoration: BoxDecoration(
                  color: Color(0xFFD4BB26),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(Icons.home, size: 16, color: Colors.black),
                    Text(
                      ' / ',
                      style: TextStyle(color: Colors.black, fontSize: 14),
                    ),
                    Text(
                      'AYURVEDA CONSULTANCY',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Text(
                      ' // ',
                      style: TextStyle(color: Colors.black, fontSize: 14),
                    ),
                    Text(
                      'Registor As A Patient',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 50),

            // Header with progress indicators
            Text(
              'Create Account',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w600,
                letterSpacing: 1.2,
                color: Colors.black87,
              ),
            ),
            SizedBox(height: 30),
            Center(
              child: Column(
                children: [
                  // Progress indicators
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      _buildProgressCircle('1', true),
                      _buildProgressLine(false),
                      _buildProgressCircle('2', false),
                      _buildProgressLine(false),
                      _buildProgressCircle('3', false),
                    ],
                  ),
                  SizedBox(height: 40),
                ],
              ),
            ),

            // Personal Details Section
            Text(
              'PERSONAL DETAILS',
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w600,
                letterSpacing: 1.0,
                color: Colors.black87,
              ),
            ),
            SizedBox(height: 25),

            // First row: First Name and Last Name
            Row(
              children: [
                Expanded(
                  child: _buildTextField(
                    label: 'FIRST NAME*',
                    placeholder: 'Enter Your First Name',
                    controller: _firstNameController,
                  ),
                ),
                SizedBox(width: 20),
                Expanded(
                  child: _buildTextField(
                    label: 'LAST NAME*',
                    placeholder: 'Enter Your Last Name',
                    controller: _lastNameController,
                  ),
                ),
              ],
            ),
            SizedBox(height: 25),

            // Second row: Phone and Email
            Row(
              children: [
                Expanded(
                  child: _buildTextField(
                    label: 'YOUR PHONE*',
                    placeholder: '+44 3737 838xxx',
                    controller: _phoneController,
                  ),
                ),
                SizedBox(width: 20),
                Expanded(
                  child: _buildTextField(
                    label: 'YOUR EMAIL*',
                    placeholder: 'youremail@domain.com',
                    controller: _emailController,
                  ),
                ),
              ],
            ),
            SizedBox(height: 25),

            // Third row: Gender and Date of Birth
            Row(
              children: [
                Expanded(
                  child: _buildDropdownField(
                    label: 'GENDER',
                    value: _selectedGender,
                    onChanged: (value) {
                      setState(() {
                        _selectedGender = value!;
                      });
                    },
                  ),
                ),
                SizedBox(width: 20),
                Expanded(
                  child: _buildDateField(
                    label: 'DATE OF BIRTH',
                    placeholder: 'Pick Your Birth',
                    selectedDate: _selectedDate,
                    onTap: () => _selectDate(context),
                  ),
                ),
              ],
            ),
            SizedBox(height: 25),

            // Fourth row: Country and Mobile Number
            Row(
              children: [
                Expanded(
                  child: _buildDropdownField(
                    label: 'COUNTRY*',
                    value: _selectedCountry,
                    onChanged: (value) {
                      setState(() {
                        _selectedCountry = value!;
                      });
                    },
                  ),
                ),
                SizedBox(width: 20),
                Expanded(
                  child: _buildTextField(
                    label: 'MOBILE NUMBER*',
                    placeholder: 'Enter Your Mobile Number',
                    controller: _mobileController,
                  ),
                ),
              ],
            ),
            SizedBox(height: 40),

            // Submit Button
            Container(
              width: 120,
              height: 45,
              child: ElevatedButton(
                onPressed: () {
                  context.go('/ayurvedha_patient_reg_2');
                  // Handle submit
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xFFB8A835),
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(4),
                  ),
                ),
                child: Text(
                  'SUBMIT',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 13,
                    fontWeight: FontWeight.w600,
                    letterSpacing: 0.8,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildProgressCircle(String number, bool isActive) {
    return Container(
      width: 40,
      height: 40,
      decoration: BoxDecoration(
        color: isActive ? Color(0xFFB8A835) : Color(0xFFE6D57A),
        shape: BoxShape.circle,
      ),
      child: Center(
        child: Text(
          number,
          style: TextStyle(
            color: isActive ? Colors.white : Color(0xFFB8A835),
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
      color: isActive ? Color(0xFFB8A835) : Color(0xFFE6D57A),
      margin: EdgeInsets.symmetric(horizontal: 4),
    );
  }

  Widget _buildTextField({
    required String label,
    required String placeholder,
    required TextEditingController controller,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w600,
            color: Colors.black87,
            letterSpacing: 0.5,
          ),
        ),
        SizedBox(height: 8),
        Container(
          height: 60,
          width: 400,
          child: TextField(
            controller: controller,
            decoration: InputDecoration(
              hintText: placeholder,
              hintStyle: TextStyle(color: Colors.grey[600], fontSize: 14),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(4),
                borderSide: BorderSide(color: Colors.grey[600]!, width: 1),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(4),
                borderSide: BorderSide(color: Colors.grey[600]!, width: 1),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(4),
                borderSide: BorderSide(color: Color(0xFFB8A835), width: 1),
              ),
              contentPadding: EdgeInsets.symmetric(
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

  Widget _buildDropdownField({
    required String label,
    required String value,
    required ValueChanged<String?> onChanged,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w600,
            color: Colors.black87,
            letterSpacing: 0.5,
          ),
        ),
        SizedBox(height: 8),
        Container(
          height: 60,
          width: 400,
          padding: EdgeInsets.symmetric(horizontal: 16),
          decoration: BoxDecoration(
            border: Border.all(color: Colors.grey[600]!, width: 1),
            borderRadius: BorderRadius.circular(4),
            color: Colors.white,
          ),
          child: DropdownButtonHideUnderline(
            child: DropdownButton<String>(
              value: value,
              isExpanded: true,
              icon: Icon(Icons.keyboard_arrow_down, color: Colors.grey),
              items:
                  ['India(91)', 'USA(1)', 'UK(44)'].map((String item) {
                    return DropdownMenuItem<String>(
                      value: item,
                      child: Text(
                        item,
                        style: TextStyle(fontSize: 14, color: Colors.black87),
                      ),
                    );
                  }).toList(),
              onChanged: onChanged,
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildDateField({
    required String label,
    required String placeholder,
    required DateTime? selectedDate,
    required VoidCallback onTap,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w600,
            color: Colors.black87,
            letterSpacing: 0.5,
          ),
        ),
        SizedBox(height: 8),
        GestureDetector(
          onTap: onTap,
          child: Container(
            height: 60,
            width: 400,
            padding: EdgeInsets.symmetric(horizontal: 16),
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
                      ? '${selectedDate!.day}/${selectedDate!.month}/${selectedDate!.year}'
                      : placeholder,
                  style: TextStyle(
                    fontSize: 14,
                    color:
                        selectedDate != null
                            ? Colors.black87
                            : Colors.grey[500],
                  ),
                ),
                Icon(Icons.calendar_today, color: Colors.grey, size: 20),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now().subtract(
        Duration(days: 6570),
      ), // 18 years ago
      firstDate: DateTime(1950),
      lastDate: DateTime.now(),
    );
    if (picked != null && picked != _selectedDate) {
      setState(() {
        _selectedDate = picked;
      });
    }
  }
}
