import 'package:flutter/material.dart';
import 'package:lalitha_peetham/screens/online_vastu_property/vastupooja_layout.dart';

class CateringBookingConfirmPage extends StatefulWidget {
  const CateringBookingConfirmPage({super.key});

  @override
  State<CateringBookingConfirmPage> createState() => _CateringBookingConfirmPageState();
}

class _CateringBookingConfirmPageState extends State<CateringBookingConfirmPage> {
  @override
  Widget build(BuildContext context) {
    return VastupoojaLayout(
      child: SingleChildScrollView(
        child: Column(
          children: [
            buildherosection(),
            buildCatererconfirmedbooking( context),
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
                "Complete the payment to confirm\nyour booking",
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

  Widget buildCatererconfirmedbooking(BuildContext context) {
  return Stack(
    children: [
      // Background Image
      Positioned.fill(
        child: Image.asset(
          'assets/images/vastupooja4.png', // background image
          fit: BoxFit.cover,
        ),
      ),

      // Planet Icon
      Positioned(
        top: 80,
        right: 60,
        child: Image.asset(
          'assets/images/vastupooja11.png',
          height: 80,
          width: 80,
        ),
      ),

      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 100.0, vertical: 50),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 40,),
            const Text(
              "BOOKING CONFIRMED",
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 30),

            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Booking Image
                ClipRRect(
                  borderRadius: BorderRadius.circular(0),
                  child: Image.asset(
                    'assets/images/catering5.png',
                    width: 300,
                    height: 180,
                    fit: BoxFit.cover,
                  ),
                ),
                const SizedBox(width: 40),

                // Booking ID & Payment Details
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        "Booking ID: #CATER2025-1187",
                        style: TextStyle(fontSize: 18),
                      ),
                      SizedBox(height: 15),
                      Text(
                        "💳 Payment Details",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                      SizedBox(height: 8),
                      Text("• Total Amount: ₹75,000"),
                      Text("• Payment Method: Credit Card (**** **** **** 4242)"),
                      Text("• Status: ✅ Paid"),
                      Text("• Payment Date: May 21, 2025"),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 50),

            // Event Details
            Row(
              children: const [
                Icon(Icons.event, color: Colors.grey),
                SizedBox(width: 10),
                Text(
                  "Event Details",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            const SizedBox(height: 10),
            const Padding(
              padding: EdgeInsets.only(left: 30.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("• Event Type: Wedding Reception"),
                  Text("• Event Date: June 20, 2025"),
                  Text("• Time: 6:00 PM – 11:00 PM"),
                  Text("• Guest Count: 250 Guests"),
                  Text("• Venue: Royal Banquet Hall, Hyderabad"),
                ],
              ),
            ),
            const SizedBox(height: 30),

            // Menu Highlights
            Row(
              children: const [
                Icon(Icons.restaurant_menu, color: Colors.brown),
                SizedBox(width: 10),
                Text(
                  "Menu Highlights",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            const SizedBox(height: 10),
            const Padding(
              padding: EdgeInsets.only(left: 30.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("• Starters: Veg Manchurian, Chicken Tikka, Spring Rolls"),
                  Text("• Main Course: Biryani (Veg & Non-Veg), Butter Chicken, Paneer Butter Masala"),
                  Text("• Breads & Rice: Naan, Jeera Rice"),
                  Text("• Desserts: Gulab Jamun, Ice Cream"),
                  Text("• Beverages: Soft Drinks, Mineral Water"),
                ],
              ),
            ),
          ],
        ),
      ),
    ],
  );
}


}