
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class AstrologersCards extends StatelessWidget {
   AstrologersCards({super.key});
  final List<Map<String, dynamic>> astrologers = [
    {
      "name": "SHREEHARI",
      "image": "assets/images/vastupooja7.png",
      "price": "\$34.43",
      "exp": "Exp: 9 Years",
      "orders": "24541 Orders",
    },
    {
      "name": "THEIVANAIN",
      "image": "assets/images/vastupooja7.png",
      "price": "\$65.93",
      "exp": "Exp: 5 Years",
      "orders": "24541 Orders",
    },
    {
      "name": "PARAMDHAMAN",
      "image": "assets/images/vastupooja7.png",
      "price": "\$52.75",
      "exp": "Exp: 12 Years",
      "orders": "24541 Orders",
    },
    {
      "name": "SHREEHARI",
      "image": "assets/images/vastupooja7.png",
      "price": "\$34.43",
      "exp": "Exp: 9 Years",
      "orders": "24541 Orders",
    },
    {
      "name": "THEIVANAIN",
      "image": "assets/images/vastupooja7.png",
      "price": "\$65.93",
      "exp": "Exp: 5 Years",
      "orders": "24541 Orders",
    },
    {
      "name": "PARAMDHAMAN",
      "image": "assets/images/vastupooja7.png",
      "price": "\$52.75",
      "exp": "Exp: 12 Years",
      "orders": "24541 Orders",
    },
  ];

  

  @override
  Widget build(BuildContext context) {
    double cardWidth = MediaQuery.of(context).size.width / 3.5;

    return  Stack(
    children: [
      // 🌄 Background Image
      Positioned(
        top: 0,
        left: 0,
        child: SizedBox(
          height: 350,
          width: 1500,
          child: Image.asset(
            'assets/images/vastupooja4.png',
            fit: BoxFit.cover,
          ),
        ),
      ),

      // 🪐 Planet Image
      Positioned(
        top: 40,
        right: 30,
        child: Image.asset(
          'assets/images/vastupooja11.png',
          height: 60,
          width: 60,
        ),
      ),
    Padding(
      padding: const EdgeInsets.symmetric(horizontal: 50),
      child: Column(
        children: [
          SizedBox(height: 80,),

        
          const Text(
            "Your Secure Astrology Connection",
            textAlign: TextAlign.start,
            style: TextStyle(
              fontSize: 45,
              fontWeight: FontWeight.bold,
              
            ),
          ),
          const SizedBox(height: 24),
         Row(
           children: [
             Expanded(
               child: Wrap(
                spacing: 16,
                runSpacing: 16,
                children: astrologers.map((astro) {
                  return Container(
                    width: cardWidth,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(16),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black12,
                          blurRadius: 6,
                          offset: Offset(0, 3),
                        ),
                      ],
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        // Bookmark icon
                        Padding(
                          padding: const EdgeInsets.only(top: 8, right: 8),
                          child: Align(
                            alignment: Alignment.topRight,
                            child: Icon(Icons.bookmark_border, size: 18),
                          ),
                        ),
                       
                        // Profile image
                        CircleAvatar(
                          radius: 60,
                          backgroundImage: AssetImage(astro["image"]),
                        ),
                       
                        const SizedBox(height: 8),
                       
                        // Stars
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: List.generate(
                            5,
                            (index) => Icon(Icons.star, size: 16, color: Colors.amber),
                          ),
                        ),
                       
                        const SizedBox(height: 4),
                       
                        // Orders
                        Text(
                          astro["orders"],
                          style: TextStyle(fontSize: 12, color: Colors.grey.shade600),
                        ),
                       
                        const SizedBox(height: 6),
                       
                        // Name
                        Text(
                          astro["name"],
                          style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
                        ),
                       
                        // Price
                        Text(
                          "${astro["price"]} /min",
                          style: const TextStyle(color: Colors.red, fontSize: 14),
                        ),
                       
                        const SizedBox(height: 6),
                       
                        // Services
                        const Text(
                          "Vastu & Energy Balancing\nTelugu",
                          style: TextStyle(fontSize: 12),
                          textAlign: TextAlign.center,
                        ),
                       
                        // Experience
                        Text(
                          astro["exp"],
                          style: const TextStyle(fontSize: 12),
                        ),
                       
                        const SizedBox(height: 10),
                       
                        // Buttons row
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            ElevatedButton.icon(
                              icon: const Icon(Icons.message, size: 14),
                              label: const Text("Chat Now", style: TextStyle(fontSize: 12)),
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Color(0XFF7A7A7A),
                                foregroundColor: Colors.white,
                                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20),
                                ),
                              ),
                              onPressed: () {
                                context.go('/talk_to_astrologers');
                              },
                            ),
                            const SizedBox(width: 8),
                            ElevatedButton.icon(
                              icon: const Icon(Icons.call, size: 14),
                              label: const Text("Call Now", style: TextStyle(fontSize: 12)),
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Color(0xFF4B9643),
                                foregroundColor: Colors.white,
                                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20),
                                ),
                              ),
                              onPressed: () {
                                context.go('/astrologers_info_page');
                              },
                            ),
                            
                          ],
                        ),
                       
                        const SizedBox(height: 12),
                       
                        // Yellow bottom
                        Container(
                          height: 6,
                          decoration: const BoxDecoration(
                            color: Colors.amber,
                            borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(16),
                              bottomRight: Radius.circular(16),
                            ),
                          ),
                        ),
                      ],
                    ),
                  );
                }).toList(),
                       ),
             ),
           ],
         ),
        ]
      ),
    )
    ]
    );
  }
}