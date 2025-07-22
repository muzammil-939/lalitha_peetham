import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:lalitha_peetham/screens/online_vastu_property/vastupooja_layout.dart';

class CaterersReviewCheckout extends StatefulWidget {
  const CaterersReviewCheckout({super.key});

  @override
  State<CaterersReviewCheckout> createState() => _CaterersReviewCheckoutState();
}

class _CaterersReviewCheckoutState extends State<CaterersReviewCheckout> {
  @override
  Widget build(BuildContext context) {
    return VastupoojaLayout(
      child: SingleChildScrollView(
        child: Column(
          children: [
            buildherosection(),
            buildCatererReviewCheckout(context),
            SizedBox(height: 80,),
            


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
                "Find the Perfect Caterer for Your\nOccasion",
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



  Widget buildCatererReviewCheckout(BuildContext context) {
    return Stack(
      children: [
        // 🌄 Background Image
        Positioned(

          child: SizedBox(
            
            child: Image.asset(
              'assets/images/vastupooja4.png',
              fit: BoxFit.cover,
            ),
          ),
        ),

        // Planet Icon Top Right
        Positioned(
          top: 100,
          right: 50,
          child: Image.asset(
            'assets/images/vastupooja11.png',
            height: 100,
            width: 100,
          ),
        ),

        // Main Content
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 100.0, vertical: 40),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Review checkout",
                style: TextStyle(fontSize: 26, fontWeight: FontWeight.w700),
              ),
              const SizedBox(height: 30),

              // 🍽 Header with Image and Details
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Caterer Image
                  ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: Image.asset(
                      'assets/images/catering2.png',
                      width: 300,
                      height: 180,
                      fit: BoxFit.cover,
                    ),
                  ),
                  const SizedBox(width: 30),

                  // Caterer Details
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Shree Bhog Caterers",
                          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(height: 8),
                        const Text("Contact Person: Mr. Ramesh Verma"),
                        const Text("Email: shreebhog@gmail.com"),
                        const Text("Location: Hyderabad, Telangana"),
                        const Text("GST Number: 36ABCDE1234F1Z5"),
                        const Text("Experience: 8+ years"),
                        const SizedBox(height: 12),
                      
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 30),

              // 🟡 Event Summary Section
              Container(
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: const Color(0xFFEAC63E),
                  borderRadius: BorderRadius.circular(0),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // 🎉 Event Details
                    Row(
                      children: const [
                        Icon(Icons.event, color: Colors.brown),
                        SizedBox(width: 8),
                        Text(
                          "Event Details",
                          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    const SizedBox(height: 10),
                    const Text("• Event Type: Wedding Reception"),
                    const Text("• Event Date: June 20, 2025"),
                    const Text("• Time: 6:00 PM – 11:00 PM"),
                    const Text("• Guest Count: 250 Guests"),
                    const Text("• Venue: Royal Banquet Hall, Hyderabad"),

                    const SizedBox(height: 20),

                    // 🍛 Menu Highlights
                    Row(
                      children: const [
                        Icon(Icons.restaurant_menu, color: Colors.deepOrange),
                        SizedBox(width: 8),
                        Text(
                          "Menu Highlights",
                          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    const SizedBox(height: 10),
                    const Text("• Starters: Veg Manchurian, Chicken Tikka, Spring Rolls"),
                    const Text("• Main Course: Biryani (Veg & Non-Veg), Butter Chicken, Paneer Butter Masala"),
                    const Text("• Breads & Rice: Naan, Jeera Rice"),
                    const Text("• Desserts: Gulab Jamun, Ice Cream"),
                    const Text("• Beverages: Soft Drinks, Mineral Water"),

                    const SizedBox(height: 20),
                    Divider(color: Colors.black,),

                    // 👤 User Details
                    Row(
                      children: const [
                        Icon(Icons.person, color: Colors.teal),
                        SizedBox(width: 8),
                        Text(
                          "User Details",
                          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    const SizedBox(height: 10),
                    const Text("• Full Name: Priya Sharma"),
                    const Text("• Mobile Number: +91 91234 56789"),
                    const Text("• Email Address: priyasharma@example.com"),
                    const Text("• City / Area: Banjara Hills, Hyderabad"),
                    const Text("• Venue Address: Sri Lakshmi Function Hall, Road No. 12, Banjara Hills, Hyderabad, Telangana – 500034"),

                    const SizedBox(height: 20),

                    // 🗓 Additional Event Details
                    Row(
                      children: const [
                        Icon(Icons.calendar_month, color: Colors.purple),
                        SizedBox(width: 8),
                        Text(
                          "Event Details",
                          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    const SizedBox(height: 10),
                    const Text("• Event Type: Engagement Ceremony"),
                    const Text("• Event Date: 24 August 2025"),
                    const Text("• Event Time: 7:00 PM"),
                    const Text("• Number of Guests: 150"),

                    const SizedBox(height: 24),

                    // 💰 Amount Inputs
                   Row(
                     children: [
                       SizedBox(
                         width: 200,
                         child: Column(
                           crossAxisAlignment: CrossAxisAlignment.start,
                           children: [
                             const Text(
                               "Amount",
                               style: TextStyle(fontWeight: FontWeight.w500),
                             ),
                             const SizedBox(height: 6),
                             TextFormField(
                               decoration: const InputDecoration(
                                 border: OutlineInputBorder(),
                                 filled: true,
                                 fillColor: Color(0xFFDFDDDD),
                               ),
                             ),
                           ],
                         ),
                       ),
                       const SizedBox(width: 50),
                       SizedBox(
                         width: 250,
                         child: Column(
                           crossAxisAlignment: CrossAxisAlignment.start,
                           children: [
                             const Text(
                               "Advance ( for booking )",
                               style: TextStyle(fontWeight: FontWeight.w500),
                             ),
                             const SizedBox(height: 6),
                             TextFormField(
                               decoration: const InputDecoration(
                                 border: OutlineInputBorder(),
                                 filled: true,
                                fillColor: Color(0xFFDFDDDD),
                               ),
                             ),
                           ],
                         ),
                       ),
                     ],
                   ),

                    const SizedBox(height: 30),

                    // ✅ Continue Button
                    Center(
                      child: ElevatedButton(
                        onPressed: () {
                          // Handle submission
                          context.go('/caterer_recent_dashboard');
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white,
                          foregroundColor: Colors.black,
                          padding: const EdgeInsets.symmetric(horizontal: 36, vertical: 12),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(16),
                          ),
                        ),
                        child: const Text("Continue"),
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
}

