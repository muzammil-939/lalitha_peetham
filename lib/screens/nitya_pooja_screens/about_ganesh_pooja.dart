import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:lalitha_peetham/screens/nitya_pooja_screens/ganesh_faq_section_widget.dart';
import 'package:lalitha_peetham/screens/nitya_pooja_screens/niyapooja_contact_widget.dart';
import 'package:lalitha_peetham/screens/online_vastu_property/astrologer_contact_section.dart';
import 'package:lalitha_peetham/screens/online_vastu_property/vastupooja_layout.dart';

class AboutGaneshPooja extends StatefulWidget {
  const AboutGaneshPooja({super.key});

  @override
  State<AboutGaneshPooja> createState() => _AboutGaneshPoojaState();
}

class _AboutGaneshPoojaState extends State<AboutGaneshPooja> {
  @override
  Widget build(BuildContext context) {
    return VastupoojaLayout(
      child: SingleChildScrollView(
        child: Column(
          children: [
            buildherosection(),
           buildAboutGaneshContent( context),
            SizedBox(height: 50,),
            buildContent() ,
             SizedBox(height: 80,),
             NiyapoojaContactWidget(),
             SizedBox(height: 80,),
             GaneshaFaqWidget(),
             SizedBox(height: 80,),

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
                "Complete the payment to confirm your\nbooking",
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
  Widget buildAboutGaneshContent(BuildContext context) {
  return Stack(
    children: [
      // Background Image
      Positioned.fill(
        child: Image.asset(
          'assets/images/vastupooja4.png',
          fit: BoxFit.cover,
        ),
      ),
      // Optional Planet Image
      Positioned(
        top: 120,
        right: 30,
        child: Image.asset(
          'assets/images/vastupooja11.png',
          height: 100,
          width: 100,
        ),
      ),
      // Main Content
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 100.0, vertical: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(
                  'assets/images/online_pooja1.jpg',
                  height: 300,
                  width: 300,
                  fit: BoxFit.cover,
                ),
                const SizedBox(width: 20),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "The Power and Purpose of\nWorshipping Lord Ganesha",
                        style: TextStyle(
                          fontSize: 40,
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                      const SizedBox(height: 10),
                      Row(
                        children: const [
                          Icon(Icons.electric_bolt, size: 18, color: Colors.deepOrange),
                          SizedBox(width: 5),
                          Text(
                            "About Ganesh Puja",
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 12),
                      ElevatedButton(
                        onPressed: () {
                          context.go('/nityapooja_packages');
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Color(0xFFDC9323),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 10),
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
          ],
        ),
      ),
    ],
  );
}

Widget buildContent() {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 100.0),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "Ganesh Puja is a revered Hindu ritual dedicated to Lord Ganapati, the elephant-headed deity known as the remover of obstacles and lord of wisdom. Worshipped before all beginnings, Lord Ganapati symbolizes clarity, intellect, and success.",
          style: TextStyle(height: 1.6, fontSize: 14),
        ),
        const SizedBox(height: 30),

        // 🔶 Glimpse
        Row(
          children: const [
            Icon(Icons.visibility_outlined, color: Colors.brown),
            SizedBox(width: 8),
            Text(
              "A Glimpse Into Ganapati’s Glory",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            ),
          ],
        ),
        const SizedBox(height: 10),
        const Text(
          "Born of Goddess Parvati and brought to life with divine energy, Lord Ganapati is the guardian of new ventures and the guide for students, artists, and seekers. His presence is invoked at the start of any journey, ritual, or celebration.",
          style: TextStyle(height: 1.6, fontSize: 14),
        ),
        const SizedBox(height: 30),

        // 🔱 Core Rituals
        Row(
          children: const [
            Icon(Icons.auto_awesome, color: Colors.deepOrange),
            SizedBox(width: 8),
            Text(
              "Core Rituals In Ganesh Puja",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            ),
          ],
        ),
        const SizedBox(height: 10),
        const Text("• Pranapratishtha: Inviting Lord Ganapati into the idol."),
        const Text("• Shodashopachara: Sixteen-step worship with offerings and mantras."),
        const Text("• Ganapati Atharvashirsha: A sacred chant that invokes His grace."),
        const Text("• Modak Offering: His favorite sweet, offered with devotion."),
        const Text("• Visarjan: Immersing the idol in water, symbolizing release and renewal."),
        const SizedBox(height: 30),

        // 💡 Why It Matters
        Row(
          children: const [
            Icon(Icons.lightbulb_outline, color: Colors.amber),
            SizedBox(width: 8),
            Text(
              "Why Ganesh Puja Matters",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            ),
          ],
        ),
        const SizedBox(height: 10),
        const Text(
          "Removes obstacles in life and work. Boosts knowledge and memory for learners. Inspires creativity among artists and thinkers. Guides spiritual growth through devotion and reflection.",
          style: TextStyle(height: 1.6, fontSize: 14),
        ),
        const SizedBox(height: 30),

        // 🔴 Essence
        Row(
          children: const [
            Icon(Icons.stop_circle_outlined, color: Colors.red),
            SizedBox(width: 8),
            Text(
              "In Essence",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16, color: Colors.red),
            ),
          ],
        ),
        const SizedBox(height: 10),
        const Text(
          "Ganesh Puja is more than tradition—it’s a powerful spiritual connection. In His form, devotees find strength, wisdom, and the courage to begin anew. With His blessings, every path becomes clearer, every challenge more conquerable.",
          style: TextStyle(height: 1.6, fontSize: 14),
        ),
      ],
    ),
  );
}


}