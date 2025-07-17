import 'package:flutter/material.dart';
import 'package:lalitha_peetham/screens/online_vastu_property/vastupooja_layout.dart';

class YourScheduledAndCmpltPoojas extends StatefulWidget {
  const YourScheduledAndCmpltPoojas({super.key});

  @override
  State<YourScheduledAndCmpltPoojas> createState() => _YourScheduledAndCmpltPoojasState();
}

class _YourScheduledAndCmpltPoojasState extends State<YourScheduledAndCmpltPoojas> with SingleTickerProviderStateMixin{

   late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return VastupoojaLayout(
      child: SingleChildScrollView(
        child: Column(
          children: [
            buildherosection(),
             buildYourScheduledAndCmpltPoojas(context),



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

  Widget buildYourScheduledAndCmpltPoojas(BuildContext context) {
    return  Stack(
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
            padding: const EdgeInsets.symmetric(horizontal: 150.0, vertical: 25),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Search Bar
                Align(
                  alignment: Alignment.topRight,
                  child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    decoration: BoxDecoration(
                      color: Color(0xFFD9D9D9),
                      borderRadius: BorderRadius.circular(25),
                    ),
                    width: 300,
                    height: 45,
                    child: Row(
                      children: const [
                        Icon(Icons.search, color: Colors.grey),
                        SizedBox(width: 10),
                        Expanded(
                          child: TextField(
                            decoration: InputDecoration(
                              hintText: "Search bookings",
                              border: InputBorder.none,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 30),

                const Text(
                  "ACCESS THE FULL LIST OF YOUR SCHEDULED AND\nCOMPLETED POOJAS",
                  style: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.w900,
                  ),
                ),
                const SizedBox(height: 30),

                // Buttons Row
                Wrap(
                  spacing: 15,
                  runSpacing: 12,
                  children: [
                    buildButton("Book E-Pooja", isActive: false),
                    buildButton("Browse Poojas", isActive: false),
                    buildButton("Upcoming Poojas", isActive: false),
                    buildButton("My Bookings", isActive: true),
                  ],
                ),

                const SizedBox(height: 25),

                // TabBar Section
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: Color(0xFFD9D9D9)),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Column(
                    children: [
                      TabBar(
                        controller: _tabController,
                        
                        labelColor: Colors.black,
                        unselectedLabelColor: Colors.black,
                        indicatorColor: Colors.black,
                        tabs: const [
                          Tab(text: "Upcoming Bookings"),
                          Tab(text: "past bookings"),
                          Tab(text: "cancelled bookings"),
                        ],
                      ),
                      Container(
                        color: Color(0xFFD9D9D9),
                        height: 320,
                        padding: const EdgeInsets.all(16),
                        child: TabBarView(
                          controller: _tabController,
                          children: [
                            buildUpcomingBookingCard(),
                            buildPastBookingCard(),
                            buildCancelledBookingCard(),
                          ],
                        ),

                      ),
                    ],
                  ),
                )
              ],
            ),
          )
    ]
    );
        
  }

  Widget buildButton(String label, {bool isActive = false}) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 10),
      decoration: BoxDecoration(
        color: isActive ? Colors.white : Colors.grey.shade300,
        borderRadius: BorderRadius.circular(6),
        border: isActive
            ? Border.all(color: Colors.grey.shade300)
            : Border.all(color: Colors.transparent),
      ),
      child: Text(
        label,
        style: TextStyle(
          fontWeight: FontWeight.w500,
          color: isActive ? Colors.black : Colors.black87,
        ),
      ),
    );
  }

  Widget buildUpcomingBookingCard() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Container(
        decoration: BoxDecoration(
          color: const Color(0xFFE4C74D),
          borderRadius: BorderRadius.circular(6),
        ),
        padding: const EdgeInsets.all(10),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Image.asset(
                "assets/images/vastupooja7.png",
                width: 100,
                height: 120,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(width: 12),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(". Full Name: Amit Sharma"),
                  Text(". Contact Number: 9000000000"),
                  Text(". Property Type: Home"),
                  Text(". Location: Maharashtra"),
                  Text(". Preferred Date: 15th June 2025"),
                  Text(". Preferred Time: 10:00 AM"),
                  Text(". Astrologer Assigned: Pt. Rajeev Sharma"),
                  Text(". Consultation Mode: Video Call"),
                ],
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor:const Color(0xFFE4C74D),
                    foregroundColor: Colors.black,
                  ),
                  onPressed: () {},
                  child: const Text("Reschedule"),
                ),
                const SizedBox(height: 8),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor:const Color(0xFFE4C74D),
                    foregroundColor: Colors.black,
                    side: const BorderSide(color: Colors.grey),
                  ),
                  onPressed: () {},
                  child: const Text("Cancel"),
                ),
                const SizedBox(height: 25),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(4),
                  ),
                  child: const Text("Booked"),
                ),
              ],
            )
          ],
        ),
      ),
      const SizedBox(height: 30),
      const Text(
        "Contact Our Customer Support For Quick Assistance. We’re Here To Help!",
        style: TextStyle(fontSize: 16),
      ),
      const SizedBox(height: 10),
      ElevatedButton(
        
        style: ElevatedButton.styleFrom(
          backgroundColor: const Color(0xFFE4C74D),
          foregroundColor: Colors.black,
           shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(0),
                      ),
        ),
        onPressed: () {},
        child: const Text("Customer Support"),
      ),
    ],
  );
}


 Widget buildPastBookingCard() {
  return Container(
    decoration: BoxDecoration(
      color: const Color(0xFFE4C74D),
      borderRadius: BorderRadius.circular(6),
    ),
    padding: const EdgeInsets.all(10),
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(8),
          child: Image.asset(
            "assets/images/vastupooja7.png",
            width: 150,
            height: 150,
            fit: BoxFit.cover,
          ),
        ),
        const SizedBox(width: 12),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text(". Full Name: Amit Sharma"),
              Text(". Contact Number: 9000000000"),
              Text(". Property Type: Home"),
              Text(". Location: Maharashtra"),
              Text(". Preferred Date: 15th June 2025"),
              Text(". Preferred Time: 10:00 AM"),
              Text(". Astrologer Assigned: Pt. Rajeev Sharma"),
              Text(". Consultation Mode: Video Call"),
            ],
          ),
        ),
        Align(
          alignment: Alignment.bottomRight,
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 5),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(4),
            ),
            child: const Text("Completed"),
          ),
        ),
      ],
    ),
  );
}

Widget buildCancelledBookingCard() {
  return Container(
    decoration: BoxDecoration(
      color: const Color(0xFFE4C74D),
      borderRadius: BorderRadius.circular(6),
    ),
    padding: const EdgeInsets.all(10),
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(8),
          child: Image.asset(
            "assets/images/vastupooja7.png",
            width: 150,
            height: 150,
            fit: BoxFit.cover,
          ),
        ),
        const SizedBox(width: 12),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text(". Full Name: Amit Sharma"),
              Text(". Contact Number: 9000000000"),
              Text(". Property Type: Home"),
              Text(". Location: Maharashtra"),
              Text(". Preferred Date: 15th June 2025"),
              Text(". Preferred Time: 10:00 AM"),
              Text(". Astrologer Assigned: Pt. Rajeev Sharma"),
              Text(". Consultation Mode: Video Call"),
            ],
          ),
        ),
        Align(
          alignment: Alignment.bottomRight,
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 5),
            decoration: BoxDecoration(
              color: Color(0xFFD72D2D),
              borderRadius: BorderRadius.circular(4),
            ),
            child: const Text("Cancelled", style: TextStyle(color: Colors.white)),
          ),
        ),
      ],
    ),
  );
}


}


