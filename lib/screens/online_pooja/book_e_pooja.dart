import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:lalitha_peetham/screens/online_vastu_property/vastupooja_layout.dart';
import 'package:lalitha_peetham/widgets/reusable_responsive_type_widget.dart';

class BookEPooja extends StatefulWidget {
  const BookEPooja({super.key});

  @override
  State<BookEPooja> createState() => _BookEPoojaState();
}

class _BookEPoojaState extends State<BookEPooja> {
  int selectedTabIndex = 0;
  int myBookingsTabIndex = 0; // 0 = Upcoming, 1 = Past, 2 = Cancelled


  final List<String> tabTitles = [
    "Book E-Pooja",
    "Browse Poojas",
    "Upcoming Poojas",
    "My Bookings"
  ];

  @override
  Widget build(BuildContext context) {
    return VastupoojaLayout(
      child: SingleChildScrollView(
        child: Column(
          children: [
            buildherosection(),
           buildTitleSection(context),
            const SizedBox(height: 80),
            buildTabNavigation(),
            const SizedBox(height: 30),
            buildPoojaCardsGrid(context),
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
            children: [
              
              Text(
                "Your Scheduled and Completed\nPoojas",
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

 Widget buildTitleSection(BuildContext context) {
  double width = ResponsiveHelper.screenWidth(context);
  bool isMobile = ResponsiveHelper.isMobile(context);

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
              "Explore a Curated Collection of Poojas for\nEvery Special Occasion and Spiritual Need",
              style: TextStyle(
                fontSize: isMobile ? 24 : 45,
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

Widget buildPoojaCardsGrid(BuildContext context) {
  

  final bookEPoojaList = [
    {'image': 'assets/images/e_pooja1.jpg', 'title': 'Rudrabhishek Puja'},
    {'image': 'assets/images/e_pooja2.jpg', 'title': 'Satyanarayan Puja'},
    {'image': 'assets/images/e_pooja3.jpg', 'title': 'Rahu Puja'},
    {'image': 'assets/images/e_pooja4.jpg', 'title': 'Ganesh Pooja'},
    {'image': 'assets/images/e_pooja5.jpg', 'title': 'Durga Pooja'},
    {'image': 'assets/images/e_pooja6.jpg', 'title': 'Durga Pooja'},
  ];

  final browsePoojaList = [
    {'image': 'assets/images/e_pooja1.jpg', 'title': 'Lakshmi Pooja'},
    {'image': 'assets/images/e_pooja2.jpg', 'title': 'Navgraha Pooja'},
    {'image': 'assets/images/e_pooja3.jpg', 'title': 'Hanuman Pooja'},
    {'image': 'assets/images/e_pooja4.jpg', 'title': 'Shani Pooja'},
    {'image': 'assets/images/e_pooja5.jpg', 'title': 'Mangal Pooja'},
    {'image': 'assets/images/e_pooja6.jpg', 'title': 'Ketu Pooja'},
  ];

  final upcomingPoojaList = [
    {'image': 'assets/images/e_pooja1.jpg', 'title': 'Shravan Somvar Pooja'},
    {'image': 'assets/images/e_pooja2.jpg', 'title': 'Krishna Janmashtami'},
    {'image': 'assets/images/e_pooja3.jpg', 'title': 'Ganesh Chaturthi'},
    {'image': 'assets/images/e_pooja4.jpg', 'title': 'Navratri Pooja'},
    {'image': 'assets/images/e_pooja5.jpg', 'title': 'Diwali Lakshmi Pooja'},
    {'image': 'assets/images/e_pooja6.jpg', 'title': 'Kartik Purnima Pooja'},
  ];

  // final myBookingsList = [
  //   {'image': 'assets/images/mybookings1.png', 'title': 'Your Satyanarayan Puja'},
  //   {'image': 'assets/images/mybookings2.png', 'title': 'Your Ganesh Pooja'},
  //   {'image': 'assets/images/mybookings3.png', 'title': 'Your Navgraha Pooja'},
  //   {'image': 'assets/images/mybookings4.png', 'title': 'Your Diwali Pooja'},
  //   {'image': 'assets/images/mybookings5.png', 'title': 'Your Rahu Ketu Pooja'},
  //   {'image': 'assets/images/mybookings6.png', 'title': 'Your Durga Pooja'},
  // ];

  List<Map<String, String>> currentList;
    switch (selectedTabIndex) {
    case 0:
      currentList = bookEPoojaList;
      break;
    case 1:
      currentList = browsePoojaList;
      break;
    case 2:
      currentList = upcomingPoojaList;
      break;
    case 3:
     return buildMyBookingsSection(context);
     
    default:
      currentList = [];
  }

  return Stack(
    alignment: Alignment.center,
    children: [
      Image.asset(
        'assets/images/Vector (2).png',
        width: ResponsiveHelper.isMobile(context) ? 300 : 600,
        height: ResponsiveHelper.isMobile(context) ? 300 : 600,
        fit: BoxFit.cover,
      ),
      Padding(
        padding: EdgeInsets.symmetric(horizontal: ResponsiveHelper.isMobile(context) ? 16 : 100),
        child: Wrap(
          spacing: 24,
          runSpacing: 32,
          alignment: WrapAlignment.center,
          children: currentList.map((pooja) {
            return buildPoojaCard(
              context: context,
              imagePath: pooja['image']!,
              title: pooja['title']!,
            );
          }).toList(),
        ),
      )
    ],
  );
}


 Widget buildPoojaCard({required String imagePath, required String title, required BuildContext context}) {
  bool isMobile = ResponsiveHelper.isMobile(context);
  double cardWidth = isMobile ? ResponsiveHelper.screenWidth(context) * 0.9 : 300;

  return Container(
    width: cardWidth,
    height: 300,
    decoration: BoxDecoration(
      color: const Color(0xFFDFBC31),
      borderRadius: BorderRadius.circular(0),
      boxShadow: const [
        BoxShadow(
          color: Colors.black12,
          blurRadius: 6,
          offset: Offset(0, 4),
        ),
      ],
    ),
    child: Column(
      children: [
        ClipRRect(
          child: Image.asset(
            imagePath,
            height: 180,
            width: double.infinity,
            fit: BoxFit.cover,
          ),
        ),
        const SizedBox(height: 28),
        Text(
          title,
          textAlign: TextAlign.center,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 14,
            color: Colors.black,
          ),
        ),
        const SizedBox(height: 8),
        InkWell(
          onTap: () {
            context.go('/about_satyanarayana_pooja');
          },
          borderRadius: BorderRadius.circular(20),
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
            ),
            child: const Text(
              "Book Now",
              style: TextStyle(
                color: Colors.black,
                fontSize: 11,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        )
      ],
    ),
  );
}

  Widget buildMyBookingsSection(BuildContext context) {
  double width = ResponsiveHelper.screenWidth(context);
  bool isMobile = ResponsiveHelper.isMobile(context);
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

  final cancelledBookings = [
    {
      'image': 'assets/images/e_pooja2.jpg',
      'date': '12-05-25',
      'time': '6:00 AM To 10:00 AM',
      'id': 'PUJ12345678',
      'price': '₹1800',
      'status': 'Cancelled'
    },
    {
      'image': 'assets/images/e_pooja2.jpg',
      'date': '05-03-25',
      'time': '6:00 AM To 10:00 AM',
      'id': 'PUJ12345678',
      'price': '₹1800',
      'status': 'Cancelled'
    },
  ];

  final List bookingTabs = ['Upcoming Bookings', 'past bookings', 'cancelled bookings'];
  final List bookingsData = [upcomingBookings, pastBookings, cancelledBookings];

   return Padding(
    padding: EdgeInsets.symmetric(horizontal: isMobile ? 16 : 100),
    child: Container(
      padding: const EdgeInsets.all(25),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: Colors.grey.shade300),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Wrap(
            spacing: 20,
            children: List.generate(bookingTabs.length, (index) {
              return GestureDetector(
                onTap: () {
                  setState(() {
                    myBookingsTabIndex = index;
                  });
                },
                child: Text(
                  bookingTabs[index],
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: myBookingsTabIndex == index ? FontWeight.bold : FontWeight.normal,
                    decoration: myBookingsTabIndex == index
                        ? TextDecoration.underline
                        : TextDecoration.none,
                  ),
                ),
              );
            }),
          ),
          const SizedBox(height: 20),
          Column(
            children: List.generate(bookingsData[myBookingsTabIndex].length, (i) {
              final booking = bookingsData[myBookingsTabIndex][i];
              return buildBookingCard(context, booking);
            }),
          ),
          if (myBookingsTabIndex == 0) ...[
            const SizedBox(height: 30),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
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
                )
              ],
            ),
          ]
        ],
      ),
    ),
  );
}


Widget buildBookingCard(BuildContext context, Map booking) {
  bool isMobile = ResponsiveHelper.isMobile(context);
  double cardWidth = ResponsiveHelper.screenWidth(context) * 0.9;

  return Container(
    width: cardWidth,
    margin: const EdgeInsets.only(bottom: 30),
    decoration: BoxDecoration(
      color: const Color(0xFfE4C74D),
      borderRadius: BorderRadius.circular(0),
    ),
    child: isMobile
        ? Column(
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
                    const Text("Satyanarayan Puja",
                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
                    const SizedBox(height: 5),
                    Text("Booking id : ${booking['id']}"),
                    Text("Date       : ${booking['date']}"),
                    Text("Time       : ${booking['time']}"),
                    Text("Price      : ${booking['price']}"),
                    const SizedBox(height: 10),
                    Align(
                      alignment: Alignment.centerRight,
                      child: booking['status'] == 'Booked'
                          ? Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                ElevatedButton(
                                  onPressed: () {},
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
                            )
                          : Container(
                              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                              decoration: BoxDecoration(
                                color: booking['status'] == 'Completed'
                                    ? Colors.white
                                    : Colors.red,
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: Text(
                                booking['status'],
                                style: TextStyle(
                                  color: booking['status'] == 'Completed'
                                      ? Colors.black
                                      : Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                    ),
                  ],
                ),
              ),
            ],
          )
        : Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(
                booking['image'],
                width: 130,
                height: 180,
                fit: BoxFit.cover,
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(12),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text("Satyanarayan Puja",
                          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
                      const SizedBox(height: 5),
                      Text("Booking id : ${booking['id']}"),
                      Text("Date       : ${booking['date']}"),
                      Text("Time       : ${booking['time']}"),
                      Text("Price      : ${booking['price']}"),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(12),
                child: booking['status'] == 'Booked'
                    ? Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.white,
                              foregroundColor: Colors.black,
                            ),
                            child: const Text("Reschedule"),
                          ),
                          const SizedBox(height: 40),
                          Container(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: const Text("Booked"),
                          ),
                        ],
                      )
                    : Container(
                        padding:
                            const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                        decoration: BoxDecoration(
                          color: booking['status'] == 'Completed'
                              ? Colors.white
                              : Colors.red,
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Text(
                          booking['status'],
                          style: TextStyle(
                            color: booking['status'] == 'Completed'
                                ? Colors.black
                                : Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
              )
            ],
          ),
  );
}



}
