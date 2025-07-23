import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:lalitha_peetham/screens/catering_screens/catering_layout.dart';
import 'package:lalitha_peetham/screens/online_vastu_property/vastupooja_layout.dart';

class CateringWelcomeScreen extends StatefulWidget {
  const CateringWelcomeScreen({super.key});

  @override
  State<CateringWelcomeScreen> createState() => _CateringWelcomeScreenState();
}

class _CateringWelcomeScreenState extends State<CateringWelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return  CateringLayout(
      child: SingleChildScrollView(
        child: Column(
          children: [
             buildherosection(),
            //SizedBox(height: 40),
            buildVastuBookingEnquiryFormPage(),
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
                "Submit your catering needs and get a\nquick response",
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
              'assets/images/catering1.png',
              height: 180,
              width: 280,
              fit: BoxFit.cover,
            ),
          ),
        )
      ],
    );
  }

Widget buildVastuBookingEnquiryFormPage() {
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

      // 🔆 Vector Watermark
      Positioned.fill(
        child: Align(
          alignment: Alignment.center,
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
      ),

      // Entire Page Content
      Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 80,),
            // Header Outside the Container
            const Text(
              "Let Us Serve You Better – Share Your Event Details",
              style: TextStyle(
                fontSize: 35,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 50),
        
            // Yellow Container with Form
            Container(
              width: 800,
              padding: const EdgeInsets.all(30),
              decoration: BoxDecoration(
                color: const Color(0xFFEAC63E),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  // Form Layout: 2 columns
                  LayoutBuilder(
                    builder: (context, constraints) {
                      final itemWidth = (constraints.maxWidth - 30) / 2;
                      return Wrap(
                        spacing: 20,
                        runSpacing: 20,
                        children: [
                          buildInput("Full Name", width: itemWidth),
                          buildInput("Contact Number", width: itemWidth),
                          buildInput("Email Address", width: itemWidth),
                          buildDropdown("Type of Event:", width: itemWidth),
                          buildInput("Menu", width: itemWidth),
                          buildInput("Event Date", width: itemWidth),
                          buildInput("Event time", width: itemWidth),
                          buildInput("City", width: itemWidth),
                          buildInput("Venue Address", width: itemWidth),
                          buildInput("Number of Guests:", width: itemWidth),
                          buildInput("Add-on Services", width: itemWidth),
                        ],
                      );
                    },
                  ),
                    
                  const SizedBox(height: 20),
                    
                  // Additional Notes
                  const Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Additional Notes",
                      style: TextStyle(fontWeight: FontWeight.w500),
                    ),
                  ),
                  const SizedBox(height: 8),
                  TextField(
                    maxLines: 4,
                    decoration: InputDecoration(
                      fillColor: Colors.grey.shade300,
                      filled: true,
                      border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(6),
                      ),
                    ),
                  ),
                    
                  const SizedBox(height: 20),
                    
                  // Amount + Advance
                  LayoutBuilder(
                    builder: (context, constraints) {
                      final itemWidth = (constraints.maxWidth - 30) / 2;
                      return Wrap(
                        spacing: 20,
                        runSpacing: 20,
                        children: [
                          buildInput("Amount", width: itemWidth),
                          buildInput("Advance ( for booking )", width: itemWidth),
                        ],
                      );
                    },
                  ),
                    
                  const SizedBox(height: 30),
                    
                  // Continue Button
                  Align(
                    alignment: Alignment.bottomRight,
                    child: SizedBox(
                      width: 180,
                      height: 45,
                      child: ElevatedButton(
                        onPressed: () {
                          context.go('/catering_caterer_recent');
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white,
                          foregroundColor: Colors.black,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30),
                          ),
                        ),
                        child: const Text(
                          "Continue",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 16),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    ],
  );
}

Widget buildInput(String label, {double width = 300}) {
  return SizedBox(
    width: width,
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(label),
        const SizedBox(height: 6),
        TextField(
          decoration: InputDecoration(
            fillColor: Colors.grey.shade300,
            filled: true,
            border: OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.circular(6),
            ),
            contentPadding: const EdgeInsets.symmetric(horizontal: 12, vertical: 14),
          ),
        ),
      ],
    ),
  );
}

Widget buildDropdown(String label, {double width = 300}) {
  return SizedBox(
    width: width,
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(label),
        const SizedBox(height: 6),
        DropdownButtonFormField<String>(
          decoration: InputDecoration(
            fillColor: Colors.grey.shade300,
            filled: true,
            border: OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.circular(6),
            ),
            contentPadding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
          ),
          items: const [
            DropdownMenuItem(value: 'Wedding', child: Text('Wedding')),
            DropdownMenuItem(value: 'Housewarming', child: Text('Housewarming')),
            DropdownMenuItem(value: 'Corporate Event', child: Text('Corporate Event')),
          ],
          onChanged: (value) {},
        ),
      ],
    ),
  );
}

}


