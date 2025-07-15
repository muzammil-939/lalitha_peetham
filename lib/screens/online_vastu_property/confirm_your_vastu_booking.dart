import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:lalitha_peetham/screens/online_vastu_property/vastupooja_layout.dart';

class ConfirmYourVastuBooking extends StatefulWidget {
  const ConfirmYourVastuBooking({super.key});

  @override
  State<ConfirmYourVastuBooking> createState() => _ConfirmYourVastuBookingState();
}

class _ConfirmYourVastuBookingState extends State<ConfirmYourVastuBooking> {
  @override
  Widget build(BuildContext context) {
    return VastupoojaLayout(
      child: SingleChildScrollView(
        child: Column(
          children: [
             buildherosection(),
              buildVastuBookingConfirmation(),
              SizedBox(height: 80,)
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
                "Confirm your request\nyour vastu booking",
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
              'assets/images/vastupooja17.png',
              height: 180,
              width: 280,
              fit: BoxFit.cover,
            ),
          ),
        )
      ],
    );
  }


  Widget buildVastuBookingConfirmation() {
    return 
    Stack(
    children: [
      // Background Image (Covering full screen)
      Positioned.fill(
        child: Image.asset(
          'assets/images/vastupooja4.png', // Make sure this path matches your asset folder
          fit: BoxFit.cover,
        ),
      ),
            // 🌑 2. Optional Planet Image (positioned right)
      Positioned(
        top: 120,
        right: 30,
        child: Image.asset(
          'assets/images/vastupooja11.png', // Adjust path
          height: 100,
          width: 100,
        ),
      ),
       Padding(
      padding: const EdgeInsets.symmetric(horizontal: 200.0),
      child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 150,),
              Text(
                "VASTU POOJA BOOKING CONFIRMATION",
                style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.w800,
                ),
                
              ),
              const SizedBox(height: 20),
              Text(
                "Thank You, Amit Sharma!",
                style: TextStyle(fontSize: 16),
              ),
              const SizedBox(height: 10),
              Text(
                "Your Vastu Pooja Has Been Successfully Booked. Below Are Your Booking And Payment Details:",
                style: TextStyle(fontSize: 14),
              ),
              const SizedBox(height: 30),
      
              // Booking Details
              Text(
                "Booking Details:",
                style: TextStyle(fontWeight: FontWeight.w700),
              ),
              const SizedBox(height: 8),
              bulletPoint("Full Name: Amit Sharma"),
              bulletPoint("Contact Number: 9000000000"),
              bulletPoint("Property Type: Home"),
              bulletPoint("Location: Maharashtra"),
              bulletPoint("Preferred Date: 15th June 2025"),
              bulletPoint("Preferred Time: 10:00 AM"),
              bulletPoint("Astrologer Assigned: Pt. Rajeev Sharma"),
              bulletPoint("Consultation Mode: Video Call"),
              const SizedBox(height: 20),
      
              // Payment Details
              Text(
                "Payment Details:",
                style: TextStyle(fontWeight: FontWeight.w700),
              ),
              const SizedBox(height: 8),
              bulletPoint("Service: Vastu Pooja Consultation"),
              bulletPoint("Amount Paid: ₹1000"),
              bulletPoint("Payment Method: UPI (Google Pay)"),
              bulletPoint("Transaction ID: TXN1234567890"),
              bulletPoint("Payment Date: 3rd June 2025"),
              bulletPoint("Status: Successful"),
              const SizedBox(height: 20),
      
              // Session Link
              Text(
                "Session Link (For Vastu Pooja Consultation)",
                style: TextStyle(fontWeight: FontWeight.w700),
              ),
              const SizedBox(height: 10),
              RichText(
                text: TextSpan(
                  style: TextStyle(color: Colors.black, fontSize: 14),
                  children: [
                    TextSpan(text: "Join Your Session Via The Link Below At Your Scheduled Time:\n"),
                    TextSpan(
                      text: "Click Here To Join The Session\n",
                      style: TextStyle(color: Colors.blue),
                    ),
                    TextSpan(
                      text: "Scheduled Time: 15th June 2025 At 10:00 AM\nPlease Join 5 Minutes Early To Avoid Delays.",
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 40),
      
              // Back To Home Button
              Center(
                child: ElevatedButton(
                  onPressed: () {
                    // Navigate to home
                    context.go('/your_scheduled_cmplt_poojas');
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xFFDC9323), // Golden yellow
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                    padding:
                        const EdgeInsets.symmetric(horizontal: 30, vertical: 12),
                  ),
                  child: const Text(
                    "Back To Home",
                    style: TextStyle(color: Colors.black, fontSize: 16),
                  ),
                ),
              ),
            ],
          ),
    ),
    ]
    );
      
  }

  Widget bulletPoint(String text) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 4),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text("• ", style: TextStyle(fontSize: 16)),
          Expanded(child: Text(text, style: TextStyle(fontSize: 14))),
        ],
      ),
    );
  }
}

