import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:lalitha_peetham/screens/catering_screens/contact_caterer_widget.dart';
import 'package:lalitha_peetham/screens/catering_screens/similar_caterer_card.dart';
import 'package:lalitha_peetham/screens/online_vastu_property/vastupooja_layout.dart';

class CatererRecentScreen extends StatefulWidget {
  const CatererRecentScreen({super.key});

  @override
  State<CatererRecentScreen> createState() => _CatererRecentScreenState();
}

class _CatererRecentScreenState extends State<CatererRecentScreen> {
    
 final List<Map<String, String>> caterers = [
    {
      "image": "assets/images/catering2.png",
      "name": "Shree Bhog Caterers",
      "contact": "Mr. Ramesh Verma",
      "phone": "+91 98765 43210",
      "email": "shreebhog@gmail.com",
      "location": "Hyderabad, Telangana",
      "gst": "36ABCDE1234FZ5",
      "experience": "8+ years"
    },
    {
      "image": "assets/images/catering2.png",
      "name": "Royal Feast",
      "contact": "Ms. Anjali Mehta",
      "phone": "+91 91234 56789",
      "email": "royalfeast@gmail.com",
      "location": "Secunderabad, Telangana",
      "gst": "36ABCDE9876GZ1",
      "experience": "10+ years"
    },
    {
      "image": "assets/images/catering2.png",
      "name": "Annapurna Foods",
      "contact": "Mr. Suresh Iyer",
      "phone": "+91 99887 77665",
      "email": "annapurna@gmail.com",
      "location": "Warangal, Telangana",
      "gst": "36ABCDE4455KZ2",
      "experience": "6+ years"
    },
    {
      "image": "assets/images/catering2.png",
      "name": "TasteBuds Events",
      "contact": "Mrs. Neha Rathi",
      "phone": "+91 98765 12345",
      "email": "tastebuds@gmail.com",
      "location": "Karimnagar, Telangana",
      "gst": "36ABCDE6666ZZ9",
      "experience": "12+ years"
    },
  ];



  @override
  Widget build(BuildContext context) {
    return  VastupoojaLayout(
      child: SingleChildScrollView(
        child: Column(
          children: [
             buildherosection(),
            //SizedBox(height: 40),
            buildOurcaterers( context),
           
             SizedBox(height: 80),
             ContactCatererWidget(),
             SizedBox(height: 80),
             SimilarCatererCard(),

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

Widget buildOurcaterers(BuildContext context) {
  return Stack(
    children: [
      // // ✅ Full-screen background image
      // Positioned.fill(
      //   child: Image.asset(
      //     'assets/images/vastupooja4.png', // ✅ background with triangles
      //     fit: BoxFit.cover,
      //   ),
      // ),

      // // 🌕 Planet image top right
      // Positioned(
      //   top: 40,
      //   right: 30,
      //   child: Image.asset(
      //     'assets/images/vastupooja11.png',
      //     height: 60,
      //     width: 60,
      //   ),
      // ),

      // 📦 Foreground content on top of background
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 100, vertical: 40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Our caterers",
              style: TextStyle(
                fontSize: 35,
                fontWeight: FontWeight.bold,
                color: Colors.black, // make sure it's readable
              ),
            ),
            const SizedBox(height: 40),

            Wrap(
              spacing: 20,
              runSpacing: 24,
              children: caterers
                  .map((data) => buildCatererCard(data))
                  .toList(),
            ),
          ],
        ),
      ),
    ],
  );
}



   Widget buildCatererCard(Map<String, String> data) {
  return SizedBox(
    width: 350, // ensures only 2 cards fit per row
    height: 450,
    child: Container(
      decoration: BoxDecoration(
        color:  Colors.white,
        borderRadius: BorderRadius.circular(0),
        boxShadow: const [
          BoxShadow(
            color: Colors.black26,
            blurRadius: 4,
            offset: Offset(0, 4),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.vertical(top: Radius.circular(0)),
            child: Image.asset(
              data["image"]!,
              height: 180,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(height: 8),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Name: ${data['name']}"),
                Text("Contact Person: ${data['contact']}"),
                Text("Phone: ${data['phone']}"),
                Text("Email: ${data['email']}"),
                Text("Location: ${data['location']}"),
                Text("GST: ${data['gst']}"),
                Text("Experience: ${data['experience']}"),
                const SizedBox(height: 15),
              ],
            ),
          ),
          Center(
            child: ElevatedButton(
              onPressed: () => context.go('/caterer_menue_page'),
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xFFF5C761),
                foregroundColor: Colors.black,
                padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
                textStyle: const TextStyle(fontSize: 12),
              ),
              child: const Text("Book Now"),
            ),
          ),
          const SizedBox(height: 12),
        ],
      ),
    ),
  );
}

}
