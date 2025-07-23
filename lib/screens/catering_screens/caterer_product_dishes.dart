import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:lalitha_peetham/screens/catering_screens/contact_caterer_widget.dart';
import 'package:lalitha_peetham/screens/catering_screens/similar_caterer_card.dart';
import 'package:lalitha_peetham/screens/online_vastu_property/vastupooja_layout.dart';

class CatererProductDishes extends StatefulWidget {
  const CatererProductDishes({super.key});

  @override
  State<CatererProductDishes> createState() => _CatererProductDishesState();
}

class _CatererProductDishesState extends State<CatererProductDishes> {
    
final List<Map<String, String>> dishes = [
  {
    "image": "assets/images/catering7.png",
    "title": "Veg panner",
    "rating": "4.7",
    "reviews": "89 reviews",
    "cuisine": "Indian • Chinese • Jain",
    "price": "From ₹400/plate",
    "guests": "Min. 50 guests",
    "location": "Hyderabad, Telangana"
  },
  {
    "image": "assets/images/catering8.png",
    "title": "Non - veg special",
    "rating": "4.7",
    "reviews": "89 reviews",
    "cuisine": "Indian • Chinese • Jain",
    "price": "From ₹400/plate",
    "guests": "Min. 50 guests",
    "location": "Hyderabad, Telangana"
  },
  {
    "image": "assets/images/catering7.png",
    "title": "Veg panner",
    "rating": "4.7",
    "reviews": "89 reviews",
    "cuisine": "Indian • Chinese • Jain",
    "price": "From ₹400/plate",
    "guests": "Min. 50 guests",
    "location": "Hyderabad, Telangana"
  },
  {
    "image": "assets/images/catering9.png",
    "title": "Non - veg special",
    "rating": "4.7",
    "reviews": "89 reviews",
    "cuisine": "Indian • Chinese • Jain",
    "price": "From ₹400/plate",
    "guests": "Min. 50 guests",
    "location": "Hyderabad, Telangana"
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
              "Product Dishes",
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
              children: dishes.map((data) => buildCatererCard(data)).toList(),
            ),

          ],
        ),
      ),
    ],
  );
}



Widget buildCatererCard(Map<String, String> data) {
  return SizedBox(
    width: 350,
    height: 420,
    child: Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(0),
        boxShadow: const [
          BoxShadow(
            color: Colors.black26,
            blurRadius: 4,
            offset: Offset(0, 2),
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
          Padding(
            padding: const EdgeInsets.all(12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  data["title"] ?? "",
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
                const SizedBox(height: 6),
                Row(
                  children: [
                    const Icon(Icons.star, color: Colors.amber, size: 16),
                    const SizedBox(width: 4),
                    Text(
                      "${data['rating']} (${data['reviews']})",
                      style: const TextStyle(fontSize: 13),
                    ),
                  ],
                ),
                const SizedBox(height: 8),
                Text(
                  data["cuisine"] ?? "",
                  style: const TextStyle(fontSize: 13),
                ),
                const SizedBox(height: 4),
                Text(
                  "${data['price']} • ${data['guests']}",
                  style: const TextStyle(fontSize: 13),
                ),
                const SizedBox(height: 4),
                Row(
                  children: [
                    const Icon(Icons.location_on, color: Colors.red, size: 16),
                    const SizedBox(width: 4),
                    Text(
                      data["location"] ?? "",
                      style: const TextStyle(fontSize: 13),
                    ),
                  ],
                ),
                const SizedBox(height: 16),
                Center(
                  child: ElevatedButton(
                    onPressed: () => context.go('/caterer_saved_menue'),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFFEDC14B),
                      foregroundColor: Colors.black,
                      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 10),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(2),
                      ),
                    ),
                    child: const Text("View suppliers"),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    ),
  );
}

}
