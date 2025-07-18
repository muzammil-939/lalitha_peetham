import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:lalitha_peetham/screens/online_vastu_property/vastupooja_layout.dart';

class NityapoojaBookingsPage extends StatefulWidget {
  const NityapoojaBookingsPage({super.key});

  @override
  State<NityapoojaBookingsPage> createState() => _NityapoojaBookingsPageState();
}

class _NityapoojaBookingsPageState extends State<NityapoojaBookingsPage> {
  int selectedTabIndex = 0;
  bool isChatSelected = true;
 int myBookingsTabIndex = 0;
 bool isDetailedPaymentSelected = true; // Toggle between the two views


  final List<String> tabTitles = [
    "My Bookings",
    "Payments",
    "Support",
  ];

  final TextEditingController fullNameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController issueController = TextEditingController();
  final TextEditingController commentController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return VastupoojaLayout(
      child: SingleChildScrollView(
        child: Column(
          children: [
            buildHeroSection(),
            buildTitleSection(),
            const SizedBox(height: 80),
            buildTabNavigation(),
            const SizedBox(height: 30),
            buildTabContent(),
            const SizedBox(height: 50),
          ],
        ),
      ),
    );
  }

  Widget buildHeroSection() {
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
                "Your Scheduled and Completed\nPoojas",
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
            height: 350,
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
          padding: const EdgeInsets.symmetric(horizontal: 150.0, vertical: 25),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              SizedBox(height: 30),
              Text(
                "Access the Full List of Your Scheduled and\nActive Poojas",
                style: TextStyle(
                  fontSize: 45,
                  fontWeight: FontWeight.w900,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget buildTabNavigation() {
    return Wrap(
      spacing: 15,
      children: List.generate(tabTitles.length, (index) {
        return GestureDetector(
          onTap: () {
            setState(() {
              selectedTabIndex = index;
            });
          },
          child: Container(
            width: 280,
            padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 10),
            decoration: BoxDecoration(
              color: selectedTabIndex == index ? Colors.white : Colors.grey.shade300,
              borderRadius: BorderRadius.circular(2),
              border: Border.all(
                color: selectedTabIndex == index ? Colors.grey.shade400 : Colors.transparent,
              ),
            ),
            child: Text(
              tabTitles[index],
              style: TextStyle(
                fontWeight: FontWeight.w500,
                color: selectedTabIndex == index ? Colors.black : Colors.black87,
              ),
            ),
          ),
        );
      }),
    );
  }

  Widget buildTabContent() {
    switch (selectedTabIndex) {
      case 0:
        return buildMybookingtabs();
      case 1:
        return buildpaymenttabs();
      case 2:
        return buildSupportTabs();
      default:
        return const SizedBox.shrink();
    }
  }

Widget buildMybookingtabs() {
  return Container(
   margin: const EdgeInsets.symmetric(horizontal: 150,vertical: 20),
    padding: const EdgeInsets.all(20),
    decoration: BoxDecoration(
      color: const Color(0xFFEAC63E),
      borderRadius: BorderRadius.circular(0),
    ),
     child: Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      const SizedBox(height: 10),
      // Booking Tab Selector
      Row(
        children: [
          GestureDetector(
            onTap: () {
              setState(() {
                myBookingsTabIndex = 0;
              });
            },
            child: Text(
              "Active",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w600,
                decoration: myBookingsTabIndex == 0 ? TextDecoration.underline : null,
              ),
            ),
          ),
          const SizedBox(width: 30),
          GestureDetector(
            onTap: () {
              setState(() {
                myBookingsTabIndex = 1;
              });
            },
            child: Text(
              "Expired",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w600,
                decoration: myBookingsTabIndex == 1 ? TextDecoration.underline : null,
              ),
            ),
          ),
        ],
      ),
      SizedBox(height: 30,),
       buildBookingCard(isExpired: myBookingsTabIndex == 1),
  
     ]
        
    )   
  );
}




Widget buildBookingCard({required bool isExpired}) {
  return Container(
    padding: const EdgeInsets.all(18),
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(0),
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            // Image
            ClipRRect(
              borderRadius: BorderRadius.circular(0),
              child: Image.asset(
                'assets/images/durga.jpg',
                height: 150,
                width: 150,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(width: 16),
            // Booking Info
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text("Temple: Tirumala Balaji Temple", style: TextStyle(fontSize: 13)),
                  Text("Performed By: Pandit Ravi Kumar", style: TextStyle(fontSize: 13)),
                  Text("Duration: 30 Days", style: TextStyle(fontSize: 13)),
                  Text("Start Date: 15-May-2025", style: TextStyle(fontSize: 13)),
                  Text("End Date: 13-Jun-2025", style: TextStyle(fontSize: 13)),
                  Text("Time: Daily at 6:00 AM", style: TextStyle(fontSize: 13)),
                  Text("Purpose: Family Peace & Health", style: TextStyle(fontSize: 13)),
                ],
              ),
            ),
            // Amount tag
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
              decoration: BoxDecoration(
                
                color: const Color(0xFFECCE5C),
                borderRadius: BorderRadius.circular(6),
              ),
              child: const Text(
                "full Amount: ₹ 8,999",
                style: TextStyle(fontSize: 13, fontWeight: FontWeight.w500,color: Colors.black),
              ),
            )
          ],
        ),
        const SizedBox(height: 20),
        if (!isExpired) ...[
          Row(
            children: [
              const Text("Total Amount: ₹ 8,999"),
              TextButton(
                onPressed: () {},
                child: const Text("Download Invoice (PDF)", style: TextStyle(decoration: TextDecoration.underline)),
              ),
            ],
          ),
          Row(
            children: [
              const Text("Invoice ID: INV-2025-0610-001"),
              TextButton(
                onPressed: () {},
                child: const Text("Contact Billing Support", style: TextStyle(decoration: TextDecoration.underline)),
              ),
            ],
          ),
          
          
          const SizedBox(height: 10),
          Align(
            alignment: Alignment.centerRight,
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 22, vertical: 6),
              decoration: BoxDecoration(
                color: Color(0xFF71B023),
                borderRadius: BorderRadius.circular(4),
              ),
              child: const Text("Confirmed", style: TextStyle(color: Colors.white)),
            ),
          )
        ] else ...[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.black,
                  backgroundColor: const Color(0xFFECCE5C),
                  elevation: 0,
                ),
                onPressed: () {
                  context.go('/nityapooja_renewaldetails_page');
                },
                child: const Text("renew"),
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.black,
                  backgroundColor: const Color(0xFFECCE5C),
                  elevation: 0,
                ),
                onPressed: () {},
                child: const Text("change package"),
              ),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 6),
                decoration: BoxDecoration(
                  color: Color(0xFFEA5045),
                  borderRadius: BorderRadius.circular(4),
                ),
                child: const Text("expired", style: TextStyle(color: Colors.white)),
              )
            ],
          )
        ]
      ],
    ),
  );
}


Widget buildpaymenttabs() {
  return Container(
    margin: const EdgeInsets.symmetric(horizontal: 100),
    padding: const EdgeInsets.all(20),
    decoration: BoxDecoration(
      color: const Color(0xFFEAC63E),
      borderRadius: BorderRadius.circular(0),
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            GestureDetector(
              onTap: () => setState(() => isDetailedPaymentSelected = true),
              child: Text(
                "payments",
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  decoration: isDetailedPaymentSelected ? TextDecoration.underline : TextDecoration.none,
                ),
              ),
            ),
            const SizedBox(width: 10),
            GestureDetector(
              onTap: () => setState(() => isDetailedPaymentSelected = false),
              child: Text(
                "payments status",
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  decoration: !isDetailedPaymentSelected ? TextDecoration.underline : TextDecoration.none,
                ),
              ),
            ),
          ],
        ),
        const SizedBox(height: 20),
        isDetailedPaymentSelected ? buildPaymentCardDetails() : buildPaymentSuccessStatus(),
      ],
    ),
  );
}
Widget buildPaymentCardDetails() {
  return Container(
    padding: const EdgeInsets.all(20),
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(0),
    ),
    child: Column(
      children: [
        Row(
          children: [
            Image.asset(
            'assets/images/durga.jpg',
              height: 100,
              width: 100,
              fit: BoxFit.cover,
            ),
            const SizedBox(width: 20),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text("Temple: Tirumala Balaji Temple"),
                  Text("Performed By: Pandit Ravi Kumar"),
                  Text("Duration: 30 Days"),
                  Text("Start Date: 15-May-2025"),
                  Text("End Date: 13-Jun-2025"),
                  Text("Time: Daily at 6:00 AM"),
                  Text("Purpose: Family Peace & Health"),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              decoration: BoxDecoration(
                color: Color(0xFFE4B5B5),
                borderRadius: BorderRadius.circular(4),
              ),
              child: const Text(
                "full  Amount: ₹ 8,999",
                style: TextStyle(color: Colors.black),
              ),
            ),
          ],
        ),
        const SizedBox(height: 20),
        const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Total Amount: ₹9,999"),
            Text("Download Invoice (PDF)", style: TextStyle(decoration: TextDecoration.underline)),
          ],
        ),
        const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Invoice ID:  INV-2025-0610-001"),
            Text("Contact Billing Support", style: TextStyle(decoration: TextDecoration.underline)),
          ],
        ),
        const SizedBox(height: 10),
        const Align(alignment: Alignment.centerLeft, child: Text("Payment Status: Paid")),
        const SizedBox(height: 10),
        Align(
          alignment: Alignment.centerRight,
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
            decoration: BoxDecoration(
              color: Color(0xFF71B023),
              borderRadius: BorderRadius.circular(5),
            ),
            child: const Text("Confirmed", style: TextStyle(color: Colors.white)),
          ),
        ),
      ],
    ),
  );
}
Widget buildPaymentSuccessStatus() {
  return Container(
    padding: const EdgeInsets.all(20),
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(0),
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Image.asset(
              'assets/images/durga.jpg',
              height: 100,
              width: 100,
              fit: BoxFit.cover,
            ),
            const SizedBox(width: 20),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text("Pooja Type: Lakshmi Nithya Pooja"),
                  Text("Duration: 30 Days"),
                  Text("Start Date: 20 June 2025"),
                  Text("Temple/Deity: Sree Lalitha Peetham, Hyderabad"),
                  Text("End date: 10 July 2025"),
                ],
              ),
            ),
          ],
        ),
        const SizedBox(height: 20),
        const Text("Payment Status: Paid"),
        const Text("• Payment Mode: UPI (Google Pay)"),
        const Text("• Transaction ID: TXN4827495182"),
        const Text("• Amount Paid: 7999"),
        const Text("• Payment Date: 18 June 2025, 04:35 PM"),
        const Text("• Status: ✅ Success"),
        const SizedBox(height: 20),
        const Text("🙏 Thank you for your booking!"),
        const Text("Your Nithya Pooja will be performed as per schedule."),
        const Text("You will receive regular updates via SMS/WhatsApp."),
        const Text("📞 For any queries, contact: +91-XXXXXXXXXX"),
        const SizedBox(height: 20),
        const Text(
          "Facing Payment Issues? Contact Our Support Team",
          style: TextStyle(fontWeight: FontWeight.w600),
        ),
        const SizedBox(height: 10),
        Align(
          alignment: Alignment.center,
          child: GestureDetector(
            onTap: () {
              
            },
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 35, vertical: 12),
              decoration: BoxDecoration(
                color: Color(0xFFF7D85F),
                borderRadius: BorderRadius.circular(40),
              ),
              child: const Text("Contact", style: TextStyle(fontSize: 16)),
            ),
          ),
        )
      ],
    ),
  );
}


  Widget buildSupportTabs() {
  return Container(
     margin: const EdgeInsets.symmetric(horizontal: 100),
     decoration: BoxDecoration(
        color: const Color(0xFFEAC63E),
        borderRadius: BorderRadius.circular(0),
      ),
      width: double.infinity,

    child: Padding(
      padding: const EdgeInsets.all(24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Tab Selector
          Row(
            children: [
              GestureDetector(
                onTap: () {
                  setState(() {
                    isChatSelected = true;
                  });
                },
                child: Text(
                  "Chat support",
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    decoration:
                        isChatSelected ? TextDecoration.underline : TextDecoration.none,
                  ),
                ),
              ),
              const SizedBox(width: 20),
              GestureDetector(
                onTap: () {
                  setState(() {
                    isChatSelected = false;
                  });
                },
                child: Text(
                  "Faq's support",
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    decoration:
                        !isChatSelected ? TextDecoration.underline : TextDecoration.none,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 20),
          isChatSelected ? buildChatSupportForm() : buildFaqSupportList(),
        ],
      ),
    ),
  );
}


 Widget buildChatSupportForm()  {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
     

      // Description
      const Text(
        "Upload A Screenshot And Write Your Problem Below – You’ll Be Redirected To Chat Support",
        style: TextStyle(
          fontSize: 13,
          fontWeight: FontWeight.w400,
        ),
      ),
      const SizedBox(height: 25),

      // Full Name & Email
      Row(
        children: [
          Expanded(
            child: TextField(
              controller: fullNameController,
              decoration: const InputDecoration(
                labelText: 'Full Name',
                filled: true,
                fillColor: Color(0xFFD9D9D9),
                border: InputBorder.none,
              ),
            ),
          ),
          const SizedBox(width: 20),
          Expanded(
            child: TextField(
              controller: emailController,
              decoration: const InputDecoration(
                labelText: 'Email',
                filled: true,
                fillColor: Color(0xFFD9D9D9),
                border: InputBorder.none,
              ),
            ),
          ),
        ],
      ),

      const SizedBox(height: 20),

      // Issue Section & Upload
      Row(
        children: [
          Expanded(
            child: TextField(
              controller: issueController,
              decoration: const InputDecoration(
                labelText: 'Issue Section',
                filled: true,
                fillColor: Color(0xFFD9D9D9),
                border: InputBorder.none,
              ),
            ),
          ),
          const SizedBox(width: 20),
          Expanded(
            child: GestureDetector(
              onTap: () {
                // TODO: Add image picker
              },
              child: Container(
                height: 50,
                decoration: BoxDecoration(
                  color: const Color(0xFFD9D9D9),
                  borderRadius: BorderRadius.circular(4),
                ),
                child: const Center(
                  child: Icon(Icons.add_circle_outline),
                ),
              ),
            ),
          ),
        ],
      ),

      const SizedBox(height: 20),

      // Comment
      TextField(
        controller: commentController,
        maxLines: 3,
        decoration: const InputDecoration(
          labelText: 'Comment',
          filled: true,
          fillColor: Color(0xFFD9D9D9),
          border: InputBorder.none,
        ),
      ),

      const SizedBox(height: 30),

      // Submit Button
      Align(
        alignment: Alignment.center,
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: Color(0xFFFFFFFF),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30),
            ),
            padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 12),
          ),
          onPressed: () {
            // TODO: Submit logic
            context.go('/pooja_service_confirm_page');
          },
          child: const Text(
            "Submit",
            style: TextStyle(
              fontSize: 18,
              color: Colors.black,
            ),
          ),
        ),
      ),
    ],
  );
}

Widget buildFaqSupportList() {
  final List<String> faqQuestions = [
    "Can I change the location after booking?",
    "What payment methods do you accept?",
    "Is there an extra charge for travel?",
    "Can I book a pandit offline?",
    "Do you provide samagri (puja materials)?",
    "How much should I pay in advance?",
    "Will I get a confirmation after booking?",
    "Can I cancel or reschedule my booking?",
    "What languages do your pandits speak?",
    "Do you have experienced and certified pandits?",
  ];

  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      const Text(
        "FAQ",
        style: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.bold,
        ),
      ),
      const SizedBox(height: 6),
      const Text(
        "Got questions? I’ve got answers!",
        style: TextStyle(
          fontSize: 15,
          fontWeight: FontWeight.w600,
        ),
      ),
      const SizedBox(height: 25),
      ...faqQuestions.map(
        (question) => Padding(
          padding: const EdgeInsets.only(bottom: 12.0),
          child: ExpansionTile(
            backgroundColor: const Color(0xFFD9D9D9),
            collapsedBackgroundColor: const Color(0xFFD9D9D9),
            tilePadding: const EdgeInsets.symmetric(horizontal: 12),
            childrenPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
            title: Text(
              question,
              style: const TextStyle(fontSize: 14),
            ),
            children: const [
              Text(
                'This is a sample answer. Replace with your actual FAQ answer.',
                style: TextStyle(fontSize: 13),
              ),
            ],
          ),
        ),
      )
    ],
  );
}

}
