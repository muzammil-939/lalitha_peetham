
import 'package:flutter/material.dart';

import 'package:lalitha_peetham/screens/online_vastu_property/vastupooja_layout.dart';

class ChartBookingConfirmedPage extends StatefulWidget {
  const ChartBookingConfirmedPage({super.key});

  @override
  State<ChartBookingConfirmedPage> createState() => _ChartBookingConfirmedPageState();
}

class _ChartBookingConfirmedPageState extends State<ChartBookingConfirmedPage> {
  @override
  Widget build(BuildContext context) {
    return VastupoojaLayout(
      child: SingleChildScrollView(
        child: Column(
          children: [
            buildherosection(),
            
            BookingConfirmationPage(),
           
            SizedBox(height: 80),
          ],
        ),
      ),
    );
  }

  Widget buildherosection() {
    return Stack(
      alignment: Alignment.center,
      children: [
        Image.asset(
          'assets/images/vastupooja1.png',
          width: double.infinity,
          height: 600,
          fit: BoxFit.cover,
        ),
        Positioned(
          top: 40,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Icon(Icons.menu, color: Colors.white),
              SizedBox(width: 6),
              Text("Menu", style: TextStyle(color: Colors.white, fontSize: 25, fontWeight: FontWeight.bold)),
            ],
          ),
        ),
        Positioned(
          top: 120,
          child: Column(
            children: const [
              
              Text(
                "Your booking has been confirmed. Here\nare the details",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 45,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
        Positioned(
          bottom: 20,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(0),
            child: Image.asset(
              'assets/images/online_pooja2.jpg',
              height: 180,
              width: 280,
              fit: BoxFit.cover,
            ),
          ),
        )
      ],
    );
  }

}




class BookingConfirmationPage extends StatelessWidget {
  const BookingConfirmationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        // 🌄 Background Image
        Positioned(
          top: 0,
          left: 0,
          child: SizedBox(
            height: 350,
            width: 1500,
            child: Image.asset(
              'assets/images/vastupooja4.png',
              fit: BoxFit.cover,
            ),
          ),
        ),

        // 🪐 Planet Image
        Positioned(
          top: 40,
          right: 30,
          child: Image.asset(
            'assets/images/vastupooja11.png',
            height: 60,
            width: 60,
          ),
        ),

        // 🌌 Background Watermark Vector
        Positioned(
          top: 0,
          bottom: 0,
          right: 380,
          child: Opacity(
            opacity: 0.8,
            child: Image.asset(
              'assets/images/Vector (2).png',
              width: 500,
              height: 500,
              fit: BoxFit.contain,
            ),
          ),
        ),

        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 200, vertical: 50),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "BOOKING CONFIRMED",
                  style: TextStyle(
                    fontSize: 45,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                const SizedBox(height: 24),

                // Profile Row
                Row(
                  children: [
                    CircleAvatar(
                      radius: 40,
                      backgroundColor: Color(0xFFE6B800),
                      child: CircleAvatar(
                        radius: 36,
                        backgroundImage: AssetImage('assets/images/vastupooja7.png'),
                      ),
                    ),
                    const SizedBox(width: 24),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          "Name: Sreehari",
                          style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                        ),
                        Text("Experience: 15+ Years"),
                        Text("Languages: Hindi, English, Tamil"),
                      ],
                    ),
                  ],
                ),

                const SizedBox(height: 30),
                const Text(
                  "Specializations:",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                ),
                const SizedBox(height: 10),
                const BulletPoint(text: "Vedic Astrology"),
                const BulletPoint(text: "Kundli Matching"),
                const BulletPoint(text: "Career & Finance Guidance"),
                const BulletPoint(text: "Love & Relationship Solutions"),
                const BulletPoint(text: "Horoscope Reading"),

                const SizedBox(height: 30),
                const Text(
                  "📅 Session Details",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                ),
                const SizedBox(height: 10),
                const InfoText("Appointment Date:", "Thursday, June 6, 2025"),
                const InfoText("Appointment Time:", "3:30 PM – 4:00 PM IST"),
                const InfoText("Consultation Mode:", "Video Call"),
                const InfoText("Duration:", "30 Minutes"),
                const InfoText("Booking Status:", "✅ Confirmed"),
                const InfoText("Booking ID:", "ASTRO-BK-945821"),
                const InfoText("Client Name:", "Ravi Kumar"),

                const SizedBox(height: 30),
                const Text(
                  "💳 Payment Information",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                ),
                const SizedBox(height: 10),
                const InfoText("Consultation Fee:", "₹999 (First Consultation Offer)"),
                const InfoText("Payment Status:", "✅ Paid"),
                const InfoText("Transaction ID:", "TXN9843527601"),
                const InfoText("Payment Method:", "UPI (PhonePe)"),
                const InfoText("Date & Time Of Payment:", "June 2, 2025 – 11:38 AM IST"),

                const SizedBox(height: 30),
                const Text(
                  "📩 Confirmation & Access",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                ),
                const SizedBox(height: 10),
                const Text(
                  "• You will receive a calendar invite and a video call link 15 minutes before your session.\n"
                  "• An SMS and email confirmation have been sent to your registered mobile and email address.\n"
                  "• Please join the session on time to ensure you receive the full consultation.",
                  style: TextStyle(height: 1.5),
                ),
                const SizedBox(height: 40),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class BulletPoint extends StatelessWidget {
  final String text;

  const BulletPoint({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 6),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text("• ",
              style: TextStyle(fontSize: 16, height: 1.4, color: Colors.black)),
          Expanded(
            child: Text(
              text,
              style: const TextStyle(fontSize: 16, height: 1.4),
            ),
          ),
        ],
      ),
    );
  }
}

class InfoText extends StatelessWidget {
  final String label;
  final String value;

  const InfoText(this.label, this.value, {super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 6),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "$label ",
            style: const TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 16,
              color: Colors.black,
            ),
          ),
          Expanded(
            child: Text(
              value,
              style: const TextStyle(fontSize: 16, color: Colors.black87),
            ),
          ),
        ],
      ),
    );
  }
}
