import 'package:flutter/material.dart';

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

  Widget _buildTextField(String label, String hint, String controllerKey) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w600,
            color: Colors.grey[700],
            letterSpacing: 1,
          ),
        ),
        const SizedBox(height: 8),
        TextField(
          controller: _controllers[controllerKey],
          decoration: _inputDecoration(hint),
        ),
      ],
    );
  }

  InputDecoration _inputDecoration(String hint) {
    return InputDecoration(
      hintText: hint,
      hintStyle: TextStyle(color: Colors.grey[500], fontSize: 14),
      border: _outlineBorder(Colors.grey[300]!),
      enabledBorder: _outlineBorder(Colors.grey[300]!),
      focusedBorder: _outlineBorder(Colors.blue),
      contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
    );
  }

  OutlineInputBorder _outlineBorder(Color color) {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(4),
      borderSide: BorderSide(color: color),
    );
  }

  Widget _buildDropdown() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'SERVICES*',
          style: TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w600,
            color: Colors.grey[700],
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
          items:
              services
                  .map(
                    (service) =>
                        DropdownMenuItem(value: service, child: Text(service)),
                  )
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
        Text(
          'DATE*',
          style: TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w600,
            color: Colors.grey[700],
            letterSpacing: 1,
          ),
        ),
        const SizedBox(height: 8),
        GestureDetector(
          onTap: () async {
            FocusScope.of(context).unfocus();
            await Future.delayed(const Duration(milliseconds: 100));
            if (!mounted) return;

            final picked = await showDatePicker(
              context: context,
              initialDate: DateTime.now(),
              firstDate: DateTime.now(),
              lastDate: DateTime.now().add(const Duration(days: 365)),
            );
            if (picked != null && mounted) {
              setState(() => selectedDate = picked);
            }
          },
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey[300]!),
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
                Icon(Icons.calendar_today, color: Colors.grey[500], size: 18),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildContainer(Widget child) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(24),
      margin: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.1),
            spreadRadius: 1,
            blurRadius: 8,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: child,
    );
  }

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final isDesktop = screenWidth > 1024;
    final isTablet = screenWidth > 600 && screenWidth <= 1024;
    final isMobile = screenWidth <= 600;

     // Outer horizontal padding
  final horizontalPadding = isDesktop ? 100.0 : (isTablet ? 50.0 : 16.0);
  // To keep the form from becoming too wide on very large screens:
  final maxFormWidth = 900.0;

    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: isDesktop ? 100 : (isTablet ? 50 : 16),
      ),
      child: Column(
        children: [
          // Main appointment form
          _buildContainer(
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                // Header
                Text(
                  'APPOINTMENT',
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    color: Colors.grey[600],
                    letterSpacing: 2,
                  ),
                ),
                const SizedBox(height: 16),
                Text(
                  'LET\'S MEET WITH OUR\nTEAM',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: isMobile ? 24 : 28,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey[800],
                    height: 1.2,
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  'verified journeys',
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.grey[600],
                    fontStyle: FontStyle.italic,
                  ),
                ),
                const SizedBox(height: 32),

                // First name / Last name
              Wrap(
                runSpacing: 16,
                spacing: 16,
                children: [
                  SizedBox(
                    width: isMobile ? screenWidth - (horizontalPadding * 2) : (isTablet ? (maxFormWidth - 16) / 2 : (maxFormWidth - 16) / 2),
                    child: _buildTextField(
                      'FIRST NAME*',
                      'Enter Your First Name',
                      'firstName',
                    ),
                  ),
                  SizedBox(
                    width: isMobile ? screenWidth - (horizontalPadding * 2) : (isTablet ? (maxFormWidth - 16) / 2 : (maxFormWidth - 16) / 2),
                    child: _buildTextField(
                      'LAST NAME*',
                      'Enter Your Last Name',
                      'lastName',
                    ),
                  ),
                ],
              ),
                const SizedBox(height: 24),

               // Phone / Email
              Wrap(
                runSpacing: 16,
                spacing: 16,
                children: [
                  SizedBox(
                    width: isMobile ? screenWidth - (horizontalPadding * 2) : (maxFormWidth - 16) / 2,
                    child: _buildTextField(
                      'YOUR PHONE*',
                      '+44 3737 838xxx',
                      'phone',
                    ),
                  ),
                  SizedBox(
                    width: isMobile ? screenWidth - (horizontalPadding * 2) : (maxFormWidth - 16) / 2,
                    child: _buildTextField(
                      'YOUR EMAIL*',
                      'youremail@domain.com',
                      'email',
                    ),
                  ),
                ],
              ),
                const SizedBox(height: 24),

                 Wrap(
                runSpacing: 16,
                spacing: 16,
                children: [
                  SizedBox(
                    width: isMobile ? screenWidth - (horizontalPadding * 2) : (maxFormWidth - 16) / 2,
                    child: _buildDropdown(),
                  ),
                  SizedBox(
                    width: isMobile ? screenWidth - (horizontalPadding * 2) : (maxFormWidth - 16) / 2,
                    child: _buildDatePicker(),
                  ),
                ],
              ),
                const SizedBox(height: 32),

                // Book Now button
                SizedBox(
                  width: isMobile ? double.infinity : 200,
                  child: ElevatedButton(
                    onPressed: () async {
                      FocusScope.of(context).unfocus();
                      await Future.delayed(const Duration(milliseconds: 100));
                      if (mounted) {
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                            content: Text('Booking appointment...'),
                          ),
                        );
                      }
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFFB8A715),
                      foregroundColor: Colors.white,
                      padding: const EdgeInsets.symmetric(vertical: 16),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(4),
                      ),
                      elevation: 0,
                    ),
                    child: const Text(
                      'Book Now',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),

          // Mobile App Download Section
          Container(
            width: double.infinity,
            padding: EdgeInsets.all(isMobile ? 16 : 32),
            margin: const EdgeInsets.fromLTRB(16, 0, 16, 16),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(8),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.1),
                  spreadRadius: 1,
                  blurRadius: 8,
                  offset: const Offset(0, 2),
                ),
              ],
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'DOWNLOAD OUR\nMOBILE APP',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: isMobile ? 24 : (isTablet ? 32 : 40),
                    fontWeight: FontWeight.bold,
                    color: Colors.grey[800],
                    height: 1.2,
                  ),
                ),
                const SizedBox(height: 24),
                Column(
                  crossAxisAlignment:
                      isMobile
                          ? CrossAxisAlignment.center
                          : CrossAxisAlignment.start,
                  children: [
                    Container(
                      constraints: BoxConstraints(
                        maxWidth:
                            isDesktop ? screenWidth * 0.75 : double.infinity,
                      ),
                      child: Text(
                        'Unlock the secrets of the stars witour Astrobharati Mobile App! Download \nnow to explore personalized horoscopes, daily predictions. Your celestia \njourney awaits- embrace the power of the cosmos at your fingertips!"',
                        textAlign: isMobile ? TextAlign.center : TextAlign.left,
                        style: TextStyle(
                          fontSize: isMobile ? 16 : (isTablet ? 20 : 24),
                          color: Colors.grey[700],
                          height: 1.5,
                        ),
                      ),
                    ),
                    const SizedBox(height: 40),

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
                            Container(
                              width: isMobile ? 24 : (isTablet ? 30 : 36),
                              height: isMobile ? 24 : (isTablet ? 30 : 36),
                              decoration: const BoxDecoration(
                                gradient: LinearGradient(
                                  colors: [
                                    Color(0xFF4CAF50),
                                    Color(0xFF2196F3),
                                    Color(0xFFFF9800),
                                    Color(0xFFF44336),
                                  ],
                                  stops: [0.0, 0.33, 0.66, 1.0],
                                ),
                              ),
                              child: Icon(
                                Icons.play_arrow,
                                color: Colors.white,
                                size: isMobile ? 20 : (isTablet ? 25 : 30),
                              ),
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
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    _controllers.values.forEach((controller) => controller.dispose());
    super.dispose();
  }
}
