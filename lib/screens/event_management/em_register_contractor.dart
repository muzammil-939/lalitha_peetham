import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:lalitha_peetham/screens/event_management/em_layout.dart';

class EmRegisterContractor extends StatefulWidget {
  const EmRegisterContractor({super.key});

  @override
  State<EmRegisterContractor> createState() => _EmRegisterContractorState();
}

class _EmRegisterContractorState extends State<EmRegisterContractor> {
  final TextEditingController _contractorNameController = TextEditingController();
  final TextEditingController _businessNameController = TextEditingController();
  final TextEditingController _mobNumberController = TextEditingController();
  final TextEditingController _locationController = TextEditingController();
  final TextEditingController _addressController = TextEditingController();
  final TextEditingController _pincodeController = TextEditingController();
  
  String _selectedCategory = 'Wedding';
  String _selectedLandmark = 'Tamil';
  List<String> _selectedServices = [];
  bool _allowLocation = false;
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
            _buildStepIndicator(),
            const SizedBox(height: 30),
            _buildBasicDetailsForm(),
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
            Text(' / /  Event Management / /  Register As A Contractor',
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

      ],
    )
  );
  }
  Widget _buildStepIndicator() {
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          _buildStepCircle('1', true),
          _buildStepLine(),
          _buildStepCircle('2', false),
          _buildStepLine(),
          _buildStepCircle('3', false),
        ],
      ),
    );
  }

  Widget _buildStepCircle(String number, bool isActive) {
    return Container(
      width: 40,
      height: 40,
      decoration: BoxDecoration(
        color: isActive ? const Color(0xFFD4BB26) : const Color(0xFFE8E8E8),
        shape: BoxShape.circle,
      ),
      child: Center(
        child: Text(
          number,
          style: TextStyle(
            color: isActive ? Colors.black : Colors.grey[600],
            fontWeight: FontWeight.w600,
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
      color: const Color(0xFFE8E8E8),
    );
  }

  Widget _buildBasicDetailsForm() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'BASIC DETAILS',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w600,
            color: Colors.black87,
          ),
        ),
        const SizedBox(height: 20),
        Row(
          children: [
            Expanded(
              child: _buildTextField(
                'CONTRACTOR NAME*',
                'Enter Name!',
                _contractorNameController,
              ),
            ),
            const SizedBox(width: 20),
            Expanded(
              child: _buildTextField(
                'BUSINESS / BRAND NAME*',
                'Enter Business Name!',
                _businessNameController,
              ),
            ),
          ],
        ),
        const SizedBox(height: 20),
        Row(
          children: [
            Expanded(
              child: _buildDropdownField(
                'CATEGORY OF SERVICE*',
                _selectedCategory,
                ['Wedding', 'Corporate', 'Birthday', 'Anniversary'],
                (value) => setState(() => _selectedCategory = value!),
              ),
            ),
            const SizedBox(width: 20),
            Expanded(
              child: _buildTextField(
                'LOCATION DETAILS*',
                'Enter Location Details',
                _locationController,
              ),
            ),
          ],
        ),
        const SizedBox(height: 20),
        Row(
          children: [
            Expanded(
              child: _buildTextField(
                'MOB NUMBER*',
                'Enter Mobile Number',
                _mobNumberController,
              ),
            ),
            const SizedBox(width: 20),
            Expanded(
              child: _buildTextField(
                'FULL ADDRESS',
                'Enter Address!',
                _addressController,
              ),
            ),
          ],
        ),
        const SizedBox(height: 20),
        Row(
          children: [
            Expanded(
              child: _buildTextField(
                'PINCODE*',
                'Enter Pincode',
                _pincodeController,
              ),
            ),
            const SizedBox(width: 20),
            Expanded(
              child: _buildDropdownField(
                'LANDMARK* (OPTIONAL)',
                _selectedLandmark,
                ['Tamil', 'English', 'Hindi'],
                (value) => setState(() => _selectedLandmark = value!),
              ),
            ),
          ],
        ),
        const SizedBox(height: 30),
        _buildSubServiceSection(),
      ],
    );
  }

  Widget _buildTextField(String label, String hint, TextEditingController controller) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: const TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w500,
            color: Colors.black87,
          ),
        ),
        const SizedBox(height: 8),
        TextFormField(
          controller: controller,
          decoration: InputDecoration(
            hintText: hint,
            hintStyle: TextStyle(color: Colors.grey[400]),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(0),
              borderSide: BorderSide(color: Colors.grey[300]!),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(0),
              borderSide: BorderSide(color: Colors.grey[300]!),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(0),
              borderSide: const BorderSide(color: Color(0xFFD4BB26)),
            ),
            contentPadding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
          ),
        ),
      ],
    );
  }

  Widget _buildDropdownField(String label, String value, List<String> options, ValueChanged<String?> onChanged) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: const TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w500,
            color: Colors.black87,
          ),
        ),
        const SizedBox(height: 8),
        DropdownButtonFormField<String>(
          value: value,
          onChanged: onChanged,
          decoration: InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(0),
              borderSide: BorderSide(color: Colors.grey[300]!),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(0),
              borderSide: BorderSide(color: Colors.grey[300]!),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(0),
              borderSide: const BorderSide(color: Color(0xFFD4BB26)),
            ),
            contentPadding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
          ),
          items: options.map((String option) {
            return DropdownMenuItem<String>(
              value: option,
              child: Text(option),
            );
          }).toList(),
        ),
      ],
    );
  }

  Widget _buildSubServiceSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'ADD SUB SERVICE KEY WORDS',
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w500,
            color: Colors.black87,
          ),
        ),
        const SizedBox(height: 8),
        Container(
          width: double.infinity,
          padding: const EdgeInsets.all(12),
          decoration: BoxDecoration(
            border: Border.all(color: Colors.grey[300]!),
            borderRadius: BorderRadius.circular(0),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              DropdownButton<String>(
                hint: const Text('Type Key Terms'),
                isExpanded: true,
                underline: Container(),
                items: ['Photographer', 'Catering', 'Flower Decoration']
                    .map((String item) {
                  return DropdownMenuItem<String>(
                    value: item,
                    child: Text(item),
                  );
                }).toList(),
                onChanged: (String? value) {
                  if (value != null && !_selectedServices.contains(value)) {
                    setState(() {
                      _selectedServices.add(value);
                    });
                  }
                },
              ),
              const SizedBox(height: 12),
              Wrap(
                spacing: 8,
                runSpacing: 8,
                children: [
                  _buildServiceChip('Photographer'),
                  _buildServiceChip('Catering'),
                  _buildServiceChip('Flower Decoration'),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildServiceChip(String service) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
      decoration: BoxDecoration(
        color: Colors.grey[200],
        borderRadius: BorderRadius.circular(0),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            service,
            style: const TextStyle(
              fontSize: 12,
              color: Colors.black87,
            ),
          ),
          const SizedBox(width: 4),
          const Icon(
            Icons.info_outline,
            size: 14,
            color: Colors.grey,
          ),
        ],
      ),
    );
  }

  Widget _buildSubmitButton() {
    return SizedBox(
      height: 50,
      width: 150,
      child: ElevatedButton(
        onPressed: () {
          // Handle submit
          context.go('/em_register_vendor');
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: const Color(0xFFC1B11F),
          foregroundColor: Colors.white,
          padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 12),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(0),
          ),
        ),
        child: const Text(
          'SUBMIT',
          style: TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 14,
          ),
        ),
      ),
    );
  }
}