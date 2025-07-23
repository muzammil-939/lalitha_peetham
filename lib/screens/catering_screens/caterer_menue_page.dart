import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:lalitha_peetham/screens/catering_screens/catering_faq_widget.dart';
import 'package:lalitha_peetham/screens/catering_screens/contact_caterer_widget.dart';
import 'package:lalitha_peetham/screens/online_vastu_property/vastupooja_layout.dart';

class CatererMenuePage extends StatefulWidget {
  const CatererMenuePage({super.key});

  @override
  State<CatererMenuePage> createState() => _CatererMenuePageState();
}

class _CatererMenuePageState extends State<CatererMenuePage> {




  @override
  Widget build(BuildContext context) {
    return VastupoojaLayout(
      child: SingleChildScrollView(
        child: Column(
          children: [
            buildherosection(),
            buildCatererCard(context),
            SizedBox(height: 80,),
            ContactCatererWidget(),
            SizedBox(height: 80,),
            buildCustomerReviews( context),
            SizedBox(height: 80,),
            CateringFaqWidget(),


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




  Widget buildCatererCard(BuildContext context) {
    return Stack(
      children: [
        // Background Image
       // 🌄 Background Image
      Positioned(
        
        child: SizedBox(
         
          child: Image.asset(
            'assets/images/vastupooja4.png',
            fit: BoxFit.cover,
          ),
        ),
      ),
        // Planet Image Top Right
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
          padding: const EdgeInsets.symmetric(horizontal: 150.0, vertical: 40),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
               const Text(
                    "Product Information",
                    style: TextStyle(fontSize: 28, fontWeight: FontWeight.w700),
                  ),
                  const SizedBox(height: 30),
              // Header Row with Image + Details

              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Food Image
                  Image.asset(
                    'assets/images/catering2.png', // Replace with correct path
                    height: 220,
                    width: 300,
                    fit: BoxFit.cover,
                  ),
                  const SizedBox(width: 30),
                  // Details Column
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Shree Bhog Caterers",
                          style: TextStyle(fontSize: 28, fontWeight: FontWeight.w700),
                        ),
                        const SizedBox(height: 10),
                        const Text("Contact Person: Mr. Ramesh Verma"),
                        const Text("Email: shreebhog@gmail.com"),
                        const Text("Location: Hyderabad, Telangana"),
                        const Text("GST Number: 36ABCDE1234F1Z5"),
                        const Text("Experience: 8+ years"),
                        const SizedBox(height: 10),
                        ElevatedButton(
                          onPressed: () {
                            context.go('/caterer_packages_page');
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: const Color(0xFFDC9323),
                            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8),
                            ),
                          ),
                          child: const Text(
                            "View Packages",
                            style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 30),

              // 🍽️ About Us
              Row(
                children: const [
                  Icon(Icons.local_dining, color: Colors.brown),
                  SizedBox(width: 10),
                  Text(
                    "About Us",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              const Text(
                "Shree Bhog Caterers, led by Mr. Ramesh Verma, is a trusted name in the world of premium catering services in Hyderabad. With over 8 years of experience, "
                "we specialize in delivering delicious, hygienic, and well-presented food for all types of events – from intimate gatherings to grand celebrations.\n"
                "We are known for our authentic flavors, customized menus, and professional service that guarantees guest satisfaction.",
                style: TextStyle(height: 1.6),
              ),
              const SizedBox(height: 30),

              // 🧆 Our Specialties
              Row(
                children: const [
                  Icon(Icons.star, color: Colors.orange),
                  SizedBox(width: 10),
                  Text(
                    "Our Specialties",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("• ✅ South Indian Traditional Meals"),
                  Text("• ✅ North Indian Cuisine"),
                  Text("• ✅ Chinese & Continental Dishes"),
                  Text("• ✅ Pure Vegetarian Catering"),
                  Text("• ✅ Jain & Satvik Food Options"),
                  Text("• ✅ Live Food Counters"),
                  Text("• ✅ Buffet & Plated Service Options"),
                ],
              ),
              const SizedBox(height: 30),

              // 🎉 We Cater To
              Row(
                children: const [
                  Icon(Icons.celebration, color: Colors.purple),
                  SizedBox(width: 10),
                  Text(
                    "We Cater To",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("• Weddings & Receptions"),
                  Text("• Birthday Parties"),
                  Text("• Corporate Events & Office Gatherings"),
                  Text("• Housewarming Ceremonies"),
                  Text("• Religious Events & Poojas"),
                  Text("• Engagements & Baby Showers"),
                ],
              ),
              const SizedBox(height: 30),

              // 🧰 Additional Services
              Row(
                children: const [
                  Icon(Icons.build_circle, color: Colors.teal),
                  SizedBox(width: 10),
                  Text(
                    "Additional Services",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("• Buffet Setup"),
                  Text("• Professional Serving Staff"),
                  Text("• Live Counters"),
                  Text("• Crockery & Cutlery Arrangement"),
                  Text("• Event Décor & Floral Arrangements (On Request)"),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }





  
  Widget buildCustomerReviews(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 100, vertical: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            '⭐ Customer Reviews:',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 18,
            ),
          ),
          const SizedBox(height: 16),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              ReviewCard(),
              ReviewCard(),
            ],
          ),
        ],
      ),
    );
  }
  
}



class ReviewCard extends StatelessWidget {
  const ReviewCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      width: MediaQuery.of(context).size.width * 0.40,
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: const Color(0xFFFDF6E9),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              const CircleAvatar(
                radius: 30,
                backgroundImage: AssetImage('assets/images/catering6.png'), // Replace with your asset
              ),
              const SizedBox(width: 8),
              const Text(
                'Rekha',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
            ],
          ),
          const SizedBox(height: 12),
          const Text(
            'He Quality And Detail Are Amazing. It Truly Brings Peace To My Puja Room.',
            style: TextStyle(fontSize: 14, height: 1.4),
          ),
          const SizedBox(height: 12),
          Row(
            children: [
              Row(
                children: const [
                  Icon(Icons.star, color: Colors.amber, size: 20),
                  Icon(Icons.star, color: Colors.amber, size: 20),
                  Icon(Icons.star, color: Colors.amber, size: 20),
                  Icon(Icons.star, color: Colors.amber, size: 20),
                  Icon(Icons.star_border, color: Colors.amber, size: 20),
                ],
              ),
              const SizedBox(width: 8),
              const Text(
                '(4.6/5)',
                style: TextStyle(fontSize: 13, color: Colors.black87),
              ),
            ],
          )
        ],
      ),
    );
  }
}


