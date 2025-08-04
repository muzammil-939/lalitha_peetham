import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:lalitha_peetham/screens/online_vastu_property/astrologer_contact_section.dart';
import 'package:lalitha_peetham/screens/online_vastu_property/vastufaq_section_widget.dart';
import 'package:lalitha_peetham/screens/online_vastu_property/vastupooja_layout.dart';
import 'package:lalitha_peetham/widgets/modules_colors.dart';
import 'vastu_hero_section.dart';


class VastupoojaWelcomeScreen extends StatefulWidget {
  const VastupoojaWelcomeScreen({super.key});

  @override
  State<VastupoojaWelcomeScreen> createState() => _VastupoojaWelcomeScreenState();
}

class _VastupoojaWelcomeScreenState extends State<VastupoojaWelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return VastupoojaLayout(
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            VastuHeroSection(),
            SizedBox(height: 30),
            buildVastuInfoSection(),
            SizedBox(height: 40),
            buildVastuGuidelinesTable(),
            SizedBox(height: 40),
            buildInvatuPoojasection(),
            SizedBox(height: 80),
           AstrologerContactSection(),
           SizedBox(height: 40),
           AstrologerContactpersonSection(),
           SizedBox(height: 60),
           VastuFaqSection(),
          ],
        ),
      ),
    );
  }


Widget buildVastuInfoSection() {
  return SizedBox(
  height: 550,
  child: Stack(
    children: [
      Positioned.fill(
        child: Image.asset(
          'assets/images/vastupooja4.png',
          fit: BoxFit.cover,
        ),
      ),
    
        // Foreground content with padding
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 50.0, vertical: 30),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Left side image
              Expanded(
                flex: 1,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(0),
                  child: Image.asset(
                    'assets/images/vastupooja3.png',
                    height: 550,
                    width: 80,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              const SizedBox(width: 50),
    
              // Right side text
              Expanded(
                flex: 2,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      "UNLOCK THE\nENERGY FLOW:\nVASTU SIGNIFICANCE OF\nALL 8 DIRECTIONS",
                      style: TextStyle(
                        fontSize: 45,
                        fontWeight: FontWeight.bold,
                        height: 1.4,
                      ),
                    ),
                    SizedBox(height: 12),
                    Text(
                      "Each Direction In Vastu Carries A Unique Energy That Influences Your Space. "
                      "East Symbolizes Growth, North Attracts Wealth, South Offers Strength, "
                      "And West Brings Stability. During Vastu Pooja, These Directions Are Honored "
                      "To Balance Energies And Invite Harmony, Prosperity, And Peace Into The Environment.",
                      style: TextStyle(fontSize: 18, height: 1.6),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    ),
  );
}
Widget buildVastuGuidelinesTable() {
  final headerStyle = TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: 16,
    color: Colors.black,
  );

  final cellStyle = TextStyle(
    fontSize: 14,
    height: 1.5,
    color: Colors.black87,
  );

  final rows = [
    {
      "direction": "East",
      "element": "Air / Light",
      "deity": "Indra (King of Gods)",
      "significance": "New beginnings, growth, clarity",
      "impact": "Ideal for main entrance or pooja room; enhances spiritual energy and optimism"
    },
    {
      "direction": "West",
      "element": "Water",
      "deity": "Varuna (Water God)",
      "significance": "Stability, satisfaction",
      "impact": "Good for storage or study areas; needs balance to avoid lethargy"
    },
    {
      "direction": "North",
      "element": "Water",
      "deity": "Kubera (God of Wealth)",
      "significance": "Wealth, prosperity",
      "impact": "Best for cash rooms, living rooms, or business-related work"
    },
    {
      "direction": "South",
      "element": "Earth",
      "deity": "Yama (God of Death)",
      "significance": "Strength, discipline",
      "impact": "Suited for bedrooms; promotes stability; must be balanced in design to avoid heaviness"
    },
    {
      "direction": "Northeast",
      "element": "Water / Light",
      "deity": "Shiva (Supreme Being)",
      "significance": "Purity, wisdom, spirituality",
      "impact": "Most auspicious; perfect for pooja room, meditation space, or entrance"
    },
    {
      "direction": "Northwest",
      "element": "Air",
      "deity": "Vayu (Wind God)",
      "significance": "Movement, communication",
      "impact": "Ideal for guest rooms, promotes social harmony"
    },
    {
      "direction": "Southeast",
      "element": "Fire",
      "deity": "Agni (Fire God)",
      "significance": "Energy, transformation",
      "impact": "Best location for kitchen, enhances vitality"
    },
    {
      "direction": "Southwest",
      "element": "Earth",
      "deity": "Nirriti (Goddess of decay)",
      "significance": "Protection, grounding",
      "impact": "Strongest zone; good for master bedroom or heavy furniture placement"
    },
  ];

  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 32.0, vertical: 20),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "OUR ASTROLOGERS OFFER VASTU-BASED\nGUIDELINES TO HARMONIZE YOUR SPACE",
          style: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.bold,
            height: 1.4,
          ),
        ),
        const SizedBox(height: 20),
        Table(
          border: TableBorder.all(color: Colors.black),
          columnWidths: const {
            0: FlexColumnWidth(1.2),
            1: FlexColumnWidth(1.3),
            2: FlexColumnWidth(1.5),
            3: FlexColumnWidth(1.8),
            4: FlexColumnWidth(2.2),
          },
          children: [
            TableRow(
              decoration: BoxDecoration(color: NityapoojaColors.cards),
              children: [
                _buildCell("DIRECTION", headerStyle, isHeader: true),
                _buildCell("RULING ELEMENT", headerStyle, isHeader: true),
                _buildCell("PRESIDING DEITY", headerStyle, isHeader: true),
                _buildCell("SIGNIFICANCE IN VASTU", headerStyle, isHeader: true),
                _buildCell("IMPACT IN VASTU POOJA /\nDESIGN GUIDANCE", headerStyle, isHeader: true),
              ],
            ),
            for (var row in rows)
              TableRow(
                decoration: BoxDecoration(color: NityapoojaColors.cards),
                children: [
                  _buildCell(row["direction"]!, cellStyle),
                  _buildCell(row["element"]!, cellStyle),
                  _buildCell(row["deity"]!, cellStyle),
                  _buildCell(row["significance"]!, cellStyle),
                  _buildCell(row["impact"]!, cellStyle),
                ],
              ),
          ],
        ),
      ],
    ),
  );
}

Widget _buildCell(String text, TextStyle style, {bool isHeader = false}) {
  return Padding(
    padding: const EdgeInsets.all(12),
    child: Text(
      text,
      style: style,
    ),
  );
}
 
Widget buildInvatuPoojasection() {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 50.0),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const [
        Text(
          'In Vastu Pooja:',
          style: TextStyle(
            fontSize: 32,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 10),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("1. The Northeast Corner (Ishanya) Is The Most Sacred And Is Often The Focus Of Offerings And Rituals."),
            Text("2. Kalash And Idols Are Usually Placed Facing East Or Northeast."),
            Text("3. Priests May Begin Rituals Facing East To Align With Cosmic Energies."),
            Text("4. Each Direction Is Invoked And Purified Using Mantras And Offerings, To Harmonize The Space."),
          ],
        ),
        
      ],
    ),
  );
}

}


class AstrologerContactpersonSection extends StatelessWidget {
  AstrologerContactpersonSection({super.key});

  final List<Map<String, dynamic>> astrologers = [
    {
      "name": "Shreephari",
      "image": "assets/images/vastupooja7.png",
      "price": "\$34 / 3-4 MIN",
      "details": "Vedic, Numerology, Face Reading\nTelugu\nExp: 9 Years",
      "orders": "24541 Orders",
    },
    {
      "name": "Shreephari",
      "image": "assets/images/vastupooja7.png",
      "price": "\$34 / 3-4 MIN",
      "details": "Vedic, Numerology, Face Reading\nTelugu\nExp: 9 Years",
      "orders": "24541 Orders",
    },
    {
      "name": "SHREEHARI",
      "image": "assets/images/vastupooja7.png",
      "price": "\$34 / 3-4 MIN",
      "details": "Vedic, Numerology, Face Reading\nTelugu\nExp: 9 Years",
      "orders": "24541 Orders",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 50.0),
      child: Column(
        
        children: [
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Text(
              "“LET OUR ASTROLOGERS GUIDE YOU WITH EXPERT VASTU POOJA SERVICES FOR A BALANCED AND PROSPEROUS SPACE.”",
              
              style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.bold,
                letterSpacing: 0.5,
              ),
            ),
          ),
          const SizedBox(height: 30),
          SizedBox(
            height: 350, // Increased height to prevent overflow
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              padding: const EdgeInsets.symmetric(horizontal: 24),
              itemCount: astrologers.length,
              separatorBuilder: (_, __) => const SizedBox(width: 20),
              itemBuilder: (context, index) {
        final astro = astrologers[index];
        return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        CircleAvatar(
          radius: 45,
          backgroundImage: AssetImage(astro["image"]),
        ),
        const SizedBox(height: 6),
        const Icon(Icons.star_border, color: Colors.grey, size: 18),
        Text(
          astro["orders"],
          style: const TextStyle(fontSize: 12, color: Colors.grey),
        ),
        const SizedBox(height: 6),
        Text(
          astro["name"],
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 16,
            fontFamily: 'CinzelDecorative',
          ),
        ),
        Text(
          astro["price"],
          style: const TextStyle(
            color: Colors.red,
            fontWeight: FontWeight.bold,
            fontSize: 14,
          ),
        ),
        const SizedBox(height: 6),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Text(
            astro["details"],
            style: const TextStyle(fontSize: 12, height: 1.4),
            textAlign: TextAlign.center,
          ),
        ),
        const SizedBox(height: 10),
        ElevatedButton(
          onPressed: () {
            context.go('/vastu_expert');
          },
          style: ElevatedButton.styleFrom(
            backgroundColor: index == 0 ? Colors.orange : Colors.transparent,
            foregroundColor: Colors.black,
            side: const BorderSide(color: Colors.orange),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 6),
            elevation: 0,
          ),
          child: const Text("Contact"),
        ),
      ],
        );
      }      
            ),
          ),
          const SizedBox(height: 16),
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.circle, size: 10, color: Colors.orange),
              SizedBox(width: 6),
              Icon(Icons.circle_outlined, size: 10, color: Colors.black),
              SizedBox(width: 6),
              Icon(Icons.circle_outlined, size: 10, color: Colors.black),
            ],
          ),
          const SizedBox(height: 12),
          TextButton(
            onPressed: () {},
            child: const Text("View all", style: TextStyle(color: Colors.black)),
          ),
        ],
      ),
    );
  }
}



