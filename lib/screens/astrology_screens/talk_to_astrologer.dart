import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:lalitha_peetham/screens/online_vastu_property/vastupooja_layout.dart';

class TalkToAstrologer extends StatefulWidget {
  const TalkToAstrologer({super.key});

  @override
  State<TalkToAstrologer> createState() => _TalkToAstrologerState();
}

class _TalkToAstrologerState extends State<TalkToAstrologer> {
  @override
  Widget build(BuildContext context) {
    return  VastupoojaLayout(
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
                "Book Customized E-Poojas Online – Your\nRitual, Your Way",
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
        // Background Watermark
       // Background Watermark (Vector Image)
        Positioned.fill(
          child: Align(
            alignment: Alignment.center,
            child: Opacity(
              opacity: 0.8,
              child: Image.asset(
                'assets/images/Vector (2).png',
                width: 450,
                height: 450,
                fit: BoxFit.contain,
                //color: Colors.amber[800],
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
              
              const SizedBox(height: 40),
              const Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Schedule a Session with the\nAstrologer",
                  style: TextStyle(
                    fontSize: 44,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(height: 40),
      
              // Two-column form grid
                        LayoutBuilder(
                      builder: (context, constraints) {
                        final maxWidth = constraints.maxWidth;
                        final itemWidth = (maxWidth - 30) / 2; // 3 columns, 20 spacing

                        return Wrap(
                          spacing: 20,
                          runSpacing: 20,
                          children: [
                            buildInput("Full Name",'Amit Sharma', width: itemWidth),
                            buildInput("Contact Number  & Email",'9000000000', width: itemWidth),
                            buildInput("Purpose",'career', width: itemWidth),
                            buildInput("Location",'Hyderabad', width: itemWidth),
                            buildInput("Preferred Date &",'2025-06-15', width: itemWidth),
                            buildInput("Time",'10.00 AM', width: itemWidth),
                            buildInput("Duration",'30 minutes', width: itemWidth),
                            buildInput("Language",'Telugu', width: itemWidth),
                            buildInput("Contact type",'Chart', width: itemWidth),
                          ],
                        );
                      },
                    ),

      
              const SizedBox(height: 20),
              // Additional Comment
              // const Align(
              //   alignment: Alignment.centerLeft,
              //   child: Text(
              //     "Additional Comment",
              //     style: TextStyle(fontWeight: FontWeight.w500),
              //   ),
              // ),
              // const SizedBox(height: 8),
              // TextField(
              //   maxLines: 5,
              //   decoration: InputDecoration(
              //     fillColor: Colors.grey.shade300,
              //     filled: true,
              //     border: OutlineInputBorder(
              //       borderSide: BorderSide.none,
              //       borderRadius: BorderRadius.circular(6),
              //     ),
              //   ),
              // ),
      
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
                        context.go('/chart_privetly_with_expert');
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFFE3A72F),
                        foregroundColor: Colors.black,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                      ),
                      child: const Text(
                        "Search",
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

 Widget buildInput(String label,String hint, {double width = 300}) {
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
            hintText: hint,
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


