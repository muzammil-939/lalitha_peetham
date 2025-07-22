import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:lalitha_peetham/screens/online_vastu_property/vastupooja_layout.dart';

class CatererRecentsDashboard extends StatefulWidget {
  const CatererRecentsDashboard({super.key});

  @override
  State<CatererRecentsDashboard> createState() => _CatererRecentsDashboardState();
}

class _CatererRecentsDashboardState extends State<CatererRecentsDashboard> {
  int selectedTabIndex = 0;
  int myBookingsTabIndex = 0; // 0 = Upcoming, 1 = Past, 2 = Cancelled


 final tabTitles = ['Recents', 'Up coming', 'payments'];


  @override
  Widget build(BuildContext context) {
    return VastupoojaLayout(
      child: SingleChildScrollView(
        child: Column(
          children: [
            buildherosection(),
            buildTitleSection(),
            //const SizedBox(height: 20),
           // buildTabNavigation(),
           // const SizedBox(height: 30),
            //buildDashboardGrid(),
            const SizedBox(height: 80),
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


Widget buildTitleSection() {
  return Stack(
    children: [
      // 🌄 Background Image
      Positioned(
        child: Image.asset(
          'assets/images/vastupooja4.png',
          fit: BoxFit.cover,
        ),
      ),

      // 🌕 Decorative Planet Image (top-right)
      Positioned(
        top: 10,
        right: 40,
        child: Image.asset(
          'assets/images/vastupooja11.png',
          height: 100,
          width: 100,
        ),
      ),

      // 🏷️ Title + Tabs
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 100),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 50,),
            const Text(
              "Dashboard",
              style: TextStyle(
                fontSize: 42,
                fontWeight: FontWeight.w900,
                color: Colors.black,
              ),
            ),
            const SizedBox(height: 25),
            buildTabNavigation(),
            const SizedBox(height: 25),
            buildDashboardGrid()
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
            width: 220,
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

Widget buildDashboardGrid() {
  final List<Map<String, String>> recentsList = [
    {
      'image': 'assets/images/catering4.png',
      'title': 'is simply dummy',
      'description': 'is simply dummy text of the printing and typesetting',
      'cost': '\$30,0000',
      'status': 'Completed',
    },
    {
      'image': 'assets/images/catering4.png',
      'title': 'is simply dummy',
      'description': 'is simply dummy text of the printing and typesetting',
      'cost': '\$30,0000',
      'status': 'Completed',
    },
    {
      'image': 'assets/images/catering4.png',
      'title': 'is simply dummy',
      'description': 'is simply dummy text of the printing and typesetting',
      'cost': '\$30,0000',
      'status': 'Completed',
    },
  ];

  final List<Map<String, String>> upcomingList = [
    {
      'image': 'assets/images/catering4.png',
      'title': 'is simply dummy',
      'type': 'Wedding Reception',
      'date': 'June 20, 2025',
      'guests': '150',
      'amount': '₹75,000',
      'status': 'Up coming',
    },
    {
      'image': 'assets/images/catering4.png',
      'title': 'is simply dummy',
      'type': 'Wedding Reception',
      'date': 'June 20, 2025',
      'guests': '150',
      'amount': '₹75,000',
      'status': 'Up coming',
    },
    {
      'image': 'assets/images/catering4.png',
      'title': 'is simply dummy',
      'type': 'Wedding Reception',
      'date': 'June 20, 2025',
      'guests': '150',
      'amount': '₹75,000',
      'status': 'Up coming',
    },
  ];

  final List<Map<String, String>> paymentsList = [
    {
      'image': 'assets/images/catering4.png',
      'title': 'is simply dummy',
      'type': 'Wedding Reception',
      'date': 'June 20, 2025',
      'guests': '150',
      'amount': '₹75,000',
      'status': 'Paid',
    },
    {
      'image': 'assets/images/catering4.png',
      'title': 'is simply dummy',
      'type': 'Wedding Reception',
      'date': 'June 20, 2025',
      'guests': '150',
      'amount': '₹75,000',
      'status': 'Paid',
    },
  ];

  // Choose list based on tab index
  List<Map<String, String>> currentList;

  switch (selectedTabIndex) {
    case 0:
      currentList = recentsList;
      break;
    case 1:
      currentList = upcomingList;
      break;
    case 2:
      currentList = paymentsList;
      break;
    default:
      currentList = [];
  }

  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 100),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: currentList.map((item) {
        return Padding(
          padding: const EdgeInsets.only(bottom: 30),
          child: buildDashboardCard(item),
        );
      }).toList(),
    ),
  );
}


Widget buildDashboardCard(Map item) {
  return Container(
    decoration: BoxDecoration(
      color: const Color(0xFFEAC63E),
      borderRadius: BorderRadius.circular(0),
    ),
    child: Stack(
      children: [
        // 🔸 Main Row content
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // 🖼️ Image Section
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: GestureDetector(
                onTap: () {
                  context.go('/caterer_payments_method');
                },
                child: ClipRRect(
                  borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(0), bottomLeft: Radius.circular(0)),
                  child: Image.asset(
                    item['image']!,
                    height: 180,
                    width: 180,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),

            // 📄 Content Section
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      item['title'] ?? '',
                      style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 6),
                    if (selectedTabIndex == 0) ...[
                      Text(
                        item['description'] ?? '',
                        style: const TextStyle(fontSize: 14),
                      ),
                      const SizedBox(height: 8),
                      Text(
                        "Cost : ${item['cost']}",
                        style: const TextStyle(fontSize: 15),
                      ),
                    ] else ...[
                      Text("Event Type: ${item['type'] ?? ''}"),
                      Text("Date: ${item['date'] ?? ''}"),
                      Text("Guests: ${item['guests'] ?? ''}"),
                      Text("Total Amount: ${item['amount'] ?? ''}"),
                    ],
                  ],
                ),
              ),
            ),
          ],
        ),

        // ✅ Status Label at bottom right
        Positioned(
          bottom: 10,
          right: 10,
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(4),
            ),
            child: Text(
              item['status'] ?? '',
              style: TextStyle(
                fontSize: 13,
                color: selectedTabIndex == 2
                    ? Colors.green
                    : selectedTabIndex == 1
                        ? Colors.black87
                        : Colors.black,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ),
      ],
    ),
  );
}


}
