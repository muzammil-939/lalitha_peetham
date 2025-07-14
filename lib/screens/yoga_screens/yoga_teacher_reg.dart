import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:lalitha_peetham/screens/yoga_screens/yoga_layout.dart';

class YogaTeacherReg extends StatefulWidget {
  const YogaTeacherReg({super.key});

  @override
  _YogaTeacherRegState createState() => _YogaTeacherRegState();
}

class _YogaTeacherRegState extends State<YogaTeacherReg> {
  String? teacherProfile = 'Myself';
  String? gender = 'Female';
  String? sessionTime = '45 Min Daily';
  String? specialization = 'Hath Yoga';
  String? languagePreference = 'Tamil';
  String? preferredTeachingDays = 'Tamil';
  String? pickSlot = '03:00 To 03:45 Pm';
  TextEditingController dateController = TextEditingController();
  TextEditingController locationController = TextEditingController();
  TextEditingController mobileController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return YogaLayout(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 200),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Top buttons
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                _buildBreadcrumb(),

                // Allow Location button
                Container(
                  width: 280,
                  height: 52,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                  ),
                  child: Stack(
                    children: [
                      // Background container
                      Container(
                        decoration: BoxDecoration(
                          color: Color(0xFFE8D978),
                          borderRadius: BorderRadius.circular(25),
                        ),
                      ),
                      // Active button overlay
                      Positioned(
                        right: 0,
                        child: Container(
                          width: 200,
                          height: 52,
                          decoration: BoxDecoration(
                            color: Color(0xFFD4B429),
                            borderRadius: BorderRadius.circular(25),
                          ),
                          child: Center(
                            child: Text(
                              'Allow Location',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 13,
                                fontWeight: FontWeight.w600,
                                letterSpacing: 0.8,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                SizedBox(height: 30),

                // Online Form button with toggle design
                Container(
                  width: 280,
                  height: 52,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                  ),
                  child: Stack(
                    children: [
                      // Background container
                      Container(
                        decoration: BoxDecoration(
                          color: Color(0xFFE8D978),
                          borderRadius: BorderRadius.circular(25),
                        ),
                      ),
                      // Active button overlay
                      Positioned(
                        left: 0,
                        child: Container(
                          width: 200,
                          height: 52,
                          decoration: BoxDecoration(
                            color: Color(0xFFD4B429),
                            borderRadius: BorderRadius.circular(25),
                          ),
                          child: Center(
                            child: Text(
                              'Online Form',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 13,
                                fontWeight: FontWeight.w600,
                                letterSpacing: 0.8,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 40),
                _buildProgressIndicator(),
              ],
            ),

            SizedBox(height: 40),

            // Title
            Text(
              'Details',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w700,
                color: Color(0xFF333333),
                letterSpacing: 0.5,
              ),
            ),

            SizedBox(height: 40),

            // Form fields in rows
            Row(
              children: [
                Expanded(
                  child: _buildFormField(
                    label: 'TEACHER PROFILE FOR',
                    child: _buildDropdown(
                      value: teacherProfile,
                      items: ['Myself', 'Someone Else'],
                      onChanged:
                          (value) => setState(() => teacherProfile = value),
                    ),
                  ),
                ),
                SizedBox(width: 40),
                Expanded(
                  child: _buildFormField(
                    label: 'DATE OF BIRTH',
                    child: _buildDateField(),
                  ),
                ),
              ],
            ),

            SizedBox(height: 40),

            Row(
              children: [
                Expanded(
                  child: _buildFormField(
                    label: 'GENDER',
                    child: _buildDropdown(
                      value: gender,
                      items: ['Female', 'Male', 'Other'],
                      onChanged: (value) => setState(() => gender = value),
                    ),
                  ),
                ),
                SizedBox(width: 40),
                Expanded(
                  child: _buildFormField(
                    label: 'LOCATION DETAILS',
                    child: _buildTextField(
                      controller: locationController,
                      hintText: 'Enter Location Details',
                    ),
                  ),
                ),
              ],
            ),

            SizedBox(height: 40),

            Row(
              children: [
                Expanded(
                  child: _buildFormField(
                    label: 'SESSION TIME',
                    child: _buildDropdown(
                      value: sessionTime,
                      items: ['45 Min Daily', '30 Min Daily', '60 Min Daily'],
                      onChanged: (value) => setState(() => sessionTime = value),
                    ),
                  ),
                ),
                SizedBox(width: 40),
                Expanded(
                  child: _buildFormField(
                    label: 'PICK SLOT',
                    child: _buildDropdown(
                      value: pickSlot,
                      items: [
                        '03:00 To 03:45 Pm',
                        '04:00 To 04:45 Pm',
                        '05:00 To 05:45 Pm',
                      ],
                      onChanged: (value) => setState(() => pickSlot = value),
                    ),
                  ),
                ),
              ],
            ),

            SizedBox(height: 40),

            Row(
              children: [
                Expanded(
                  child: _buildFormField(
                    label: 'SPECIALIZATION',
                    child: _buildDropdown(
                      value: specialization,
                      items: ['Hath Yoga', 'Vinyasa Yoga', 'Ashtanga Yoga'],
                      onChanged:
                          (value) => setState(() => specialization = value),
                    ),
                  ),
                ),
                SizedBox(width: 40),
                Expanded(
                  child: _buildFormField(
                    label: 'LANGUAGE PREFERENCE',
                    child: _buildDropdown(
                      value: languagePreference,
                      items: ['Tamil', 'English', 'Hindi'],
                      onChanged:
                          (value) => setState(() => languagePreference = value),
                    ),
                  ),
                ),
              ],
            ),

            SizedBox(height: 40),

            Row(
              children: [
                Expanded(
                  child: _buildFormField(
                    label: 'MOBILE NUMBER',
                    child: _buildTextField(
                      controller: mobileController,
                      hintText: 'Enter Mobile Number',
                    ),
                  ),
                ),
                SizedBox(width: 40),
                Expanded(
                  child: _buildFormField(
                    label: 'PREFERRED TEACHING DAYS',
                    child: _buildDropdown(
                      value: preferredTeachingDays,
                      items: ['Tamil', 'English', 'Hindi'],
                      onChanged:
                          (value) =>
                              setState(() => preferredTeachingDays = value),
                    ),
                  ),
                ),
              ],
            ),

            SizedBox(height: 60),

            // Submit button
            GestureDetector(
              onTap: () => context.go('/yoga_teacher_reg_2'),
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 32, vertical: 12),
                decoration: BoxDecoration(
                  color: Color(0xFFD4B429),
                  borderRadius: BorderRadius.circular(4),
                ),
                child: Text(
                  'SUBMIT',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 12,
                    fontWeight: FontWeight.w600,
                    letterSpacing: 0.5,
                  ),
                ),
              ),
            ),
            SizedBox(height: 100),
          ],
        ),
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
        ],
      ),
    );
  }

  Widget _buildProgressCircle(String number, bool isActive) {
    return Container(
      width: 60,
      height: 60,
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

  Widget _buildFormField({required String label, required Widget child}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w600,
            color: Color(0xFF3F3E38),
            letterSpacing: 0.3,
          ),
        ),
        SizedBox(height: 8),
        child,
      ],
    );
  }

  Widget _buildBreadcrumb() {
    return Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 50),
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 22, vertical: 12),
          decoration: BoxDecoration(
            color: const Color(0xFFD4BB26),
            borderRadius: BorderRadius.circular(20),
          ),
          child: const Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(Icons.home, size: 16, color: Colors.black),
              Text(
                ' // Register As A Yoga Teacher',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                ),
              ),
              SizedBox(width: 50),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildDropdown({
    required String? value,
    required List<String> items,
    required ValueChanged<String?> onChanged,
  }) {
    return Container(
      height: 48,
      padding: EdgeInsets.symmetric(horizontal: 16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(4),
        border: Border.all(color: Color(0xFF8D8D8D)),
      ),
      child: DropdownButtonFormField<String>(
        value: value,
        decoration: InputDecoration(
          border: InputBorder.none,
          contentPadding: EdgeInsets.zero,
        ),
        style: TextStyle(fontSize: 14, color: Color(0xFF666666)),
        items:
            items.map((String item) {
              return DropdownMenuItem<String>(value: item, child: Text(item));
            }).toList(),
        onChanged: onChanged,
        icon: Icon(Icons.keyboard_arrow_down, color: Color(0xFF666666)),
      ),
    );
  }

  Widget _buildTextField({
    required TextEditingController controller,
    required String hintText,
  }) {
    return Container(
      height: 48,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(4),
        border: Border.all(color: Color(0xFF8D8D8D)),
      ),
      child: TextField(
        controller: controller,
        style: TextStyle(fontSize: 14, color: Color(0xFF666666)),
        decoration: InputDecoration(
          hintText: hintText,
          hintStyle: TextStyle(fontSize: 14, color: Color(0xFF999999)),
          border: InputBorder.none,
          contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        ),
      ),
    );
  }

  Widget _buildDateField() {
    return Container(
      height: 48,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(4),
        border: Border.all(color: Color(0xFF8D8D8D)),
      ),
      child: TextField(
        controller: dateController,
        style: TextStyle(fontSize: 14, color: Color(0xFF666666)),
        decoration: InputDecoration(
          hintText: 'Pick Your Birth',
          hintStyle: TextStyle(fontSize: 14, color: Color(0xFF999999)),
          border: InputBorder.none,
          contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
          suffixIcon: Icon(
            Icons.calendar_today,
            color: Color(0xFF666666),
            size: 20,
          ),
        ),
        readOnly: true,
        onTap: () async {
          DateTime? pickedDate = await showDatePicker(
            context: context,
            initialDate: DateTime.now(),
            firstDate: DateTime(1900),
            lastDate: DateTime.now(),
          );
          if (pickedDate != null) {
            setState(() {
              dateController.text =
                  "${pickedDate.day}/${pickedDate.month}/${pickedDate.year}";
            });
          }
        },
      ),
    );
  }
}
