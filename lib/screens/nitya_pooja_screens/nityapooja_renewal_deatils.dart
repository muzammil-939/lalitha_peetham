import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:lalitha_peetham/screens/online_vastu_property/vastupooja_layout.dart';

class NityapoojaRenewalDeatils extends StatefulWidget {
  const NityapoojaRenewalDeatils({super.key});

  @override
  State<NityapoojaRenewalDeatils> createState() => _NityapoojaRenewalDeatilsState();
}

class _NityapoojaRenewalDeatilsState extends State<NityapoojaRenewalDeatils> {
  @override
  Widget build(BuildContext context) {
    return VastupoojaLayout(
      child: SingleChildScrollView(
        child: Column(
          children: [
            buildherosection(),
            buildTitleSection(),
            SizedBox(height: 40,),
            //buildRenewaldetails()

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
                "Booking Confirmed track your\npooja",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 32,
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
              'assets/images/vastupooja16.png',
              height: 180,
              width: 280,
              fit: BoxFit.cover,
            ),
          ),
        )
      ],
    );
  }

Widget buildTitleSection() {
    return Stack(
      children: [
        Positioned(
          child: SizedBox(
            height: 500,
            width: 1500,
            child: Image.asset(
              'assets/images/vastupooja4.png',
              fit: BoxFit.cover,
            ),
          ),
        ),
        Positioned(
          top: 120,
          right: 30,
          child: Image.asset(
            'assets/images/vastupooja11.png',
            height: 100,
            width: 100,
          ),
        ),
        Padding(
          padding:  EdgeInsets.symmetric(horizontal: 150.0, vertical: 25),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children:  [
              SizedBox(height: 30),
              Text(
                " Nithya Pooja Renewal Details",
                style: TextStyle(
                  fontSize: 45,
                  fontWeight: FontWeight.w900,
                ),
              ),
              SizedBox(height: 60,),
           buildRenewaldetails(),

            ],
               
          ),
        ),
      ],
    );
  }

 Widget buildRenewaldetails() {
  return Container(
    margin: const EdgeInsets.symmetric(horizontal: 100, vertical: 20),
    padding: const EdgeInsets.all(20),
    decoration: BoxDecoration(
      color: const Color(0xFFEAC63E),
      borderRadius: BorderRadius.circular(0),
    ),
    child: Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(0),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Top Row with image and temple info
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(
                'assets/images/durga.jpg',
                height: 120,
                width: 120,
                fit: BoxFit.cover,
              ),
              const SizedBox(width: 20),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text("Temple: Tirumala Balaji Temple", style: TextStyle(fontWeight: FontWeight.bold)),
                    SizedBox(height: 4),
                    Text("Performed By: Pandit Ravi Kumar"),
                    SizedBox(height: 4),
                    Text("Duration: 30 Days"),
                    SizedBox(height: 4),
                    Text("Time: Daily at 6:00 AM"),
                    SizedBox(height: 4),
                    Text("Purpose: Family Peace & Health"),
                  ],
                ),
              ),
              // Edit Info Button
              OutlinedButton(
                style: OutlinedButton.styleFrom(
                  side: const BorderSide(color: Color(0xFFEAC63E)),
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
                  padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 10),
                ),
                onPressed: () {},
                child: const Text(
                  "Edit Information",
                  style: TextStyle(color: Colors.black),
                ),
              ),
            ],
          ),
          const SizedBox(height: 20),

          // Pricing Options
          Row(
            children: [
              // Active Button
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
                decoration: BoxDecoration(
                  color: const Color(0xFFEAC63E),
                  borderRadius: BorderRadius.circular(6),
                ),
                child: const Text("30 Days – ₹1999", style: TextStyle(fontWeight: FontWeight.bold)),
              ),
              const SizedBox(width: 12),
              // Inactive Options
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
                decoration: BoxDecoration(
                  color: Colors.grey.shade400,
                  borderRadius: BorderRadius.circular(6),
                ),
                child: const Text("3 Months – ₹4999"),
              ),
              const SizedBox(width: 12),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
                decoration: BoxDecoration(
                  color: Colors.grey.shade400,
                  borderRadius: BorderRadius.circular(6),
                ),
                child: const Text("1 Year – ₹8999"),
              ),
            ],
          ),

          const SizedBox(height: 20),
          const Text("Renewal Options", style: TextStyle(fontWeight: FontWeight.bold)),
          const SizedBox(height: 8),
          const Text("• Renew for:"),
          const Text("• Start Date:  Choose calendar"),
          const Text("• Deity/Temple:  Sree Lalitha Peetham"),

          const SizedBox(height: 30),
          // Continue Button
          Align(
            alignment: Alignment.centerRight,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFFEAC63E),
                padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 14),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
              ),
              onPressed: () {
                context.go('/nityapooja_proceed_final_payment');
              },
              child: const Text("Continue", style: TextStyle(color: Colors.black, fontSize: 16)),
            ),
          ),
        ],
      ),
    ),
  );
}

}