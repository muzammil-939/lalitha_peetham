import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:lalitha_peetham/screens/upcoming_poojas_screens/upcoming_pooja_layout.dart';

class BookingConfirmationScreen extends StatefulWidget {
  const BookingConfirmationScreen({super.key});

  @override
  State<BookingConfirmationScreen> createState() =>
      _BookingConfirmationScreenState();
}

class _BookingConfirmationScreenState extends State<BookingConfirmationScreen> {
  @override
  Widget build(BuildContext context) {
    return UpcomingPoojaLayout(
      child: Column(
        children: [
          SizedBox(height: 80,),
          Center(
            child: Container(
              width: 600,
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: const Color(0xFFFFF4D1), // Light yellow background
                borderRadius: BorderRadius.circular(8),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Title
                  const Text(
                    "Booking Confirmation",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 20),
          
                  // Customer Details
                  _sectionTitle("Customer Details"),
                  _detailRow("Name", "Ravi Kumar", "Email", "ravi.kumar@gmail.com"),
                  _detailRow("Phone", "+91 9988554210", "Location Type", "Home"),
          
                  const SizedBox(height: 20),
          
                  // Booking Details
                  _sectionTitle("Booking Details"),
                  _detailRow(
                      "Festival", "Ganesh Chaturthi", "Booking Date", "August 14, 2024"),
                  _detailRow("Time Slot", "9:00 AM - 10:00 AM", "", ""),
          
                  const SizedBox(height: 20),
          
                  // Selected Services
                  _sectionTitle("Selected Services"),
                  _detailRow("Pooja", "Basic Pooja Booking", "Pooja Description", ""),
                  _detailRow("Price", "₹7,000", "Topic", "Sankalp Seva"),
                  _detailRow("Custom Requests", "None", "", ""),
          
                  const SizedBox(height: 8),
                  const Text(
                    "Additional Notes: Please ensure the pandit arrives on time. We have senior citizens at home, so the pooja should be conducted at a moderate pace.",
                    style: TextStyle(fontSize: 14),
                  ),
          
                  const SizedBox(height: 20),
          
                  // Pricing Summary
                  _sectionTitle("Pricing Summary"),
                  _detailRow("Pooja", "₹7,000", "Pooja Description", ""),
                  _detailRow("Price", "₹500", "Topic", "Sankalp Seva"),
                  _detailRow("Service Charges", "₹200", "Total", "₹7,500"),
          
                  const SizedBox(height: 20),
          
                  // Billing Details
                  _sectionTitle("Billing Details"),
                  _detailRow("Name", "Ravi Kumar", "Address",
                      "456, Lokar Apartments, Sector 16, New Delhi, 110045"),
          
                  const SizedBox(height: 20),
          
                  // Confirm Button
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFFFAC738),
                        padding: const EdgeInsets.symmetric(vertical: 14),
                      ),
                      onPressed: () {
                        context.go(
                          '/booking_summary'
                        );
                      },
                      child: const Text(
                        "Confirm & Pay ₹7,500",
                        style: TextStyle(color: Colors.black, fontSize: 16),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 80,)
        ],
      ),
    );
  }

  Widget _sectionTitle(String title) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0),
      child: Text(
        title,
        style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
      ),
    );
  }

  Widget _detailRow(String label1, String value1, String label2, String value2) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: _detailColumn(label1, value1),
          ),
          const SizedBox(width: 20),
          Expanded(
            child: label2.isNotEmpty ? _detailColumn(label2, value2) : Container(),
          ),
        ],
      ),
    );
  }

  Widget _detailColumn(String label, String value) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style:
              const TextStyle(fontWeight: FontWeight.w500, color: Colors.black54),
        ),
        const SizedBox(height: 4),
        Text(value, style: const TextStyle(fontSize: 14)),
      ],
    );
  }
}
