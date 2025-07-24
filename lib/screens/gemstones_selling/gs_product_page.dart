import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:lalitha_peetham/screens/gemstones_selling/gs_contact_widget.dart';
import 'package:lalitha_peetham/screens/gemstones_selling/gs_related_products.dart';
import 'package:lalitha_peetham/screens/online_vastu_property/vastupooja_layout.dart';

class GsProductPage extends StatefulWidget {
  const GsProductPage({super.key});

  @override
  State<GsProductPage> createState() => _GsProductPageState();
}

class _GsProductPageState extends State<GsProductPage> {
  @override
  Widget build(BuildContext context) {
    return VastupoojaLayout(
      child: SingleChildScrollView(
        child: Column(
          children: [
            buildHeroSection(),
            buildProductCard(context),
            GsContactWidget(),
            SizedBox(height: 80,),
            GsRelatedProducts(),
            SizedBox(height: 80,),


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
              Text(
                "Menu",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
        Positioned(
          top: 120,
          child: Column(
            children: const [
              Text(
                "Bring Home Peace, Power & Positivity",
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
              'assets/images/gemstone7.png',
              height: 180,
              width: 280,
              fit: BoxFit.cover,
            ),
          ),
        )
      ],
    );
  }

  Widget buildProductCard(BuildContext context) {
  return Stack(
    children: [
      // Background Image
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
        top: 25,
        right: 30,
        child: Image.asset(
          'assets/images/vastupooja11.png',
          height: 60,
          width: 60,
        ),
      ),
      // Main Content
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 100.0, vertical: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "PRODUCT PAGE",
              style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold, color: Colors.black87),
            ),
            const SizedBox(height: 22),

            // Header Section: Image + Details
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Idol Image
                Container(
                width: 300,
                height: 250,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                       end: Alignment.bottomCenter,
                      colors: [
                        Color(0XFFFFFFFF),Color(0XFFEAC63E)
                      ]
                    ),
                    //border: Border.all(color: Colors.brown, width: 1.5),
                    borderRadius: BorderRadius.circular(0),
                  ),
                  child: Center(
                    child: SizedBox(
                      height: 200,
                      width: 150,
                      child: Image.asset(
                        'assets/images/gemstone3.png', // Replace with actual idol image path
                        height: 20,
                        width: 10,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 20),
                // Product Details
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "🛕 Product Name: Lord Durga Idol",
                        style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Colors.brown),
                      ),
                      const Text(
                        "Divine Blessings – Lord Durga Brass Idol",
                        style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                      ),
                      const SizedBox(height: 12),
                      RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                                text: "💰 Price: ₹1,249  ",
                                style: TextStyle(fontSize: 18, color: Colors.black, fontWeight: FontWeight.bold)),
                            TextSpan(
                                text: "₹1,499",
                                style: TextStyle(fontSize: 16, color: Colors.grey, decoration: TextDecoration.lineThrough)),
                            TextSpan(
                                text: "  (You Save ₹250)",
                                style: TextStyle(fontSize: 14, color: Colors.green)),
                          ],
                        ),
                      ),
                      Text('(Inclusive of all taxes)'),
                      const SizedBox(height: 6),
                      Row(
                        children: [
                          ElevatedButton(
                            onPressed: () {
                              context.go('/gemstone_add_to_cart');
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.white,
                              padding: EdgeInsets.symmetric(horizontal: 24, vertical: 10),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(6)),
                            ),
                            child: const Text(
                              "Add To Cart",
                              style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
                            ),
                          ),
                          const SizedBox(width: 15),
                          ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Color(0xFFEDCD54),
                              padding: EdgeInsets.symmetric(horizontal: 24, vertical: 10),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(6)),
                            ),
                            child: const Text(
                              "Buy",
                              style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 24),

            // Product Highlights
            Row(
              children: const [
                Icon(Icons.star, color: Colors.orange),
                SizedBox(width: 10),
                Text(
                  "Product Highlights",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            const SizedBox(height: 10),
            const Text(
              "• Material: Pure Brass With Antique Finish\n"
              "• Height: 7 inches | Width: 4.5 inches | Weight: 1.2 Kg\n"
              "• Handcrafted by Skilled Artisans in India\n"
              "• Ideal For Home Temple, Office Desk, Or Gifting\n"
              "• Comes With A Velvet Gift Box And Care Instructions\n"
              "• Vastu & Feng Shui Compliant",
              style: TextStyle(fontSize: 15, height: 1.5),
            ),
            const SizedBox(height: 22),

            // Description
            Row(
              children: const [
                Icon(Icons.info_outline, color: Colors.blue),
                SizedBox(width: 10),
                Text(
                  "Description",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            const SizedBox(height: 10),
            const Text(
              "Invite divine energy into your space with this beautifully crafted Lord Ganesh Brass Idol from the Divine Blessings Collection. Designed with intricate detailing and a rustic antique finish, this idol embodies wisdom, prosperity, and the remover of obstacles. Whether you’re starting a new venture, setting up a prayer corner, or looking for a spiritual gift, this piece adds grace and serenity to any setting.",
              style: TextStyle(fontSize: 15, height: 1.6),
            ),
            const SizedBox(height: 22),

            // Benefits
            Row(
              children: const [
                Icon(Icons.favorite, color: Colors.pink),
                SizedBox(width: 10),
                Text(
                  "Benefits",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            const SizedBox(height: 10),
            const Text(
              "• Enhances Positive Energy In Your Home\n"
              "• Symbol Of Intellect and Wealth\n"
              "• Perfect For Ganesh Chaturthi, Housewarmings, And Wedding Gifts",
              style: TextStyle(fontSize: 15, height: 1.5),
            ),
            const SizedBox(height: 22),

            // Also Available
            Row(
              children: const [
                Icon(Icons.shopping_cart, color: Colors.green),
                SizedBox(width: 10),
                Text(
                  "Also Available",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            const SizedBox(height: 10),
            const Text(
              "• Framed Gold Posters (12x8 Inch) – ₹890\n"
              "• Wooden Photo Frame Of Lord Krishna With Flute – ₹899\n"
              "• Marble Lakshmi-Ganesh Pair Idol Set – ₹2,499",
              style: TextStyle(fontSize: 15, height: 1.5),
            ),
            const SizedBox(height: 22),

            // Delivery & Returns
            Row(
              children: const [
                Icon(Icons.local_shipping, color: Colors.amber),
                SizedBox(width: 10),
                Text(
                  "Delivery & Returns",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            const SizedBox(height: 10),
            const Text(
              "• Free Delivery On Orders Above ₹999\n"
              "• Estimated Delivery: 3–5 Working Days\n"
              "• 7-Day Easy Return\n"
              "• Cash On Delivery & Online Payment Available",
              style: TextStyle(fontSize: 15, height: 1.5),
            ),
            const SizedBox(height: 22),

            // Customer Reviews
            Row(
              children: const [
                Icon(Icons.comment, color: Colors.brown),
                SizedBox(width: 10),
                Text(
                  "Customer Reviews:",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            const SizedBox(height: 12),
            Row(
              children: [
                // Review Card 1
                Expanded(
                  child: Container(
                    padding: const EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      color: Color(0xFFF7F0D3),
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(color: Colors.yellow.shade800, width: 0.6),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text("Rekha", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
                        SizedBox(height: 4),
                        Text(
                          "The Quality And Detail Are Amazing. It Truly Brings Peace To My Puja Room.",
                          style: TextStyle(fontSize: 15),
                        ),
                        SizedBox(height: 5),
                        Row(
                          children: [
                            Icon(Icons.star, color: Colors.orange, size: 20),
                            Icon(Icons.star, color: Colors.orange, size: 20),
                            Icon(Icons.star, color: Colors.orange, size: 20),
                            Icon(Icons.star, color: Colors.orange, size: 20),
                            Icon(Icons.star_half, color: Colors.orange, size: 20),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(width: 15),
                // Review Card 2
                Expanded(
                  child: Container(
                    padding: const EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      color: Color(0xFFF7F0D3),
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(color: Colors.yellow.shade800, width: 0.6),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text("Rekha", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
                        SizedBox(height: 4),
                        Text(
                          "The Quality And Detail Are Amazing. It Truly Brings Peace To My Puja Room.",
                          style: TextStyle(fontSize: 15),
                        ),
                        SizedBox(height: 5),
                        Row(
                          children: [
                            Icon(Icons.star, color: Colors.orange, size: 20),
                            Icon(Icons.star, color: Colors.orange, size: 20),
                            Icon(Icons.star, color: Colors.orange, size: 20),
                            Icon(Icons.star, color: Colors.orange, size: 20),
                            Icon(Icons.star_half, color: Colors.orange, size: 20),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 80),
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
              fontSize: 28,
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

