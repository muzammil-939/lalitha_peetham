import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:lalitha_peetham/screens/online_vastu_property/vastupooja_layout.dart';
import 'package:lalitha_peetham/widgets/reusable_responsive_type_widget.dart';

class OnlinePoojaSupportSection extends StatefulWidget {
  const OnlinePoojaSupportSection({super.key});

  @override
  State<OnlinePoojaSupportSection> createState() => _OnlinePoojaSupportSectionState();
}

class _OnlinePoojaSupportSectionState extends State<OnlinePoojaSupportSection> with SingleTickerProviderStateMixin{

    late TabController _tabController;

final TextEditingController fullNameController = TextEditingController();
final TextEditingController emailController = TextEditingController();
final TextEditingController issueController = TextEditingController();
final TextEditingController commentController = TextEditingController();
bool isChatSelected = true;


  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return VastupoojaLayout(
      child: SingleChildScrollView(
        child: Column(
          children: [
            buildherosection(),
            buildYourScheduledAndCmpltPoojas(context),
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


  Widget buildYourScheduledAndCmpltPoojas(BuildContext context) {
  final isMobile = ResponsiveHelper.isMobile(context);
  final isTablet = ResponsiveHelper.isTablet(context);
  final isDesktop = ResponsiveHelper.isDesktop(context);

  double horizontalPadding = isMobile ? 16 : isTablet ? 50 : 150;
  double topPlanet = isMobile ? 60 : isTablet ? 90 : 120;
  double planetSize = isMobile ? 60 : isTablet ? 80 : 100;
  double titleFontSize = isMobile ? 18 : isTablet ? 24 : 32;
  double spacing = isMobile ? 16 : 30;

  return Stack(
    children: [
      // Background
      Positioned.fill(
        child: Image.asset(
          'assets/images/vastupooja4.png',
          fit: BoxFit.cover,
        ),
      ),

      // Planet
      Positioned(
        top: topPlanet,
        right: 30,
        child: Image.asset(
          'assets/images/vastupooja11.png',
          height: planetSize,
          width: planetSize,
        ),
      ),

      // Content
      Padding(
        padding: EdgeInsets.symmetric(horizontal: horizontalPadding, vertical: 25),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: spacing),
              Text(
                "ACCESS THE FULL LIST OF YOUR SCHEDULED AND\nCOMPLETED POOJAS",
                style: TextStyle(
                  fontSize: titleFontSize,
                  fontWeight: FontWeight.w900,
                ),
              ),
              SizedBox(height: spacing),
              Wrap(
                spacing: 12,
                runSpacing: 12,
                children: [
                  buildButton("My Bookings", isActive: false),
                  buildButton("Payments", isActive: false),
                  buildButton("Support", isActive: true),
                ],
              ),
              SizedBox(height: spacing),
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: const Color(0xFFEAC63E),
                  borderRadius: BorderRadius.circular(6),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(24),
                  child: buildSupportTabs(context),
                ),
              ),
            ],
          ),
        ),
      ),
    ],
  );
}



  Widget buildButton(String label, {bool isActive = false}) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 10),
      decoration: BoxDecoration(
        color: isActive ? Colors.white : Colors.grey.shade300,
        borderRadius: BorderRadius.circular(6),
        border: isActive
            ? Border.all(color: Colors.grey.shade300)
            : Border.all(color: Colors.transparent),
      ),
      child: Text(
        label,
        style: TextStyle(
          fontWeight: FontWeight.w500,
          color: isActive ? Colors.black : Colors.black87,
        ),
      ),
    );
  }
  
Widget buildChatSupportForm(BuildContext context)  {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
     

      // Description
      const Text(
        "Upload A Screenshot And Write Your Problem Below – You’ll Be Redirected To Chat Support",
        style: TextStyle(
          fontSize: 13,
          fontWeight: FontWeight.w400,
        ),
      ),
      const SizedBox(height: 25),

      // Full Name & Email
      Row(
        children: [
          Expanded(
            child: TextField(
              controller: fullNameController,
              decoration: const InputDecoration(
                labelText: 'Full Name',
                filled: true,
                fillColor: Color(0xFFD9D9D9),
                border: InputBorder.none,
              ),
            ),
          ),
          const SizedBox(width: 20),
          Expanded(
            child: TextField(
              controller: emailController,
              decoration: const InputDecoration(
                labelText: 'Email',
                filled: true,
                fillColor: Color(0xFFD9D9D9),
                border: InputBorder.none,
              ),
            ),
          ),
        ],
      ),

      const SizedBox(height: 20),

      // Issue Section & Upload
      Row(
        children: [
          Expanded(
            child: TextField(
              controller: issueController,
              decoration: const InputDecoration(
                labelText: 'Issue Section',
                filled: true,
                fillColor: Color(0xFFD9D9D9),
                border: InputBorder.none,
              ),
            ),
          ),
          const SizedBox(width: 20),
         Expanded(child: uploadBox()),
        ],
      ),

      const SizedBox(height: 20),

      // Comment
      TextField(
        controller: commentController,
        maxLines: 3,
        decoration: const InputDecoration(
          labelText: 'Comment',
          filled: true,
          fillColor: Color(0xFFD9D9D9),
          border: InputBorder.none,
        ),
      ),

      const SizedBox(height: 30),

      // Submit Button
      Align(
        alignment: Alignment.center,
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: Color(0xFFFFFFFF),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30),
            ),
            padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 12),
          ),
          onPressed: () {
            // TODO: Submit logic
            context.go('/pooja_service_confirm_page');
          },
          child: const Text(
            "Submit",
            style: TextStyle(
              fontSize: 18,
              color: Colors.black,
            ),
          ),
        ),
      ),
    ],
  );
}
Widget buildSupportTabs(BuildContext context) {
  final isMobile = ResponsiveHelper.isMobile(context);
  final spacing = isMobile ? 12.0 : 20.0;

  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Row(
        children: [
          GestureDetector(
            onTap: () => setState(() => isChatSelected = true),
            child: Text(
              "Chat support",
              style: TextStyle(
                fontSize: isMobile ? 12 : 14,
                fontWeight: FontWeight.w500,
                decoration: isChatSelected ? TextDecoration.underline : null,
              ),
            ),
          ),
          SizedBox(width: spacing),
          GestureDetector(
            onTap: () => setState(() => isChatSelected = false),
            child: Text(
              "Faq's support",
              style: TextStyle(
                fontSize: isMobile ? 12 : 14,
                fontWeight: FontWeight.w500,
                decoration: !isChatSelected ? TextDecoration.underline : null,
              ),
            ),
          ),
        ],
      ),
      SizedBox(height: spacing),
      isChatSelected ? buildChatSupportForm(context) : buildFaqSupportList(context),
    ],
  );
}

Widget buildFaqSupportList(BuildContext context) {
  final List<String> faqQuestions = [
    "Can I change the location after booking?",
    "What payment methods do you accept?",
    "Is there an extra charge for travel?",
    "Can I book a pandit offline?",
    "Do you provide samagri (puja materials)?",
    "How much should I pay in advance?",
    "Will I get a confirmation after booking?",
    "Can I cancel or reschedule my booking?",
    "What languages do your pandits speak?",
    "Do you have experienced and certified pandits?",
  ];

  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      const Text(
        "FAQ",
        style: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.bold,
        ),
      ),
      const SizedBox(height: 6),
      const Text(
        "Got questions? I’ve got answers!",
        style: TextStyle(
          fontSize: 15,
          fontWeight: FontWeight.w600,
        ),
      ),
      const SizedBox(height: 25),
      ...faqQuestions.map(
        (question) => Padding(
          padding: const EdgeInsets.only(bottom: 12.0),
          child: ExpansionTile(
            backgroundColor: const Color(0xFFD9D9D9),
            collapsedBackgroundColor: const Color(0xFFD9D9D9),
            tilePadding: const EdgeInsets.symmetric(horizontal: 12),
            childrenPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
            title: Text(
              question,
              style: const TextStyle(fontSize: 14),
            ),
            children: const [
              Text(
                'This is a sample answer. Replace with your actual FAQ answer.',
                style: TextStyle(fontSize: 13),
              ),
            ],
          ),
        ),
      )
    ],
  );
}

Widget uploadBox() {
  return GestureDetector(
    onTap: () {
      // TODO: Add image picker logic
    },
    child: Container(
      height: 50,
      decoration: BoxDecoration(
        color: const Color(0xFFD9D9D9),
        borderRadius: BorderRadius.circular(4),
      ),
      child: const Center(
        child: Icon(Icons.add_circle_outline),
      ),
    ),
  );
}

}