import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'package:lalitha_peetham/screens/online_pooja/e_pooja_layout.dart';
import 'package:lalitha_peetham/screens/online_pooja/online_pooja_support_section.dart';
import 'package:lalitha_peetham/widgets/reusable_responsive_type_widget.dart';

class MyBookingsPage extends StatefulWidget {
  const MyBookingsPage({super.key});

  @override
  State<MyBookingsPage> createState() => _MyBookingsPageState();
}

class _MyBookingsPageState extends State<MyBookingsPage> {
  int myBookingsTabIndex = 0; // <-- keep track of selected tab
    int selectedTabIndex = 0;

  final List<String> tabTitles = [
    "My Bookings",   
    "Support",
  ];

  final upcomingBookings = [
    {
      'image': 'assets/images/e_pooja2.jpg',
      'date': '22-07-25',
      'time': '6:00 AM To 10:00 AM',
      'id': 'PUJ12345678',
      'price': '₹1800',
      'status': 'Booked'
    },
    {
      'image': 'assets/images/e_pooja2.jpg',
      'date': '15-07-25',
      'time': '6:00 AM To 10:00 AM',
      'id': 'PUJ12345678',
      'price': '₹1800',
      'status': 'Booked'
    },
  ];

  final pastBookings = [
    {
      'image': 'assets/images/e_pooja2.jpg',
      'date': '22-03-25',
      'time': '6:00 AM To 10:00 AM',
      'id': 'PUJ12345678',
      'price': '₹1800',
      'status': 'Completed'
    },
    {
      'image': 'assets/images/e_pooja2.jpg',
      'date': '15-03-25',
      'time': '6:00 AM To 10:00 AM',
      'id': 'PUJ12345678',
      'price': '₹1800',
      'status': 'Completed'
    },
  ];

  // final cancelledBookings = [
  //   {
  //     'image': 'assets/images/e_pooja2.jpg',
  //     'date': '12-05-25',
  //     'time': '6:00 AM To 10:00 AM',
  //     'id': 'PUJ12345678',
  //     'price': '₹1800',
  //     'status': 'Cancelled'
  //   },
  //   {
  //     'image': 'assets/images/e_pooja2.jpg',
  //     'date': '05-03-25',
  //     'time': '6:00 AM To 10:00 AM',
  //     'id': 'PUJ12345678',
  //     'price': '₹1800',
  //     'status': 'Cancelled'
  //   },
  // ];

  @override
  Widget build(BuildContext context) {
    return EPoojaLayout(
      child: SingleChildScrollView(
        child: Column(
          children: [
            buildTitleSection(context),
            const SizedBox(height: 50),
              
           
          ResponsiveTabNavigation(
            selectedTabIndex: selectedTabIndex,
            onTabSelected: (index) {
              setState(() => selectedTabIndex = index);
            },
            tabTitles: tabTitles,
          ),
          ResponsiveTabContent(
            selectedTabIndex: selectedTabIndex,
            buildMyBookingTabs: () => buildMyBookingsSection(context),
          
            buildSupportTabs:()=> OnlinePoojaSupportSection(),
          ),
          ],
        ),
      ),
    );
  }

 Widget buildTitleSection(BuildContext context) {
  double width = ResponsiveHelper.screenWidth(context);
  bool isMobile = ResponsiveHelper.isMobile(context);
bool isTablet = ResponsiveHelper.isMobile(context);

  return Stack(
    children: [
      Positioned.fill(
        child: Image.asset(
          'assets/images/vastupooja4.png',
          fit: BoxFit.cover,
        ),
      ),
      Positioned(
        top: isMobile ? 60 : 120,
        right: isMobile ? 16 : 30,
        child: Image.asset(
          'assets/images/vastupooja11.png',
          height: isMobile ? 60 : 100,
          width: isMobile ? 60 : 100,
        ),
      ),
      Padding(
        padding: EdgeInsets.symmetric(horizontal: isMobile ? 16 : 150, vertical: 25),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Align(
              alignment: Alignment.topRight,
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                decoration: BoxDecoration(
                  color: const Color(0xFFD9D9D9),
                  borderRadius: BorderRadius.circular(25),
                ),
                width: isMobile ? width * 0.9 : 350,
                height: 45,
                child: Row(
                  children: const [
                    Icon(Icons.search, color: Colors.grey),
                    SizedBox(width: 10),
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: "Search pooja's",
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 30),
            Text(
              "Access the Full List of Your Scheduled and\nCompleted Poojas",
              style: TextStyle(
                fontSize: isMobile ? 24 : isTablet ? 30 :45,
                fontWeight: FontWeight.w900,
              ),
            ),
          ],
        ),
      ),
    ],
  );
}
Widget buildMyBookingsSection(BuildContext context) {
  bool isMobile = ResponsiveHelper.isMobile(context);
  double screenWidth = ResponsiveHelper.screenWidth(context);
  double horizontalPadding = isMobile ? 16 : screenWidth * 0.1;

  final List<String> bookingTabs = ['Upcoming Bookings', 'Past Bookings'];
  final List<List<Map<String, dynamic>>> bookingsData = [
    upcomingBookings,
    pastBookings,
  ];

  return Padding(
    padding: EdgeInsets.symmetric(horizontal: horizontalPadding),
    child: Center(
      child: ConstrainedBox(
        constraints: const BoxConstraints(maxWidth: 1000),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 30),
            Container(
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(8),
                border: Border.all(color: Colors.grey.shade300),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: List.generate(bookingTabs.length, (index) {
                      final selected = myBookingsTabIndex == index;
                      return GestureDetector(
                        onTap: () => setState(() => myBookingsTabIndex = index),
                        child: Padding(
                          padding: const EdgeInsets.only(right: 18.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                bookingTabs[index],
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: selected ? FontWeight.bold : FontWeight.normal,
                                  color: Colors.black,
                                ),
                              ),
                              const SizedBox(height: 8),
                              Container(
                                width: selected ? 96 : 0,
                                height: 2,
                                decoration: BoxDecoration(
                                  color: selected ? Colors.black : Colors.transparent,
                                  borderRadius: BorderRadius.circular(2),
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    }),
                  ),
                  const SizedBox(height: 18),
                  Column(
                    children: List.generate(bookingsData[myBookingsTabIndex].length, (i) {
                      final booking = bookingsData[myBookingsTabIndex][i];
                      return buildBookingCard(context, booking);
                    }),
                  ),
                  if (myBookingsTabIndex == 0) ...[
                    const SizedBox(height: 20),
                    const Text(
                      "Contact Our Customer Support For Quick Assistance. We’re Here To Help!",
                      style: TextStyle(fontSize: 14),
                    ),
                    const SizedBox(height: 10),
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        foregroundColor: Colors.black,
                        backgroundColor: const Color(0xFFE4C74D),
                        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                      ),
                      child: const Text("Customer Support"),
                    ),
                  ],
                ],
              ),
            ),
          ],
        ),
      ),
    ),
  );
}

 Widget buildBookingCard(BuildContext context, Map booking) {
  bool isMobile = ResponsiveHelper.isMobile(context);
  double screenWidth = ResponsiveHelper.screenWidth(context);
  double cardWidth = isMobile ? double.infinity : screenWidth * 0.9;
  double maxCardWidth = isMobile ? double.infinity : 900;

  return Container(
    constraints: BoxConstraints(maxWidth: maxCardWidth),
    margin: const EdgeInsets.only(bottom: 20),
    decoration: BoxDecoration(
      color: const Color(0xFfE4C74D),
      borderRadius: BorderRadius.circular(8),
    ),
    width: cardWidth,
    child: isMobile
        ? Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(
                booking['image'],
                width: double.infinity,
                height: 180,
                fit: BoxFit.cover,
              ),
              Padding(
                padding: const EdgeInsets.all(12),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Satyanarayan Puja",
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                    ),
                    const SizedBox(height: 5),
                    Text("Booking id : ${booking['id']}"),
                    Text("Date       : ${booking['date']}"),
                    Text("Time       : ${booking['time']}"),
                    Text("Price      : ${booking['price']}"),
                    const SizedBox(height: 10),
                    Align(
                      alignment: Alignment.centerRight,
                      child: _buildStatusButton(context, booking),
                    ),
                  ],
                ),
              ),
            ],
          )
        : Padding(
            padding: const EdgeInsets.all(12),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(
                  booking['image'],
                  width: 130,
                  height: 180,
                  fit: BoxFit.cover,
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Satyanarayan Puja",
                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                      ),
                      const SizedBox(height: 5),
                      Text("Booking id : ${booking['id']}"),
                      Text("Date       : ${booking['date']}"),
                      Text("Time       : ${booking['time']}"),
                      Text("Price      : ${booking['price']}"),
                    ],
                  ),
                ),
                const SizedBox(width: 12),
                _buildStatusButton(context, booking),
              ],
            ),
          ),
  );
}

Widget _buildStatusButton(BuildContext context, Map booking) {
  final status = booking['status'];

  if (status == 'Booked') {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        ElevatedButton(
          onPressed: () {
            context.go('/reschedule_page');
          },
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.white,
            foregroundColor: Colors.black,
          ),
          child: const Text("Reschedule"),
        ),
        const SizedBox(height: 10),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(8),
          ),
          child: const Text("Booked"),
        ),
      ],
    );
  } else {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      decoration: BoxDecoration(
        color: status == 'Completed' ? Colors.white : Colors.red,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Text(
        status,
        style: TextStyle(
          color: status == 'Completed' ? Colors.black : Colors.white,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}

}

class ResponsiveTabNavigation extends StatelessWidget {
  final int selectedTabIndex;
  final Function(int) onTabSelected;
  final List<String> tabTitles;

  const ResponsiveTabNavigation({
    super.key,
    required this.selectedTabIndex,
    required this.onTabSelected,
    required this.tabTitles,
  });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final isMobile = ResponsiveHelper.isMobile(context);

        return Padding(
          padding: EdgeInsets.symmetric(
            horizontal: isMobile ? 16 : 50,
            vertical: 20,
          ),
          child: Wrap(
            spacing: 15,
            runSpacing: 10,
            children: List.generate(tabTitles.length, (index) {
              final bool isSelected = selectedTabIndex == index;
              return GestureDetector(
                onTap: () => onTabSelected(index),
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 10),
                  decoration: BoxDecoration(
                    color: isSelected ? Colors.white : Colors.grey.shade300,
                    borderRadius: BorderRadius.circular(2),
                    border: Border.all(
                      color: isSelected ? Colors.grey.shade400 : Colors.transparent,
                    ),
                  ),
                  width: isMobile ? double.infinity : 250,
                  child: Text(
                    tabTitles[index],
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      color: isSelected ? Colors.black : Colors.black87,
                    ),
                  ),
                ),
              );
            }),
          ),
        );
      },
    );
  }
}
class ResponsiveTabContent extends StatelessWidget {
  final int selectedTabIndex;
  final Widget Function() buildMyBookingTabs;
  
  final Widget Function() buildSupportTabs;

  const ResponsiveTabContent({
    super.key,
    required this.selectedTabIndex,
    required this.buildMyBookingTabs,
   
    required this.buildSupportTabs,
  });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final width = constraints.maxWidth;
        final double paddingX = width < 600 ? 16 : width < 1024 ? 32 : 100;

        late final Widget content;

        switch (selectedTabIndex) {
          case 0:
            content = buildMyBookingTabs();
            break;
          
          case 1:
            content = buildSupportTabs();
            break;
          default:
            content = const SizedBox.shrink();
        }

        return Padding(
          padding: EdgeInsets.symmetric(horizontal: paddingX, vertical: 20),
          child: content,
        );
      },
    );
  }
}
