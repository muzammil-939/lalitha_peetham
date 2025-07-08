import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:lalitha_peetham/screens/SANNAI_MELAM_SCREENS/sannai_melam_layout.dart';
import 'package:intl/intl.dart';

class SannaiFuctionDetails extends StatefulWidget {
  const SannaiFuctionDetails({super.key});

  @override
  State<SannaiFuctionDetails> createState() => _SannaiFuctionDetailsState();
}

class _SannaiFuctionDetailsState extends State<SannaiFuctionDetails> {
final Map<String, List<String>> dropdownOptions = {
  'Event Type': ['Marriage', 'Upanayanam', 'Reception'],
  'Event Time Slot': ['6 Am To 9 Am', '9 Am To 12 Pm', '3 Pm To 6 Pm'],
  'Event Location': ['Chennai', 'Madurai', 'Trichy'],
  'Duration Needed': ['30 Min', 'One Hour', 'Two Hours'],
  'Pincode': ['600001', '600002', '600003'],
  'Upload Referance': ['Image', 'PDF', 'Audio Clip'],
  'Pick Slot': ['03:00 To 03:45 Pm', '04:00 To 04:45 Pm'],
  'Select Price Range': ['1000 To 3000', '3000 To 5000', '5000 To 10000'],
  'Payment Type': ['UPI', 'Credit Card', 'Cash'],
  'Language Preference': ['Tamil', 'Telugu', 'Hindi'],
};


  DateTime? selectedDate;

  @override
  Widget build(BuildContext context) {
    return SannaiMelamLayout(
      child: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 150, vertical: 40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildBreadcrumb(),
            const SizedBox(height: 50),
            const Text(
              'Function Details',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 25,
              ),
            ),
            const SizedBox(height: 30),

            LayoutBuilder(
              builder: (context, constraints) {
                double columnWidth = (constraints.maxWidth - 40) / 2;
                return Wrap(
                  spacing: 40,
                  runSpacing: 20,
                  children: [
                    _buildDropdownField('Event Type', 'Marriage', width: columnWidth),
                    _buildDateField('Event Date', width: columnWidth),
                    _buildDropdownField('Event Time Slot', '6 Am To 9 Am', width: columnWidth),
                    _buildDropdownField('Event Location', 'Enter Event Location', width: columnWidth),
                    _buildDropdownField('Duration Needed', 'One Hour', width: columnWidth),
                    _buildDropdownField('Pincode', 'Enter Pincode', width: columnWidth),
                    _buildDropdownField('Upload Referance', '45 Min Daily', width: columnWidth),
                    _buildDropdownField('Pick Slot', '03:00 To 03:45 Pm', width: columnWidth),
                    _buildDropdownField('Select Price Range', '1000 To 3000', width: columnWidth),
                    _buildDropdownField('Payment Type', 'Payment Types', width: columnWidth),
                  ],
                );
              },
            ),

            const SizedBox(height: 20),
            _buildDropdownField('Language Preference', 'Tamil', fullWidth: true),

            const SizedBox(height: 40),
            SizedBox(
              height: 50,
              width: 150,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFFC1B11F),
                  shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(0),
                            ),
                 //padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 14),
                ),
                onPressed: () {
                  context.go('/sannai_melam_online_bookings');
                },
                child: const Text(
                  'Submit',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1,
                  ),
                ),
              ),
            )
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
            Text(' // Sannai Melam', style: TextStyle(color: Colors.black)),
            Text(' // Sannai Melam Online Booking', style: TextStyle(color: Colors.black)),
          ],
        ),
      ),
    );
  }

  Widget _buildDropdownField(String label, String hint, {bool fullWidth = false, double? width}) {
    return SizedBox(
      width: fullWidth ? double.infinity : width ?? 300,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            label.toUpperCase(),
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 6),
          DropdownButtonFormField<String>(
            decoration: InputDecoration(
              contentPadding: const EdgeInsets.symmetric(horizontal: 12, vertical: 14),
              border: OutlineInputBorder(borderRadius: BorderRadius.circular(0)),
            ),
            hint: Text(hint),
            items: (dropdownOptions[label] ?? [])
              .map((e) => DropdownMenuItem(value: e, child: Text(e)))
              .toList(),
            onChanged: (value) {},
          ),
        ],
      ),
    );
  }

  Widget _buildDateField(String label, {double? width}) {
    return SizedBox(
      width: width ?? 300,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            label.toUpperCase(),
            style: const TextStyle(fontWeight: FontWeight.w600),
          ),
          const SizedBox(height: 6),
          TextFormField(
            readOnly: true,
            controller: TextEditingController(
              text: selectedDate != null ? DateFormat('yyyy-MM-dd').format(selectedDate!) : '',
            ),
            decoration: InputDecoration(
              hintText: 'Pick Your Birth',
              suffixIcon: const Icon(Icons.calendar_today_outlined, size: 18),
              border: OutlineInputBorder(borderRadius: BorderRadius.circular(4)),
              contentPadding: const EdgeInsets.symmetric(horizontal: 12, vertical: 14),
            ),
            onTap: () async {
              final DateTime? picked = await showDatePicker(
                context: context,
                initialDate: DateTime.now(),
                firstDate: DateTime(2000),
                lastDate: DateTime(2101),
              );
              if (picked != null && picked != selectedDate) {
                setState(() {
                  selectedDate = picked;
                });
              }
            },
          ),
        ],
      ),
    );
  }
}
