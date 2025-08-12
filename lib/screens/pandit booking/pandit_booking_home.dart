import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:lalitha_peetham/screens/pandit%20booking/pandit_booking_layout.dart';
import 'package:lalitha_peetham/screens/pandit%20booking/pandith_contact_section.dart';
import 'package:lalitha_peetham/screens/pandit%20booking/pandit_booking_expert_card.dart';
import 'package:lalitha_peetham/widgets/reusable_responsive_type_widget.dart';

class PanditBookingHome extends StatefulWidget {
  const PanditBookingHome({super.key});

  @override
  State<PanditBookingHome> createState() => _PanditBookingHomeState();
}

class _PanditBookingHomeState extends State<PanditBookingHome> {

String selectedPooja = 'Select pooja';

  @override
  Widget build(BuildContext context) {
    final isMobile = ResponsiveHelper.isMobile(context);

    return PanditBookingLayout(
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: isMobile ? 40 : 80),

            Padding(
              padding: EdgeInsets.symmetric(horizontal: isMobile ? 16 : 32),
              child: Column(
                children: [
                  
      Text(
        "Explore a Curated Collection of Poojas for Every Special\nOccasion and Spiritual Need",
        textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: isMobile ? 20 : 32,
          fontWeight: FontWeight.bold,
          height: 1.3,
        ),
      ),
      SizedBox(height: isMobile ? 30 : 50),
                   // ✅ Replaced search bar
      Align(
        alignment: Alignment.center,
        child: Container(
          width: isMobile ? double.infinity : 250,
          padding: const EdgeInsets.symmetric(horizontal: 16),
          decoration: BoxDecoration(
            color: Color(0xFFCBCBCB),
            
            borderRadius: BorderRadius.circular(10),
          ),
          child: DropdownButtonHideUnderline(
            child: DropdownButton<String>(
              value: selectedPooja,
              dropdownColor: Color(0xFFCBCBCB),
              icon: const Icon(Icons.arrow_drop_down),
              style: const TextStyle(color: Colors.black),
              items: ['Select pooja', 'Satyanarayana varatham', 'Gruha pradesham',
               'Vivaham','Namakarannam','Bhumi pooja','New shop opening','Rudrabi seham']
                  .map((pooja) => DropdownMenuItem(
                        value: pooja,
                        child: Text(pooja),
                      ))
                  .toList(),
              onChanged: (value) {
                setState(() {
                  selectedPooja = value!;
                });
              },
            ),
          ),
        ),
      ),
      SizedBox(height: isMobile ? 30 : 50),


                  

                  
                ],
              ),
            ),
            buildPoojaPackageSelectionPage(context),
            SizedBox(height: isMobile ? 50 : 100),

            PandithContactSection(),

            SizedBox(height: isMobile ? 50 : 100),

            PanditBookingExpertCard(),

            SizedBox(height: isMobile ? 50 : 100),
          ],
        ),
      ),
    );
  }
Widget buildPoojaPackageSelectionPage(BuildContext context) {
  final isMobile = ResponsiveHelper.isMobile(context);
  final isTablet = ResponsiveHelper.isTablet(context);

  return Center(
    child: SingleChildScrollView(
      padding: EdgeInsets.symmetric(horizontal: isMobile ? 16 : 40, vertical: 40),
      child: Column(
        children: [
          const SizedBox(height: 20),         
  
          // 🕉️ Title + Button
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                "Satyanarayana pooja Package",
                style: TextStyle(
                  fontSize: isMobile ? 18 : 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFFDC9323),
                  padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
                ),
                child: const Text(
                  "View Pooja Details",
                  style: TextStyle(color: Colors.black),
                ),
              )
            ],
          ),
  
          const SizedBox(height: 30),
  
          // 📦 Package Cards
        Container(
                width: isMobile
                    ? double.infinity
                    : isTablet
                        ? 600
                        : 800,
                padding: const EdgeInsets.all(30),
                decoration: BoxDecoration(
                  color: const Color(0xFFFFDD66),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Column(
                  children: [
                    Wrap(
                      alignment: WrapAlignment.center,
                      spacing: 20,
                      runSpacing: 20,
                      children: [
                        _buildServiceCard1Responsive(context,
                          title: "Pradhamam Satyanarayana pooja Package",
                          price: "₹1199",
                          features: [
                            "Palm reading for two people",
                            "Relationship compatibility analysis",
                            "Love and marriage prediction",
                            "Suggestive remedies",
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(height: 20),
                    Wrap(
                      alignment: WrapAlignment.center,
                      spacing: 20,
                      runSpacing: 20,
                      children: [
                        _buildServiceCardResponsive(context,
                          title: "Poojyam Satyanarayana pooja Package",
                          price: "₹199",
                          features: [
                            "Single palm analysis (left or right)",
                            "Lifeline, heart line, brain line reading",
                            "Basic personality overview",
                          ],
                        ),
                        _buildServiceCardResponsive(context,
                          title: "Sampujyam Satyanarayana pooja Package",
                          price: "₹399",
                          features: [
                            "Analysis of both hands",
                            "Life, career, and relationship insights",
                            "Future predictions (short-term)",
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(height: 20),
                    Wrap(
                      alignment: WrapAlignment.center,
                      spacing: 20,
                      runSpacing: 20,
                      children: [
                        _buildServiceCardResponsive(context,
                          title: "Poornam Satyanarayana pooja Package",
                          price: "₹699",
                          features: [
                            "Detailed reading of all 7 major lines",
                            "Personality, health, career, love, and finance",
                            "Hand shape & element type",
                            "PDF report included",
                          ],
                        ),
                        _buildServiceCardResponsive(context,
                          title: "Paripoornam Satyanarayana pooja ",
                          price: "₹999",
                          features: [
                            "One-on-one live session with expert",
                            "Complete palm analysis + Q&A",
                            "Remedies & tips for challenges",
                            "Personalized 15–20 min video call",
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
          const SizedBox(height: 60),
        ],
      ),
    ),
  );
}

Widget _buildServiceCardResponsive(
  BuildContext context, {
  required String title,
  required String price,
  required List<String> features,
}) {
  final isMobile = ResponsiveHelper.isMobile(context);

  return Container(
    height: isMobile ? 360 : 400,
    width: isMobile ? double.infinity : 280,
    padding: const EdgeInsets.all(20),
    decoration: BoxDecoration(
      color: Colors.white,
      boxShadow: [
        BoxShadow(
          color: Colors.black.withOpacity(0.1),
          blurRadius: 8,
          offset: const Offset(0, 4),
        ),
      ],
    ),
    child: _buildCardContent(title, price, features, context),
  );
}

Widget _buildServiceCard1Responsive(
  BuildContext context, {
  required String title,
  required String price,
  required List<String> features,
}) {
  final isMobile = ResponsiveHelper.isMobile(context);

  return Container(
    height: isMobile ? 350 : 350,
    width: isMobile ? double.infinity : 450,
    padding: const EdgeInsets.all(20),
    decoration: BoxDecoration(
      color: Colors.white,
      boxShadow: [
        BoxShadow(
          color: Colors.black.withOpacity(0.1),
          blurRadius: 8,
          offset: const Offset(0, 4),
        ),
      ],
    ),
    child: _buildCardContent(title, price, features, context),
  );
}
Widget _buildCardContent(String title, String price, List<String> features, BuildContext context) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.center,
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
      Text(
        title,
        style: const TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.w600,
          color: Colors.black87,
        ),
        textAlign: TextAlign.center,
      ),
      const SizedBox(height: 8),
      Container(width: double.infinity, height: 1, color: Colors.black),
      const SizedBox(height: 16),
      Text(
        price,
        style: const TextStyle(
          fontSize: 24,
          fontWeight: FontWeight.bold,
          color: Color(0xFFE6B800),
        ),
      ),
      const SizedBox(height: 20),
      ...features.asMap().entries.map((entry) {
        int index = entry.key + 1;
        String feature = entry.value;
        return Padding(
          padding: const EdgeInsets.only(bottom: 12),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "$index. ",
                style: const TextStyle(
                  fontSize: 14,
                  color: Colors.black87,
                  fontWeight: FontWeight.w500,
                ),
              ),
              Expanded(
                child: Text(
                  feature,
                  style: const TextStyle(
                    fontSize: 14,
                    color: Colors.black87,
                    height: 1.4,
                  ),
                ),
              ),
            ],
          ),
        );
      }).toList(),
      const SizedBox(height: 24),
      SizedBox(
        width: double.infinity,
        child: ElevatedButton(
          onPressed: () {
            context.go('/pandit_booking_form');
            print("Booking $title service");
          },
          style: ElevatedButton.styleFrom(
            backgroundColor: const Color(0xFFF5C761),
            foregroundColor: Colors.white,
            padding: const EdgeInsets.symmetric(vertical: 14),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ),
            elevation: 2,
          ),
          child: const Text(
            "Book now",
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
          ),
        ),
      ),
    ],
  );
}

  Widget _buildSearchBar(BuildContext context) {
    final isMobile = ResponsiveHelper.isMobile(context);
    return Container(
      height: 50,
      width: isMobile ? double.infinity : 350,
      decoration: BoxDecoration(
        color: const Color(0xFFB8B8B8),
        borderRadius: BorderRadius.circular(25),
      ),
      child: Row(
        children: [
          const Padding(
            padding: EdgeInsets.only(left: 20),
            child: Text(
              "Search pooja's",
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          const Spacer(),
          const Padding(
            padding: EdgeInsets.only(right: 15),
            child: Icon(Icons.search, color: Colors.black),
          ),
        ],
      ),
    );
  }
}