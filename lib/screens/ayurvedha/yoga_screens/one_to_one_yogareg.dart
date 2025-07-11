import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:lalitha_peetham/screens/ayurvedha/yoga_screens/yoga_layout.dart';

class OnetoOneYogaReg extends StatefulWidget {
  const OnetoOneYogaReg({super.key});

  @override
  OnetoOneYogaRegState createState() => OnetoOneYogaRegState();
}

class OnetoOneYogaRegState extends State<OnetoOneYogaReg> {
  String _selectedGender = 'Select';
  DateTime? _selectedDate;

  @override
  Widget build(BuildContext context) {
    return YogaLayout(
      child: Container(
        padding: const EdgeInsets.fromLTRB(200, 50, 200, 150),
        decoration: const BoxDecoration(color: Colors.white),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildBreadcrumb(),
            const SizedBox(height: 50),

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
              ' / YOGA // One to One Yoga',
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

  Widget _buildPersonalDetailsSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Hello Elampirai, Please Fill The Details',
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w600,
            letterSpacing: 1.0,
            color: Colors.black87,
          ),
        ),
        const SizedBox(height: 40),

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
          _buildDateField(
            'SELECT STARTING DATE*',
            'Pick Date',
            _selectedDate,
            () => _selectDate(context),
          ),
          _buildDropdownField(
            'PICK SLOT',
            _selectedGender,
            (v) => setState(() => _selectedGender = v!),
          ),
        ]),
        const SizedBox(height: 25),
        _buildFormRow([
          _buildDropdownField(
            'SELECT PRICE RANGE',
            _selectedGender,
            (v) => setState(() => _selectedGender = v!),
          ),
          _buildDropdownField(
            'PAYMENT TYPE',
            _selectedGender,
            (v) => setState(() => _selectedGender = v!),
          ),
        ]),
        const SizedBox(height: 25),
        _buildFormRow([
          _buildDropdownField(
            'CLASS TYPE',
            _selectedGender,
            (v) => setState(() => _selectedGender = v!),
          ),
          _buildDropdownField(
            'LANGUAGE PREFERENCE',
            _selectedGender,
            (v) => setState(() => _selectedGender = v!),
          ),
        ]),
        const SizedBox(height: 25),
        Row(
          children: [
            _buildDropdownField(
              'DURATION',
              _selectedGender,
              (v) => setState(() => _selectedGender = v!),
            ),
          ],
        ),
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
        onPressed: () => context.go('/one_to_one_sessions'),
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
                  ['Select', 'Select2', 'Select3']
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
