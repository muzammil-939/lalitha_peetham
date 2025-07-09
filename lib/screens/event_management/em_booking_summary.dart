import 'package:flutter/material.dart';
import 'package:lalitha_peetham/screens/event_management/em_layout.dart';

class EmBookingSummary extends StatefulWidget {
  const EmBookingSummary({super.key});

  @override
  State<EmBookingSummary> createState() => _EmBookingSummaryState();
}

class _EmBookingSummaryState extends State<EmBookingSummary> {
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
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _buildLeftSection(),
                const SizedBox(width: 40),
                Expanded(child: _buildRightSection()),
              ],
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
          borderRadius: BorderRadius.circular(30),
        ),
        child: const Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(Icons.home, size: 16, color: Colors.black),
            SizedBox(width: 6),
            Text(
              ' / /  Event Management  / /  Booking Summary',
              style: TextStyle(color: Colors.black, fontWeight: FontWeight.w500),
            ),
          ],
        ),
      ),
    );
  }

Widget _buildLeftSection() {
  return Column(
    children: [
      Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // Circular Profile Image with Yellow Border
          Container(
            padding: const EdgeInsets.all(4), // Yellow border thickness
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(color: Color(0xFFD4BB26), width: 3),
            ),
            child: const CircleAvatar(
              radius: 60,
              backgroundImage: AssetImage('assets/images/em6.jpg'), // Replace with actual image
            ),
          ),
          const SizedBox(width: 30),

          // Green Circular Tick Icon
          Container(
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(color: Colors.green, width: 2),
            ),
            child: const Icon(Icons.check, color: Colors.green, size: 35),
          ),
        ],
      ),
      const SizedBox(height: 20),

      // Flower image
      ClipRRect(
        borderRadius: BorderRadius.circular(4),
        child: Image.asset(
          'assets/images/em7.jpg', // Replace with actual image
          width: 350,
          height: 450,
          fit: BoxFit.cover,
        ),
      ),
      
    ],
    
  );
}


  Widget _buildRightSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "THANK YOU FOR YOUR BOOKING!",
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 10),
        const Text(
          "These Are The Details You've\nProvided — Our Team Will Contact\nYou Shortly To Confirm And Assist Further.",
          style: TextStyle(color: Colors.grey),
        ),
        const SizedBox(height: 20),
        const Text(
          "YOUR BOOKING DETAILS:",
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 14),
        const _DetailLine(title: "Name", value: "Keerthana"),
        const _DetailLine(title: "Phone Number", value: "7868911991"),
        const _DetailLine(title: "Event Type", value: "E.g., Wedding"),
        const _DetailLine(title: "Event Date", value: "[DD/MM/YYYY]"),
        const _DetailLine(title: "Time", value: "[E.g., 6:00 PM]"),
        const _DetailLine(title: "Location", value: "3/4, West Street, Marathehalli, Bangalore"),
        const _DetailLine(title: "Selected Service", value: "Srinavi Wedding Setups"),
        const _DetailLine(title: "Service Type", value: "Wedding Service Set"),
        const _DetailLine(title: "Price", value: "₹25,000 Onwards"),
        const _DetailLine(title: "Special Notes", value: "More Details You Will Get Shortly"),
        const SizedBox(height: 25),
        SizedBox(
          height: 50,
          width: 300,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color(0xFFD4BB26),
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 16),
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(0)),
              elevation: 0,
            ),
            onPressed: () {},
            child: const Text(
              "Download Invoice Details",
              style: TextStyle(color: Colors.white),
            ),
          ),
        )
      ],
    );
  }
}

class _DetailLine extends StatelessWidget {
  final String title;
  final String value;
  const _DetailLine({required this.title, required this.value});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 2),
      child: RichText(
        text: TextSpan(
          text: '$title: ',
          style: const TextStyle(color: Colors.black, fontWeight: FontWeight.w600),
          children: [
            TextSpan(
              text: value,
              style: const TextStyle(fontWeight: FontWeight.normal),
            ),
          ],
        ),
      ),
    );
  }
}
