import 'package:flutter/material.dart';
import 'package:lalitha_peetham/widgets/reusable_responsive_type_widget.dart';

class AppointmentBookingWidget extends StatefulWidget {
  const AppointmentBookingWidget({super.key});

  @override
  State<AppointmentBookingWidget> createState() =>
      _AppointmentBookingWidgetState();
}

class _AppointmentBookingWidgetState extends State<AppointmentBookingWidget> {
  final _controllers = {
    'firstName': TextEditingController(),
    'lastName': TextEditingController(),
    'phone': TextEditingController(),
    'email': TextEditingController(),
  };

  String? selectedService;
  DateTime? selectedDate;

  final services = [
    'Astrology Consultation',
    'Horoscope Reading',
    'Palmistry',
    'Numerology',
    'Tarot Card Reading',
  ];

  InputDecoration _inputDecoration(String hint) {
    return InputDecoration(
      hintText: hint,
      hintStyle: TextStyle(color: Colors.grey[500], fontSize: 14),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(4),
        borderSide: BorderSide(color: Colors.grey[400]!),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(4),
        borderSide: BorderSide(color: Colors.grey[400]!),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(4),
        borderSide: const BorderSide(color: Colors.black),
      ),
      contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
    );
  }

  Widget _buildTextField(String label, String hint, String key) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: const TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w600,
            letterSpacing: 1,
          ),
        ),
        const SizedBox(height: 8),
        TextField(
          controller: _controllers[key],
          decoration: _inputDecoration(hint),
        ),
      ],
    );
  }

  Widget _buildDropdown() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'SERVICES*',
          style: TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w600,
            letterSpacing: 1,
          ),
        ),
        const SizedBox(height: 8),
        DropdownButtonFormField<String>(
          value: selectedService,
          hint: Text(
            'Choose services',
            style: TextStyle(color: Colors.grey[500], fontSize: 14),
          ),
          decoration: _inputDecoration(''),
          items: services
              .map((service) =>
                  DropdownMenuItem(value: service, child: Text(service)))
              .toList(),
          onChanged: (value) => setState(() => selectedService = value),
        ),
      ],
    );
  }

  Widget _buildDatePicker() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'DATE*',
          style: TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w600,
            letterSpacing: 1,
          ),
        ),
        const SizedBox(height: 8),
        GestureDetector(
          onTap: () async {
            final picked = await showDatePicker(
              context: context,
              initialDate: DateTime.now(),
              firstDate: DateTime.now(),
              lastDate: DateTime.now().add(const Duration(days: 365)),
            );
            if (picked != null) {
              setState(() => selectedDate = picked);
            }
          },
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey[400]!),
              borderRadius: BorderRadius.circular(4),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  selectedDate != null
                      ? '${selectedDate!.day}/${selectedDate!.month}/${selectedDate!.year}'
                      : 'Choose Date',
                  style: TextStyle(
                    color:
                        selectedDate != null ? Colors.black : Colors.grey[500],
                    fontSize: 14,
                  ),
                ),
                Icon(Icons.keyboard_arrow_down, color: Colors.grey[500]),
              ],
            ),
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final isMobile = screenWidth <= 600;
    final horizontalPadding = isMobile ? 16.0 : 50.0;
    final maxFormWidth = 900.0;
    final isTablet = ResponsiveHelper.isTablet(context);
    final isDesktop = ResponsiveHelper.isDesktop(context);

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: horizontalPadding),
      child: Column(
        children: [
          const SizedBox(height: 20),
          const Text(
            'F O R   E N Q U I R Y',
            style: TextStyle(
              fontSize: 12,
              letterSpacing: 3,
              fontWeight: FontWeight.w400,
            ),
          ),
          const SizedBox(height: 8),
          const Text(
            'LET’S MEET WITH OUR TEAM',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.w700,
              letterSpacing: 0.5,
            ),
          ),
          const SizedBox(height: 30),

          // First row
          Wrap(
            runSpacing: 20,
            spacing: 20,
            children: [
              SizedBox(
                width: isMobile
                    ? screenWidth - (horizontalPadding * 2)
                    : (maxFormWidth - 20) / 2,
                child: _buildTextField(
                    'FIRST NAME*', 'Enter Your First Name', 'firstName'),
              ),
              SizedBox(
                width: isMobile
                    ? screenWidth - (horizontalPadding * 2)
                    : (maxFormWidth - 20) / 2,
                child: _buildTextField(
                    'LAST NAME*', 'Enter Your Last Name', 'lastName'),
              ),
            ],
          ),

          const SizedBox(height: 20),

          // Second row
          Wrap(
            runSpacing: 20,
            spacing: 20,
            children: [
              SizedBox(
                width: isMobile
                    ? screenWidth - (horizontalPadding * 2)
                    : (maxFormWidth - 20) / 2,
                child:
                    _buildTextField('YOUR PHONE*', '+44 3737 838xxx', 'phone'),
              ),
              SizedBox(
                width: isMobile
                    ? screenWidth - (horizontalPadding * 2)
                    : (maxFormWidth - 20) / 2,
                child: _buildTextField(
                    'YOUR EMAIL*', 'youremail@domain.com', 'email'),
              ),
            ],
          ),

          const SizedBox(height: 20),

          // Third row
          Wrap(
            runSpacing: 20,
            spacing: 20,
            children: [
              SizedBox(
                width: isMobile
                    ? screenWidth - (horizontalPadding * 2)
                    : (maxFormWidth - 20) / 2,
                child: _buildDropdown(),
              ),
              SizedBox(
                width: isMobile
                    ? screenWidth - (horizontalPadding * 2)
                    : (maxFormWidth - 20) / 2,
                child: _buildDatePicker(),
              ),
            ],
          ),

          const SizedBox(height: 30),

          // Button
          SizedBox(
            width: isMobile ? double.infinity : 160,
            height: 45,
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFFD4B014),
                foregroundColor: Colors.black,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(4),
                ),
                elevation: 0,
              ),
              child: const Text(
                'Enquiry Now',
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w700,
                  letterSpacing: 1,
                ),
              ),
            ),
          ),
          const SizedBox(height: 40),

          // Download Section
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text(
                'DOWNLOAD OUR\nMOBILE APP',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                  height: 1.3,
                ),
              ),
              const SizedBox(height: 16),
              const Text(
                'Unlock the secrets of the stars witour Astrobharati Mobile App! Download\n'
                'now to explore personalized horoscopes, daily predictions. Your celestia\n'
                'journey awaits- embrace the power of the cosmos at your fingertips!"',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.black87,
                  height: 1.5,
                ),
              ),
              const SizedBox(height: 30),
               // Google Play Store button
                  Center(
                    child: Container(
                      width:
                          isMobile
                              ? screenWidth * 0.8
                              : (isTablet ? 280 : 330),
                      height: isMobile ? 80 : (isTablet ? 100 : 120),
                      decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                         Image.asset(
                          'assets/images/play_store_image.png', // replace with your actual image path
                          width: isMobile ? 24 : (isTablet ? 30 : 36),
                          height: isMobile ? 24 : (isTablet ? 30 : 36),
                          fit: BoxFit.contain,
                        ),
                          const SizedBox(width: 12),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'GET IT ON',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize:
                                      isMobile ? 10 : (isTablet ? 12 : 14),
                                  fontWeight: FontWeight.w300,
                                ),
                              ),
                              Text(
                                'GOOGLE PLAY STORE',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize:
                                      isMobile ? 14 : (isTablet ? 16 : 20),
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
            ],
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    for (var c in _controllers.values) {
      c.dispose();
    }
    super.dispose();
  }
}
