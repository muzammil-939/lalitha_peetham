import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:lalitha_peetham/screens/upcoming_poojas_screens/upcoming_pooja_layout.dart';
import 'package:lalitha_peetham/widgets/reusable_responsive_type_widget.dart';

class ViewDetailsTemplePage extends StatefulWidget {
  const ViewDetailsTemplePage({super.key});

  @override
  State<ViewDetailsTemplePage> createState() => _ViewDetailsTemplePageState();
}

class _ViewDetailsTemplePageState extends State<ViewDetailsTemplePage> {
  final List<Map<String, String>> services = [
    {
      "title": "Ganapati Homam",
      "subtitle": "For success and removal of obstacles",
      
    },
    {
      "title": "Sankatashara Chaturthi Pooja",
      "subtitle": "Monthly special pooja for obstacle removal"
    },
    {
      "title": "Vinayaka Chaturthi Special Pooja",
      "subtitle": "Festival ritual booking",
      'path':'/ganesh_chathuthi_pooja'
    },
    {
      "title": "Daily Archana",
      "subtitle": "Personalized name–based puja"
    },
    {
      "title": "Abhishekam",
      "subtitle": "Sacred bathing ceremony"
    },
  ];

  @override
  Widget build(BuildContext context,{String? path}) {
    bool isMobile = ResponsiveHelper.isMobile(context);
    bool isTablet = ResponsiveHelper.isTablet(context);
    
    return UpcomingPoojaLayout(
      child: SingleChildScrollView(
        padding:  EdgeInsets.symmetric(horizontal:isMobile ? 16 : isTablet ? 80 : 150),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 80,),
            // Temple Image
            Center(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Image.asset(
                  'assets/images/upcoming_poojas1.png', 
                  width: isMobile ? double.infinity : 600,
                  height: isMobile ? 200 : isTablet ? 300 : 450,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(height: 30),

            // Temple Name
            const Text(
              "Sri Siddhivinayak Temple",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),

            // Temple Description
            const Text(
              "Sri Siddhi Vinayaka Temple stands as a sacred space of devotion and divine energy. Dedicated to Lord Ganesha, the remover of obstacles, this temple draws devotees seeking wisdom, success, and inner peace. Visiting or performing rituals here is believed to bring spiritual upliftment and fulfilment of heartfelt wishes. The temple's serene atmosphere inspires faith, unity, and blessings in abundance for every worshipper.",
              style: TextStyle(fontSize: 14, color: Colors.black87, height: 1.4),
            ),
            const SizedBox(height: 20),

            // Services Title
            const Text(
              "Ganesha Services at Sri Siddhivinayak Temple",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 12),

            // Services List
            Container(
              decoration: BoxDecoration(
                color: const Color(0xFFFEFDF9),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Column(
                children: services.map((service) {
                  return Column(
                    children: [
                      ListTile(
                        contentPadding: const EdgeInsets.symmetric(
                            horizontal: 16, vertical: 4),
                        title: Text(
                          service["title"]!,
                          style: const TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        subtitle: Text(
                          service["subtitle"]!,
                          style: const TextStyle(
                            fontSize: 13,
                            color: Colors.brown,
                          ),
                        ),
                        trailing: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor:
                                const Color.fromARGB(255, 255, 242, 222),
                            foregroundColor: Colors.black,
                            padding: const EdgeInsets.symmetric(
                                horizontal: 20, vertical: 10),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8),
                            ),
                            elevation: 0,
                          ),
                         onPressed: () {
                              if (service["path"] != null) {
                                context.go(service["path"]!);
                              }
                            },

                          child: const Text(
                            "Book",
                            style: TextStyle(fontWeight: FontWeight.w500),
                          ),
                        ),
                      ),
                      if (service != services.last)
                        const Divider(height: 1, color: Colors.grey),
                    ],
                  );
                }).toList(),
              ),
            ),
            SizedBox(height: 80,)
          ],
        
        ),
      ),
    );
  }
}
