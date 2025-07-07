import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:lalitha_peetham/screens/ayurvedha/yoga_screens/yoga_layout.dart';

class YogaForKids extends StatefulWidget {
  const YogaForKids({super.key});

  @override
  _YogaForKidsState createState() => _YogaForKidsState();
}

class _YogaForKidsState extends State<YogaForKids> {
  String? selectedGender;
  DateTime? selectedBirthDate;
  DateTime? selectedStartDate;
  String? selectedTimeSlot;
  String? selectedPriceRange;
  String? selectedPaymentType;
  String? selectedYogaClass;
  String? selectedClassType;
  String? selectedLanguage;

  @override
  Widget build(BuildContext context) {
    return YogaLayout(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 200),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildBreadcrumb(),
            SizedBox(height: 40),

            // Main form content
            _buildFormContent(),

            SizedBox(height: 80),

            // Submit button
            _buildSubmitButton(),
            SizedBox(height: 100),
          ],
        ),
      ),
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
                ' // Online Classes // Yoga For Kids',
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
    );
  }

  Widget _buildFormContent() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Title
        Text(
          'HELLO ELAMPIRAI, PLEASE FILL THE DETAILS',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w600,
            color: Colors.black87,
            letterSpacing: 0.5,
          ),
        ),
        SizedBox(height: 30),

        // First row - Gender and Date of Birth
        Row(
          children: [
            Expanded(
              child: _buildFormField(
                label: 'GENDER',
                child: _buildDropdown(
                  value: selectedGender,
                  hint: 'India(91)',
                  items: ['India(91)', 'USA(1)', 'UK(44)', 'UAE(971)'],
                  onChanged: (value) => setState(() => selectedGender = value),
                ),
              ),
            ),
            SizedBox(width: 80),
            Expanded(
              child: _buildFormField(
                label: 'DATE OF BIRTH',
                child: _buildDatePicker(
                  hint: 'Pick Your Birth',
                  selectedDate: selectedBirthDate,
                  onDateSelected:
                      (date) => setState(() => selectedBirthDate = date),
                ),
              ),
            ),
          ],
        ),
        SizedBox(height: 25),

        // Second row - Starting Date and Pick Slot
        Row(
          children: [
            Expanded(
              child: _buildFormField(
                label: 'SELECT STARTING DATE*',
                child: _buildDatePicker(
                  hint: 'pick date',
                  selectedDate: selectedStartDate,
                  onDateSelected:
                      (date) => setState(() => selectedStartDate = date),
                ),
              ),
            ),
            SizedBox(width: 80),
            Expanded(
              child: _buildFormField(
                label: 'PICK SLOT',
                child: _buildDropdown(
                  value: selectedTimeSlot,
                  hint: 'Pick Time',
                  items: [
                    'Morning 6:00 AM',
                    'Morning 7:00 AM',
                    'Evening 6:00 PM',
                    'Evening 7:00 PM',
                  ],
                  onChanged:
                      (value) => setState(() => selectedTimeSlot = value),
                ),
              ),
            ),
          ],
        ),
        SizedBox(height: 25),

        // Third row - Price Range and Payment Type
        Row(
          children: [
            Expanded(
              child: _buildFormField(
                label: 'SELECT PRICE RANGE',
                child: _buildDropdown(
                  value: selectedPriceRange,
                  hint: '1000 To 3000',
                  items: [
                    '1000 To 3000',
                    '3000 To 5000',
                    '5000 To 7000',
                    '7000 To 10000',
                  ],
                  onChanged:
                      (value) => setState(() => selectedPriceRange = value),
                ),
              ),
            ),
            SizedBox(width: 80),
            Expanded(
              child: _buildFormField(
                label: 'PAYMENT TYPE',
                child: _buildDropdown(
                  value: selectedPaymentType,
                  hint: 'Payment Types',
                  items: [
                    'Credit Card',
                    'Debit Card',
                    'Net Banking',
                    'UPI',
                    'Cash',
                  ],
                  onChanged:
                      (value) => setState(() => selectedPaymentType = value),
                ),
              ),
            ),
          ],
        ),
        SizedBox(height: 25),

        // Online Yoga Classes
        _buildFormField(
          label: 'ONLINE YOGA CLASSES',
          child: _buildDropdown(
            value: selectedYogaClass,
            hint: 'Yoga For Kids',
            items: [
              'Yoga For Kids',
              'Yoga For Adults',
              'Prenatal Yoga',
              'Therapeutic Yoga',
            ],
            onChanged: (value) => setState(() => selectedYogaClass = value),
          ),
        ),
        SizedBox(height: 25),

        // Fourth row - Class Type and Language Preference
        Row(
          children: [
            Expanded(
              child: _buildFormField(
                label: 'CLASS TYPE',
                child: _buildDropdown(
                  value: selectedClassType,
                  hint: 'Beginner',
                  items: ['Beginner', 'Intermediate', 'Advanced'],
                  onChanged:
                      (value) => setState(() => selectedClassType = value),
                ),
              ),
            ),
            SizedBox(width: 80),
            Expanded(
              child: _buildFormField(
                label: 'LANGUAGE PREFERENCE',
                child: _buildDropdown(
                  value: selectedLanguage,
                  hint: 'Tamil',
                  items: ['Tamil', 'English', 'Hindi', 'Telugu', 'Kannada'],
                  onChanged:
                      (value) => setState(() => selectedLanguage = value),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }

  Widget _buildFormField({required String label, required Widget child}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w600,
            color: Colors.black87,
            letterSpacing: 0.5,
          ),
        ),
        SizedBox(height: 8),
        child,
      ],
    );
  }

  Widget _buildDropdown({
    required String? value,
    required String hint,
    required List<String> items,
    required ValueChanged<String?> onChanged,
  }) {
    return Container(
      height: 50,
      padding: EdgeInsets.symmetric(horizontal: 16),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey.shade400),
        borderRadius: BorderRadius.circular(4),
        color: Colors.white,
      ),
      child: DropdownButtonHideUnderline(
        child: DropdownButton<String>(
          value: value,
          hint: Text(
            hint,
            style: TextStyle(color: Colors.grey.shade600, fontSize: 14),
          ),
          icon: Icon(Icons.keyboard_arrow_down, color: Colors.grey.shade600),
          isExpanded: true,
          items:
              items.map((String item) {
                return DropdownMenuItem<String>(
                  value: item,
                  child: Text(
                    item,
                    style: TextStyle(color: Colors.black87, fontSize: 14),
                  ),
                );
              }).toList(),
          onChanged: onChanged,
        ),
      ),
    );
  }

  Widget _buildDatePicker({
    required String hint,
    required DateTime? selectedDate,
    required ValueChanged<DateTime> onDateSelected,
  }) {
    return GestureDetector(
      onTap: () async {
        final date = await showDatePicker(
          context: context,
          initialDate: selectedDate ?? DateTime.now(),
          firstDate: DateTime(1900),
          lastDate: DateTime.now().add(Duration(days: 365)),
        );
        if (date != null) {
          onDateSelected(date);
        }
      },
      child: Container(
        height: 50,
        padding: EdgeInsets.symmetric(horizontal: 16),
        decoration: BoxDecoration(
          border: Border.all(color: Colors.grey.shade400),
          borderRadius: BorderRadius.circular(4),
          color: Colors.white,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              selectedDate != null
                  ? "${selectedDate!.day}/${selectedDate!.month}/${selectedDate!.year}"
                  : hint,
              style: TextStyle(
                color:
                    selectedDate != null
                        ? Colors.black87
                        : Colors.grey.shade600,
                fontSize: 14,
              ),
            ),
            Icon(Icons.calendar_today, color: Colors.grey.shade600, size: 18),
          ],
        ),
      ),
    );
  }

  Widget _buildSubmitButton() {
    return GestureDetector(
      onTap: () => context.go(''),
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
    );
  }
}
