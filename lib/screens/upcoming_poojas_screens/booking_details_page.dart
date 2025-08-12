import 'package:flutter/material.dart';
import 'package:lalitha_peetham/screens/upcoming_poojas_screens/upcoming_pooja_layout.dart';

class BookingDetailsPage extends StatefulWidget {
  const BookingDetailsPage({super.key});

  @override
  State<BookingDetailsPage> createState() => _BookingDetailsPageState();
}

class _BookingDetailsPageState extends State<BookingDetailsPage> {
  @override
  Widget build(BuildContext context) {
    return UpcomingPoojaLayout(
      child: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 150,vertical: 40),
        child: Container(
          decoration: BoxDecoration(
            color: const Color(0xFFFFF4CC), // Light yellow background
            borderRadius: BorderRadius.circular(12),
          ),
          padding: const EdgeInsets.all(24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Header
              Center(
                child: Column(
                  children: const [
                    Text(
                      "Thank you, Ravi Kumar!",
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 8),
                    Text(
                      "Your Pooja booking is confirmed. We're thrilled to help you celebrate this special occasion.",
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 14),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 24),

              // Booking Details
              const Text(
                "Booking Details",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 12),
              _buildDetailRow("Booking ID", "#20235GC001234", "Name", "Ravi Kumar"),
              _buildDetailRow("Email", "ravi.kumar@email.com", "Phone", "+91 9876543210"),
              _buildDetailRow("Festival", "Ganesh Chaturthi", "Date", "September 10, 2024"),
              _buildDetailRow("Time", "9:00 AM – 11:00 AM", "Location", "123, Temple Road, Mumbai"),

              const SizedBox(height: 24),

              // Service Status
              const Text(
                "Service Status",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 12),
              _buildDetailRow("Pandit Booking", "Confirmed", "Flower Decoration", "Confirmed"),
              _buildDetailRow("Photography/Videography", "Confirmed", "Pooja Samagri", "Confirmed"),

              const SizedBox(height: 24),

              // Payment Details
              const Text(
                "Payment Details",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 12),
              _buildDetailRow("Total Paid", "₹7,300", "Payment Method", "UPI (Google Pay)"),

              const SizedBox(height: 24),

              // Buttons
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.black,
                      foregroundColor: Colors.white,
                      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                    ),
                    onPressed: () {},
                    child: const Text("Download Invoice"),
                  ),
                  const SizedBox(width: 12),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.amber,
                      foregroundColor: Colors.black,
                      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                    ),
                    onPressed: () {},
                    child: const Text("Add to Calendar"),
                  ),
                ],
              ),

              const SizedBox(height: 24),

              // Next Steps
              const Text(
                "Next Steps",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 8),
              const Text(
                "You will receive a reconfirmation call one day prior to the event. For any queries, please contact us at +91 9876543210 or support@divinecelebrations.com.",
                style: TextStyle(fontSize: 14),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildDetailRow(String label1, String value1, String label2, String value2) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 6),
      child: Row(
        children: [
          Expanded(child: _buildDetailItem(label1, value1)),
          const SizedBox(width: 12),
          Expanded(child: _buildDetailItem(label2, value2)),
        ],
      ),
    );
  }

  Widget _buildDetailItem(String label, String value) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: const TextStyle(fontSize: 12, color: Colors.grey),
        ),
        const SizedBox(height: 2),
        Text(
          value,
          style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
        ),
      ],
    );
  }
}
