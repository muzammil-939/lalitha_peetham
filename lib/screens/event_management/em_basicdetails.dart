import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:lalitha_peetham/screens/event_management/em_layout.dart';

class EmBasicdetails extends StatefulWidget {
  const EmBasicdetails({super.key});

  @override
  State<EmBasicdetails> createState() => _EmBasicdetailsState();
}

class _EmBasicdetailsState extends State<EmBasicdetails> {
  String? selectedName;
  String? selectedEventType;
  String? selectedTimeSlot;
  String? selectedPickSlot;
  String? selectedService;
  String? selectedLocation;
  String? selectedPriceRange;
  String? selectedGuestCount;
  String? selectedContactTime;
  String? selectedLanguage;
  String? selectedPaymentType;
  
  final TextEditingController dateController = TextEditingController();
  final TextEditingController requirementsController = TextEditingController();
  final TextEditingController addressController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();
  final TextEditingController descriptionController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return EmLayout(
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 150, vertical: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 20),
              _buildBreadcrumb(),
              const SizedBox(height: 40),
              _buildFormContent(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildBreadcrumb() {
    return Center(
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
        decoration: BoxDecoration(
          color: const Color(0xFFD4BB26),
          borderRadius: BorderRadius.circular(25),
        ),
        child: const Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(Icons.home, size: 16, color: Colors.black),
            SizedBox(width: 8),
            Text(
              '// EVENT MANAGEMENT // BASIC DETAILS',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w600,
                fontSize: 14,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildFormContent() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'FUNCTION DETAILS',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: Colors.black87,
          ),
        ),
        const SizedBox(height: 30),
        _buildFormFields(),
        const SizedBox(height: 40),
        _buildSubmitButton(),
      ],
    );
  }

  Widget _buildFormFields() {
    return Column(
      children: [
        // Row 1: Name and Type of Event
        Row(
          children: [
            Expanded(child: _buildDropdownField('NAME', 'My Self', ['My Self', 'Others'])),
            const SizedBox(width: 24),
            Expanded(child: _buildDropdownField('TYPE OF EVENT', 'Marriage', ['Marriage', 'Birthday', 'Anniversary', 'Corporate'])),
          ],
        ),
        const SizedBox(height: 24),
        
        // Row 2: Event Date and Pick Slot
        Row(
          children: [
            Expanded(child: _buildDateField('EVENT DATE', '24/07/2024')),
            const SizedBox(width: 24),
            Expanded(child: _buildDropdownField('PICK SLOT', '06:00 TO 08:00 PM', ['06:00 TO 08:00 PM', '08:00 TO 10:00 PM', '10:00 TO 12:00 AM'])),
          ],
        ),
        const SizedBox(height: 24),
        
        // Row 3: Event Time Slot and Event Location
        Row(
          children: [
            Expanded(child: _buildDropdownField('EVENT TIME SLOT', '6 Am To 6 Am', ['6 Am To 6 Am', '6 Am To 12 Pm', '12 Pm To 6 Pm'])),
            const SizedBox(width: 24),
            Expanded(child: _buildDropdownField('EVENT LOCATION', 'Enter Event Location', ['Temple', 'Home', 'Hall', 'Other'])),
          ],
        ),
        const SizedBox(height: 24),
        
        // Row 4: Select Service and Special Requirements
        Row(
          children: [
            Expanded(child: _buildDropdownField('SELECT SERVICE', 'Wedding + Housewarming + Flower Decoration', ['Wedding + Housewarming + Flower Decoration', 'Wedding Only', 'Housewarming Only'])),
            const SizedBox(width: 24),
            Expanded(child: _buildTextAreaField('TYPE YOUR SPECIAL REQUIREMENTS', 'Type Your Special Requirement')),
          ],
        ),
        const SizedBox(height: 24),
        
        // Row 5: Upload Reference and Location
        Row(
          children: [
            Expanded(child: _buildUploadField('UPLOAD REFERENCE', 'Image')),
            const SizedBox(width: 24),
            Expanded(child: _buildDropdownField('LOCATION', 'Type Address', ['Type Address', 'Current Location', 'Custom Address'])),
          ],
        ),
        const SizedBox(height: 24),
        
        // Row 6: Select Price Range and Total Guest Expected
        Row(
          children: [
            Expanded(child: _buildDropdownField('SELECT PRICE RANGE', '1000 TO 5000', ['1000 TO 5000', '5000 TO 10000', '10000 TO 20000', '20000+'])),
            const SizedBox(width: 24),
            Expanded(child: _buildDropdownField('TOTAL GUEST EXPECTED', '50K', ['50K', '100K', '200K', '500K+'])),
          ],
        ),
        const SizedBox(height: 24),
        
        // Row 7: Preferred Contact Time and Call Enquiry Number
        Row(
          children: [
            Expanded(child: _buildDropdownField('PREFERRED CONTACT TIME', 'Morning', ['Morning', 'Afternoon', 'Evening', 'Anytime'])),
            const SizedBox(width: 24),
            Expanded(child: _buildTextField('CALL ENQUIRY NUMBER', '9391486799')),
          ],
        ),
        const SizedBox(height: 24),
        
        // Row 8: Language Preference and Payment Type
        Row(
          children: [
            Expanded(child: _buildDropdownField('LANGUAGE PREFERENCE', 'Tamil', ['Tamil', 'Telugu', 'Hindi', 'English'])),
            const SizedBox(width: 24),
            Expanded(child: _buildDropdownField('PAYMENT TYPE', 'Payment Type', ['Cash', 'Card', 'UPI', 'Bank Transfer'])),
          ],
        ),
        const SizedBox(height: 24),
        
        // Row 9: Description (Full Width)
        _buildLargeTextAreaField('DESCRIBE FUNCTION DETAIL ( OPTIONAL )', 'Type Here'),
      ],
    );
  }

  Widget _buildDropdownField(String label, String hint, List<String> items) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: const TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w600,
            color: Colors.black87,
          ),
        ),
        const SizedBox(height: 8),
        Container(
          height: 48,
          decoration: BoxDecoration(
            border: Border.all(color: Colors.grey.shade300),
            borderRadius: BorderRadius.circular(0),
          ),
          child: DropdownButtonFormField<String>(
            decoration: const InputDecoration(
              border: InputBorder.none,
              contentPadding: EdgeInsets.symmetric(horizontal: 12, vertical: 12),
            ),
            hint: Text(
              hint,
              style: TextStyle(
                color: Colors.grey.shade600,
                fontSize: 14,
              ),
            ),
            items: items.map((item) => DropdownMenuItem(
              value: item,
              child: Text(item),
            )).toList(),
            onChanged: (value) {
              // Handle dropdown selection
            },
          ),
        ),
      ],
    );
  }

  Widget _buildTextField(String label, String hint) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: const TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w600,
            color: Colors.black87,
          ),
        ),
        const SizedBox(height: 8),
        Container(
          height: 48,
          decoration: BoxDecoration(
            border: Border.all(color: Colors.grey.shade300),
            borderRadius: BorderRadius.circular(0),
          ),
          child: TextFormField(
            decoration: InputDecoration(
              border: InputBorder.none,
              contentPadding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
              hintText: hint,
              hintStyle: TextStyle(
                color: Colors.grey.shade600,
                fontSize: 14,
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildDateField(String label, String hint) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: const TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w600,
            color: Colors.black87,
          ),
        ),
        const SizedBox(height: 8),
        Container(
          height: 48,
          decoration: BoxDecoration(
            border: Border.all(color: Colors.grey.shade300),
            borderRadius: BorderRadius.circular(4),
          ),
          child: TextFormField(
            controller: dateController,
            decoration: InputDecoration(
              border: InputBorder.none,
              contentPadding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
              hintText: hint,
              hintStyle: TextStyle(
                color: Colors.grey.shade600,
                fontSize: 14,
              ),
              suffixIcon: IconButton(
                icon: const Icon(Icons.calendar_today, size: 20, color: Colors.grey),
                onPressed: () => _selectDate(context),
              ),
            ),
            readOnly: true,
            onTap: () => _selectDate(context),
          ),
        ),
      ],
    );
  }

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime.now(),
      lastDate: DateTime(2030),
      builder: (BuildContext context, Widget? child) {
        return Theme(
          data: ThemeData.light().copyWith(
            primaryColor: const Color(0xFFD4BB26),
            colorScheme: const ColorScheme.light(
              primary: Color(0xFFD4BB26),
              onPrimary: Colors.black,
              surface: Colors.white,
              onSurface: Colors.black,
            ),
            dialogBackgroundColor: Colors.white,
          ),
          child: child!,
        );
      },
    );
    if (picked != null) {
      setState(() {
        dateController.text = "${picked.day.toString().padLeft(2, '0')}/${picked.month.toString().padLeft(2, '0')}/${picked.year}";
      });
    }
  }
  Widget _buildTextAreaField(String label, String hint) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: const TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w600,
            color: Colors.black87,
          ),
        ),
        const SizedBox(height: 8),
        Container(
          height: 48,
          decoration: BoxDecoration(
            border: Border.all(color: Colors.grey.shade300),
            borderRadius: BorderRadius.circular(0),
          ),
          child: TextFormField(
            maxLines: 3,
            decoration: InputDecoration(
              border: InputBorder.none,
              contentPadding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
              hintText: hint,
              hintStyle: TextStyle(
                color: Colors.grey.shade600,
                fontSize: 14,
              ),
            ),
          ),
        ),
      ],
    );
  }
  
  Widget _buildLargeTextAreaField(String label, String hint) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: const TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w600,
            color: Colors.black87,
          ),
        ),
        const SizedBox(height: 8),
        Container(
          height: 120,
          decoration: BoxDecoration(
            border: Border.all(color: Colors.grey.shade300),
            borderRadius: BorderRadius.circular(4),
          ),
          child: TextFormField(
            maxLines: 6,
            decoration: InputDecoration(
              border: InputBorder.none,
              contentPadding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
              hintText: hint,
              hintStyle: TextStyle(
                color: Colors.grey.shade600,
                fontSize: 14,
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildUploadField(String label, String hint) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: const TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w600,
            color: Colors.black87,
          ),
        ),
        const SizedBox(height: 8),
        Container(
          height: 48,
          decoration: BoxDecoration(
            border: Border.all(color: Colors.grey.shade300),
            borderRadius: BorderRadius.circular(0),
          ),
          child: Row(
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 12),
                  child: Text(
                    hint,
                    style: TextStyle(
                      color: Colors.grey.shade600,
                      fontSize: 14,
                    ),
                  ),
                ),
              ),
              Container(
                height: 48,
                width: 48,
                decoration: BoxDecoration(
                  color: Colors.grey.shade100,
                  borderRadius: const BorderRadius.only(
                    topRight: Radius.circular(0),
                    bottomRight: Radius.circular(0),
                  ),
                ),
                child: const Icon(
                  Icons.upload_file,
                  color: Colors.grey,
                  size: 20,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildSubmitButton() {
    return Container(
      width: 150,
      height: 50,
      decoration: BoxDecoration(
        color: const Color(0xFFD4BB26),
        borderRadius: BorderRadius.circular(2),
      ),
      child: TextButton(
        onPressed: () {
          // Handle form submission
          context.go('/em_contractor_profiles');
        },
        child: const Text(
          'SUBMIT',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w600,
            fontSize: 16,
          ),
        ),
      ),
    );
  }
}