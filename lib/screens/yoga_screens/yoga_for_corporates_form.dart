import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:lalitha_peetham/screens/yoga_screens/yoga_layout.dart';

class YogaForCorporatesForm extends StatefulWidget {
  const YogaForCorporatesForm({super.key});

  @override
  YogaForCorporatesFormState createState() => YogaForCorporatesFormState();
}

class YogaForCorporatesFormState extends State<YogaForCorporatesForm> {
  String? selectedCompanyName;
  String? selectedIndustryType;
  DateTime? selectedStartDate;
  String? selectedTimeSlot;
  String? selectedSessionDuration;
  String? selectedSpecialEvent;
  String? selectedSessionCount;
  String? selectedCompanySize;
  String? selectedRole;
  String? selectedOnlineOffline;
  String? selectedPriceRange;
  String? selectedPaymentType;
  String? selectedLanguage;
  TextEditingController goalsController = TextEditingController();

  @override
  void initState() {
    super.initState();
    selectedCompanyName = 'Go Code Designer';
    selectedIndustryType = 'IT';
    selectedSessionDuration = '3 month';
    selectedSpecialEvent = 'No';
    selectedSessionCount = '52';
    selectedCompanySize = '1-10';
    selectedRole = 'HR';
    selectedOnlineOffline = 'Payment Types';
    selectedPriceRange = '1000 To 3000';
    selectedPaymentType = 'Payment Types';
    selectedLanguage = 'Tamil';
    goalsController.text =
        'We Want To Improve Employee Focus And Reduce Burnout';
  }

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
            _buildFormTitle(),
            SizedBox(height: 30),
            _buildFormFields(),
            SizedBox(height: 30),
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
                ' // Online Classes // Yoga For Corporates(Karya Yoga)',
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

  Widget _buildFormTitle() {
    return Text(
      'Hello Elampirai, Please Fill The Details',
      style: TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.w600,
        color: Colors.black87,
      ),
    );
  }

  Widget _buildFormFields() {
    return Column(
      children: [
        // Row 1: Company Name & Industry Type
        Row(
          children: [
            Expanded(
              child: _buildDropdownField(
                'COMPANY NAME',
                selectedCompanyName,
                ['Go Code Designer', 'Other Company'],
                (value) => setState(() => selectedCompanyName = value),
              ),
            ),
            SizedBox(width: 40),
            Expanded(
              child: _buildDropdownField(
                'INDUSTRY TYPE',
                selectedIndustryType,
                ['IT', 'Healthcare', 'Finance', 'Education'],
                (value) => setState(() => selectedIndustryType = value),
              ),
            ),
          ],
        ),
        SizedBox(height: 25),

        // Row 2: Starting Date & Pick Slot
        Row(
          children: [
            Expanded(
              child: _buildDateField(
                'SELECT STARTING DATE*',
                selectedStartDate,
                (date) => setState(() => selectedStartDate = date),
              ),
            ),
            SizedBox(width: 40),
            Expanded(
              child: _buildDropdownField(
                'PICK SLOT',
                selectedTimeSlot,
                ['Pick Time', 'Morning', 'Afternoon', 'Evening'],
                (value) => setState(() => selectedTimeSlot = value),
              ),
            ),
          ],
        ),
        SizedBox(height: 25),

        // Row 3: Session Duration & Special Event
        Row(
          children: [
            Expanded(
              child: _buildDropdownField(
                'SESSION DURATION*',
                selectedSessionDuration,
                ['3 month', '6 month', '1 year'],
                (value) => setState(() => selectedSessionDuration = value),
              ),
            ),
            SizedBox(width: 40),
            Expanded(
              child: _buildDropdownField(
                'SPECIAL EVENT*',
                selectedSpecialEvent,
                ['No', 'Yes'],
                (value) => setState(() => selectedSpecialEvent = value),
              ),
            ),
          ],
        ),
        SizedBox(height: 25),

        // Row 4: Session Count & Company Size
        Row(
          children: [
            Expanded(
              child: _buildDropdownField(
                'CHOOSE COUNT OF SESSION',
                selectedSessionCount,
                ['52', '26', '104'],
                (value) => setState(() => selectedSessionCount = value),
              ),
            ),
            SizedBox(width: 40),
            Expanded(
              child: _buildDropdownField(
                'COMPANY SIZE',
                selectedCompanySize,
                ['1-10', '11-50', '51-100', '100+'],
                (value) => setState(() => selectedCompanySize = value),
              ),
            ),
          ],
        ),
        SizedBox(height: 25),

        // Row 5: Role & Online/Offline
        Row(
          children: [
            Expanded(
              child: _buildDropdownField(
                'YOUR ROLE IN COMPANY',
                selectedRole,
                ['HR', 'Manager', 'CEO', 'Employee'],
                (value) => setState(() => selectedRole = value),
              ),
            ),
            SizedBox(width: 40),
            Expanded(
              child: _buildDropdownField(
                'ONLINE/OFFLINE',
                selectedOnlineOffline,
                ['Payment Types', 'Online', 'Offline'],
                (value) => setState(() => selectedOnlineOffline = value),
              ),
            ),
          ],
        ),
        SizedBox(height: 25),

        // Row 6: Price Range & Payment Type
        Row(
          children: [
            Expanded(
              child: _buildDropdownField(
                'SELECT PRICE RANGE',
                selectedPriceRange,
                ['1000 To 3000', '3000 To 5000', '5000 To 10000'],
                (value) => setState(() => selectedPriceRange = value),
              ),
            ),
            SizedBox(width: 40),
            Expanded(
              child: _buildDropdownField(
                'PAYMENT TYPE',
                selectedPaymentType,
                ['Payment Types', 'Monthly', 'Quarterly', 'Annual'],
                (value) => setState(() => selectedPaymentType = value),
              ),
            ),
          ],
        ),
        SizedBox(height: 25),

        // Goals and Expectations
        _buildTextAreaField('GOALS AND EXPECTATIONS', goalsController),
        SizedBox(height: 25),

        // Row 7: Company Logo & Language
        Row(
          children: [
            Expanded(child: _buildLogoUploadField()),
            SizedBox(width: 40),
            Expanded(
              child: _buildDropdownField(
                'LANGUAGE PREFERENCE',
                selectedLanguage,
                ['Tamil', 'English', 'Hindi'],
                (value) => setState(() => selectedLanguage = value),
              ),
            ),
          ],
        ),
      ],
    );
  }

  Widget _buildDropdownField(
    String label,
    String? value,
    List<String> items,
    Function(String?) onChanged,
  ) {
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
          width: double.infinity,
          height: 45,
          padding: EdgeInsets.symmetric(horizontal: 12),
          decoration: BoxDecoration(
            border: Border.all(color: Colors.grey.shade400),
            borderRadius: BorderRadius.circular(4),
            color: Colors.white,
          ),
          child: DropdownButtonHideUnderline(
            child: DropdownButton<String>(
              value: value,
              isExpanded: true,
              icon: Icon(
                Icons.keyboard_arrow_down,
                color: Colors.grey.shade600,
              ),
              style: TextStyle(fontSize: 14, color: Colors.black87),
              items:
                  items.map((String item) {
                    return DropdownMenuItem<String>(
                      value: item,
                      child: Text(item),
                    );
                  }).toList(),
              onChanged: onChanged,
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildDateField(
    String label,
    DateTime? value,
    Function(DateTime?) onChanged,
  ) {
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
          width: double.infinity,
          height: 45,
          padding: EdgeInsets.symmetric(horizontal: 12),
          decoration: BoxDecoration(
            border: Border.all(color: Colors.grey.shade400),
            borderRadius: BorderRadius.circular(4),
            color: Colors.white,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                value != null
                    ? '${value.day}/${value.month}/${value.year}'
                    : 'pick date',
                style: TextStyle(
                  fontSize: 14,
                  color: value != null ? Colors.black87 : Colors.grey.shade600,
                ),
              ),
              Icon(Icons.calendar_today, color: Colors.grey.shade600, size: 18),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildTextAreaField(String label, TextEditingController controller) {
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
          width: double.infinity,
          height: 80,
          padding: EdgeInsets.all(12),
          decoration: BoxDecoration(
            border: Border.all(color: Colors.grey.shade400),
            borderRadius: BorderRadius.circular(4),
            color: Colors.white,
          ),
          child: TextField(
            controller: controller,
            maxLines: 3,
            style: TextStyle(fontSize: 14, color: Colors.black87),
            decoration: InputDecoration(
              border: InputBorder.none,
              isDense: true,
              contentPadding: EdgeInsets.zero,
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildLogoUploadField() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'COMPANY LOGO',
          style: TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w600,
            color: Colors.black87,
            letterSpacing: 0.5,
          ),
        ),
        SizedBox(height: 8),
        Container(
          width: 100,
          height: 80,
          decoration: BoxDecoration(
            color: Color(0xFFD4BB26),
            borderRadius: BorderRadius.circular(4),
          ),
          child: Icon(Icons.upload, size: 30, color: Colors.black),
        ),
        SizedBox(height: 8),
        Text(
          'SELECT PROFILE',
          style: TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w600,
            color: Colors.black87,
            letterSpacing: 0.5,
          ),
        ),
      ],
    );
  }

  Widget _buildSubmitButton() {
    return GestureDetector(
      onTap: () => context.go('/yoga_for_corporates_select'),
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

  @override
  void dispose() {
    goalsController.dispose();
    super.dispose();
  }
}
