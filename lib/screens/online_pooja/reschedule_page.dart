import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:lalitha_peetham/screens/online_vastu_property/vastupooja_layout.dart';
import 'package:lalitha_peetham/widgets/reusable_responsive_type_widget.dart';

class ReschedulePage extends StatefulWidget {
  const ReschedulePage({super.key});

  @override
  State<ReschedulePage> createState() => _ReschedulePageState();
}

class _ReschedulePageState extends State<ReschedulePage> {
  @override
  Widget build(BuildContext context) {
    return  VastupoojaLayout(
      child: SingleChildScrollView(
        child: Column(
          children: [
             buildherosection(),
            
            buildVastuBookingEnquiryFormPage(context),
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
            children:  [
              
              Text(
                "Fill out the correct information to\nprocess your reschedule request",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: ResponsiveFontsize.fontSize(
                    context,
                    desktop: 45,
                    tablet: 30,
                    mobile: 20
                  ),
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

Widget buildVastuBookingEnquiryFormPage(BuildContext context) {
  final isMobile = ResponsiveHelper.isMobile(context);
  final isTablet = ResponsiveHelper.isTablet(context);
  final isDesktop = ResponsiveHelper.isDesktop(context);

  double containerWidth = isMobile ? double.infinity : (isTablet ? 500 : 700);
  double headingFontSize = isMobile ? 22 : (isTablet ? 28 : 35);
  double topPadding = isMobile ? 20 : 60;

  return Stack(
    children: [
      // 🌄 Full Background Image
      Positioned.fill(
        child: Image.asset(
          'assets/images/vastupooja4.png',
          fit: BoxFit.cover,
        ),
      ),

      // 🌑 Planet Image
      if (!isMobile)
        Positioned(
          top: 100,
          right: 40,
          child: Image.asset(
            'assets/images/vastupooja11.png',
            height: 80,
            width: 80,
          ),
        ),

      // 🌟 Foreground Content
      Center(
        child: Padding(
          padding:EdgeInsets.symmetric(
              horizontal: isMobile ? 16 : 40, vertical: topPadding),
          child: Column(
            children: [
              Text(
                "Pooja Reschedule Request Form",
                style: TextStyle(
                  fontSize: headingFontSize,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 40),
          
              Container(
                width: containerWidth,
                padding: const EdgeInsets.all(30),
                decoration: BoxDecoration(
                  color: const Color(0xFFFFDD66),
                  borderRadius: BorderRadius.circular(0),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    buildTwoColumnRow(context, "Full Name", "Contact Number"),
                    buildTwoColumnRow(context, "Email Address", "Puja Type", isRightDropdown: true),
                    buildTwoColumnRow(context, "Date", "Time"),
                    buildTwoColumnRow(context, "Location", "Language"),
          
                    const SizedBox(height: 20),
                    const Text("Additional Notes"),
                    const SizedBox(height: 8),
                    TextField(
                      maxLines: 4,
                      decoration: InputDecoration(
                        fillColor: Colors.grey.shade300,
                        filled: true,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(0),
                          borderSide: BorderSide.none,
                        ),
                      ),
                    ),
                    const SizedBox(height: 30),
          
                    Align(
                      alignment: Alignment.bottomRight,
                      child: SizedBox(
                        width: 140,
                        height: 45,
                        child: ElevatedButton(
                          onPressed: () {
                            context.go('/onlinepooja_SupportSection');
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
            ],
          ),
        ),
      ),
    ],
  );
}

Widget buildTwoColumnRow(BuildContext context, String label1, String label2, {bool isRightDropdown = false}) {
  final isMobile = ResponsiveHelper.isMobile(context);

  if (isMobile) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        buildInput(label1),
        const SizedBox(height: 16),
        isRightDropdown ? buildDropdown(label2) : buildInput(label2),
        const SizedBox(height: 16),
      ],
    );
  } else {
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


