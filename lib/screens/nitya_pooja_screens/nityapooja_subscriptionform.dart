import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:lalitha_peetham/screens/online_vastu_property/vastupooja_layout.dart';

class NityapoojaSubscriptionform extends StatefulWidget {
  const NityapoojaSubscriptionform({super.key});

  @override
  State<NityapoojaSubscriptionform> createState() => _NityapoojaSubscriptionformState();
}

class _NityapoojaSubscriptionformState extends State<NityapoojaSubscriptionform> {
  @override
  Widget build(BuildContext context) {
    return  VastupoojaLayout(
      child: SingleChildScrollView(
        child: Column(
          children: [
             buildherosection(),
            
           buildNityapoojaEnquiryFormPage(),
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
                "Fill out the correct information to\nprocess your reschedule request",
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
              'assets/images/vastupooja18.png',
              height: 180,
              width: 280,
              fit: BoxFit.cover,
            ),
          ),
        )
      ],
    );
  }

Widget buildNityapoojaEnquiryFormPage() {
  return Stack(
    children: [
    Positioned(
  top: 0,
  left: 0,
  child: SizedBox(
    height: 500, // Adjust height
    width: 1500,  // Adjust width
    child: Image.asset(
      'assets/images/vastupooja4.png',
      fit: BoxFit.cover,
    ),
  ),
),
      Positioned(
        top: 100,
        right: 40,
        child: Image.asset(
          'assets/images/vastupooja11.png',
          height: 80,
          width: 80,
        ),
      ),
      Center(
        child: Column(
          children: [
            const SizedBox(height: 60),
            const Text(
              "Nithya Pooja Subscription Form",
              style: TextStyle(fontSize: 33, fontWeight: FontWeight.bold),
              textAlign: TextAlign.left,
            ),
            const SizedBox(height: 60),
            Container(
              width: 800,
              padding: const EdgeInsets.all(30),
              decoration: BoxDecoration(
                color: const Color(0xFFEAC63E),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  buildTwoColumnRow("Full Name", "Contact Number"),
                  buildTwoColumnRow("Email Address", "Gotra"),
                  buildTwoColumnRow("Preferred Start Date", "Purpose of Pooja"),
                  buildTwoColumnRow("Location", "Language"),
                  buildTwoColumnRow("Time", "Star"),
                  buildTwoColumnRow("Place of birth", "Date of birth"),
                  const SizedBox(height: 30),
                  const Text("Spouse details", style: TextStyle(fontWeight: FontWeight.bold)),
                  const SizedBox(height: 10),
                  buildTwoColumnRow("Name", "Date of birth"),
                  buildTwoColumnRow("Time", "Star"),
                  buildSingleInput("Marriage date"),
                  const SizedBox(height: 30),
                  const Text("Children details", style: TextStyle(fontWeight: FontWeight.bold)),
                  const SizedBox(height: 10),
                  buildTwoColumnRow("Name", "Date of birth"),
                  buildTwoColumnRow("Time", "Star"),
                  buildTwoColumnRow("Place of birth", "Upload Image"),
                  const SizedBox(height: 20),
                  const Text("Additional Notes"),
                  const SizedBox(height: 8),
                  TextField(
                    maxLines: 4,
                    decoration: InputDecoration(
                      fillColor: Colors.grey.shade300,
                      filled: true,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(6),
                        borderSide: BorderSide.none,
                      ),
                    ),
                  ),
                  const SizedBox(height: 30),
                  Align(
                    alignment: Alignment.bottomRight,
                    child: SizedBox(
                      width: 150,
                      height: 45,
                      child: ElevatedButton(
                        onPressed: () {
                          context.go('/nityapooja_review_checkout_page');
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white,
                          foregroundColor: Colors.black,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30),
                          ),
                        ),
                        child: const Text(
                          "Submit",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 60),
          ],
        ),
      ),
    ],
  );
}

Widget buildSingleInput(String label) {
  return Padding(
    padding: const EdgeInsets.only(bottom: 16.0),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(label),
        const SizedBox(height: 6),
        SizedBox(
          width: 300,
          child: TextField(
            decoration: InputDecoration(
              fillColor: Colors.grey.shade300,
              filled: true,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(6),
                borderSide: BorderSide.none,
              ),
              contentPadding: const EdgeInsets.symmetric(horizontal: 12, vertical: 14),
            ),
          ),
        ),
      ],
    ),
  );
}

Widget buildTwoColumnRow(String label1, String label2, {bool isRightDropdown = false}) {
  return Padding(
    padding: const EdgeInsets.only(bottom: 16.0),
    child: Row(
      children: [
        Expanded(child: buildInput(label1)),
        const SizedBox(width: 20),
        Expanded(
          child: isRightDropdown ? buildDropdown(label2) : buildInput(label2),
        ),
      ],
    ),
  );
}


Widget buildInput(String label) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(label),
      const SizedBox(height: 6),
      TextField(
        decoration: InputDecoration(
          fillColor: Colors.grey.shade300,
          filled: true,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(6),
            borderSide: BorderSide.none,
          ),
          contentPadding: const EdgeInsets.symmetric(horizontal: 12, vertical: 14),
        ),
      ),
    ],
  );
}

Widget buildDropdown(String label) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(label),
      const SizedBox(height: 6),
      DropdownButtonFormField<String>(
        items: ['Ganapathi Puja', 'Lakshmi Puja'].map((type) {
          return DropdownMenuItem(value: type, child: Text(type));
        }).toList(),
        onChanged: (value) {},
        decoration: InputDecoration(
          fillColor: Colors.grey.shade300,
          filled: true,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(6),
            borderSide: BorderSide.none,
          ),
          contentPadding: const EdgeInsets.symmetric(horizontal: 12, vertical: 14),
        ),
      ),
    ],
  );
}


}


