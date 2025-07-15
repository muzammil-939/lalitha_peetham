import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:lalitha_peetham/screens/online_vastu_property/vastupooja_layout.dart';

class VastupoojaCheckOutPage extends StatefulWidget {
  const VastupoojaCheckOutPage({super.key});

  @override
  State<VastupoojaCheckOutPage> createState() => _VastupoojaCheckOutPageState();
}

class _VastupoojaCheckOutPageState extends State<VastupoojaCheckOutPage> {
  final TextEditingController fullNameController = TextEditingController();
final TextEditingController contactNumberController = TextEditingController();
final TextEditingController propertyTypeController = TextEditingController();
final TextEditingController locationController = TextEditingController();
final TextEditingController preferredDateController = TextEditingController();
final TextEditingController timeController = TextEditingController();
final TextEditingController consultationModeController = TextEditingController();
final TextEditingController commentController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return  VastupoojaLayout(
      child: SingleChildScrollView(
        child: Column(
          children: [
             buildherosection(),
            SizedBox(height: 40),
            buildVastuBookingcheckoutFormPage(),
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
                "Planning a new start? Inquire now for\nexpert Vastu consultation.",
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

  Widget buildVastuBookingcheckoutFormPage() {
    return Stack(
      children: [
        // Background Watermark
        Positioned.fill(
          child: Opacity(
            opacity: 0.08,
            child: Center(
              child: Image.asset(
                'assets/images/vastupooja10.png',
                width: 400,
                height: 400,
                fit: BoxFit.contain,
              ),
            ),
          ),
        ),
      Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 200.0, vertical: 40),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text(
                "Vastu Booking check out page",
                style: TextStyle(
                  fontSize: 45,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1,
                ),
                textAlign: TextAlign.center,
              ),
              
              const SizedBox(height: 20),
      
              // Two-column form grid
                        LayoutBuilder(
                      builder: (context, constraints) {
                        final maxWidth = constraints.maxWidth;
                        final itemWidth = (maxWidth - 30) / 2; // 3 columns, 20 spacing

                        return Wrap(
                            spacing: 20,
                            runSpacing: 20,
                            children: [
                              buildInput("Full Name",width: itemWidth,hintText: "Amit Sharma", controller: fullNameController),
                              buildInput("Contact Number",width: itemWidth, hintText: "9000000000", controller: contactNumberController),
                              buildInput("Property Type",width: itemWidth, hintText: "Home", controller: propertyTypeController),
                              buildInput("Location",width: itemWidth, hintText: "Maharashtra", controller: locationController),
                              buildInput("Preferred Date",width: itemWidth, hintText: "2025-06-15", controller: preferredDateController),
                              buildInput("Time",width: itemWidth, hintText: "10:00 AM", controller: timeController),
                              buildInput("Consultation Mode",width: itemWidth, hintText: "Video Call", controller: consultationModeController),
                            ],
                          );

                      },
                    ),

      
              const SizedBox(height: 20),
              // Additional Comment
             const Align(
  alignment: Alignment.centerLeft,
  child: Text("Additional Comment", style: TextStyle(fontWeight: FontWeight.w500)),
),
const SizedBox(height: 8),
TextField(
  maxLines: 5,
  decoration: InputDecoration(
    hintText: "Looking to balance energy before housewarming",
    hintStyle: TextStyle(color: Colors.black87),
    fillColor: Colors.grey.shade300,
    filled: true,
    border: OutlineInputBorder(
      borderSide: BorderSide.none,
      borderRadius: BorderRadius.circular(6),
    ),
  ),
),

      
              const SizedBox(height: 60),
      
              // Continue Button
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  SizedBox(
                    width: 160,
                    height: 45,
                    child: ElevatedButton(
                      onPressed: () {
                        context.go('/request_for_pandit');
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFFE3A72F),
                        foregroundColor: Colors.black,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                      ),
                      child: const Text(
                        "Submit",
                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      ]
    );
  }

Widget buildInput(String label, {
  double width = 300,
  String? hintText,
  TextEditingController? controller,
  int maxLines = 1,
}) {
  return SizedBox(
    width: width,
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(label),
        const SizedBox(height: 6),
        TextField(
          controller: controller,
          maxLines: maxLines,
          decoration: InputDecoration(
            hintText: hintText,
            hintStyle: const TextStyle(color: Colors.black87),
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


}


