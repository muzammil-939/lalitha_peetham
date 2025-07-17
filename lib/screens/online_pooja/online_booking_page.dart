import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:lalitha_peetham/screens/online_vastu_property/vastupooja_layout.dart';

class OnlineBookingPage extends StatefulWidget {
  const OnlineBookingPage({super.key});

  @override
  State<OnlineBookingPage> createState() => _OnlineBookingPageState();
}

class _OnlineBookingPageState extends State<OnlineBookingPage> {
  // TextControllers (for plain fields)
  final TextEditingController gotraController = TextEditingController();
  final TextEditingController membersController = TextEditingController();
  final TextEditingController dateController = TextEditingController();
  final TextEditingController timeController = TextEditingController();
  final TextEditingController nameController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController additionalInfoController = TextEditingController();
  final TextEditingController poojaCostController = TextEditingController();
  final TextEditingController addonCostController = TextEditingController();
  final TextEditingController streamCostController = TextEditingController();
  final TextEditingController totalCostController = TextEditingController();

  // Dropdown State Variables
  String? selectedPoojaName;
  String? selectedOccasion;
  String? selectedDeity;
  String? selectedPurpose;
  String? selectedLanguage;
  String? selectedRitualType;
  String? selectedOfferingItem;
  String? selectedStreaming;
  String? selectedPlatform;

  @override
  Widget build(BuildContext context) {
    return VastupoojaLayout(
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            buildherosection(),
            buildContentSection(),
            const SizedBox(height: 30),
            
            buildTwoColumnDropdownRow(
              "Pooja Name", selectedPoojaName, ["Satyanarayan", "Lakshmi Pooja"],
              (val) => setState(() => selectedPoojaName = val),
              "Occasion", selectedOccasion, ["House Warming", "Birthday"],
              (val) => setState(() => selectedOccasion = val),
            ),
            buildTwoColumnDropdownRow(
              "Deity", selectedDeity, ["Lord Vishnu", "Ganesha"],
              (val) => setState(() => selectedDeity = val),
              "Purpose", selectedPurpose, ["Well-being", "Prosperity"],
              (val) => setState(() => selectedPurpose = val),
            ),
            buildTwoColumnDropdownRow(
              "Language", selectedLanguage, ["Telugu", "Hindi"],
              (val) => setState(() => selectedLanguage = val),
              "Ritual Type", selectedRitualType, ["Simple", "Elaborate"],
              (val) => setState(() => selectedRitualType = val),
            ),
            const SizedBox(height: 20),
            buildSectionTitle("Sankalp Details"),
            buildTwoColumnRow("Gotra", gotraController, "Family Members (Optional)", membersController),
            const SizedBox(height: 20),
            buildSectionTitle("Pick Date & Time"),
            buildTwoColumnRow("Date", dateController, "Time", timeController),
            const SizedBox(height: 20),
            buildSectionTitle("Add Offerings (Optional)"),
            buildTwoColumnDropdownRow(
              "Items", selectedOfferingItem, ["Fruits", "Flowers"],
              (val) => setState(() => selectedOfferingItem = val),
              "Live Streaming Options", selectedStreaming, ["Yes", "No"],
              (val) => setState(() => selectedStreaming = val),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 100.0, vertical: 12),
              child: Row(
                children: [
                  const Spacer(),
                  Expanded(
                    flex: 1,
                    child: buildDropdownField(
                      "Choose Platform",
                      selectedPlatform,
                      ["Zoom", "Google Meet"],
                      (val) => setState(() => selectedPlatform = val),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            buildContactInfoSection(),
            const SizedBox(height: 20),
            buildSectionTitle("Additional Information"),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 100.0, vertical: 12),
              child: TextFormField(
                controller: additionalInfoController,
                maxLines: 3,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  filled: true,
                  fillColor: Color(0xFFF1F1F1),
                ),
              ),
            ),
            buildSectionTitle("Payment Summary"),
            buildTwoColumnRow("Pooja Charges", poojaCostController, "Offerings Add-On", addonCostController),
            buildTwoColumnRow("Streaming Option", streamCostController, "Total Cost", totalCostController),
            const SizedBox(height: 30),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 100.0),
              child: Align(
                alignment: Alignment.bottomRight,
                child: ElevatedButton(
                  onPressed: () {
                    context.go('/pooja_summary');
                  },
                  style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.black,
                    backgroundColor: const Color(0xFFDC9323),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                    padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 16),
                  ),
                  child: const Text("Book Now", style: TextStyle(fontSize: 18)),
                ),
              ),
            ),
            const SizedBox(height: 80),
          ],
        ),
      ),
    );
  }

  // Shared Widgets
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
                "Your Scheduled and Completed\nPoojas",
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

  Widget buildContentSection() {
    return 
    Padding(
      padding: const EdgeInsets.symmetric(horizontal: 100.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "EXPERIENCE DIVINE RITUALS YOUR\nWAY — PERSONALIZED E-POOJAS",
            style: TextStyle(fontSize: 45, fontWeight: FontWeight.bold),
          ),
          Text(
            "WITH FLEXIBLE OPTIONS AND EASY\nONLINE BOOKING",
            style: TextStyle(fontSize: 45, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 50,),
          buildTabs()
        ],
      ),
    );
    
  }

  Widget buildTabs() {
    
    return  Wrap(
      spacing: 15,
      runSpacing: 12,
      children: [
        buildButton("Book E-Pooja", isActive: true),
        buildButton("Browse Poojas", isActive: false),
        buildButton("Upcoming Poojas", isActive: false),
        buildButton("My Bookings", isActive: false),
      ],
    );
  }

  Widget buildButton(String label, {bool isActive = false}) {
    return Container(
      width: 220,
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

  Widget buildSectionTitle(String title) => Padding(
        padding: const EdgeInsets.symmetric(horizontal: 100, vertical: 12),
        child: Text(title, style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
      );

  Widget buildField(String label, TextEditingController controller) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(label, style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w500)),
        const SizedBox(height: 4),
        TextFormField(
          controller: controller,
          decoration: InputDecoration(
            filled: true,
            fillColor: Colors.grey.shade200,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(4),
              borderSide: BorderSide.none,
            ),
          ),
        ),
      ],
    );
  }

  Widget buildDropdownField(String label, String? selectedValue, List<String> items, Function(String?) onChanged) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(label, style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w500)),
        const SizedBox(height: 4),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 12),
          decoration: BoxDecoration(
            color: Colors.grey.shade200,
            borderRadius: BorderRadius.circular(4),
          ),
          child: DropdownButton<String>(
            value: selectedValue,
            isExpanded: true,
            underline: const SizedBox(),
            onChanged: onChanged,
            items: items.map((value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Text(value, style: const TextStyle(fontSize: 14)),
              );
            }).toList(),
          ),
        ),
      ],
    );
  }

  Widget buildTwoColumnRow(String label1, TextEditingController controller1, String label2, TextEditingController controller2) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 100.0, vertical: 12),
      child: Row(
        children: [
          Expanded(child: buildField(label1, controller1)),
          const SizedBox(width: 20),
          Expanded(child: buildField(label2, controller2)),
        ],
      ),
    );
  }

  Widget buildTwoColumnDropdownRow(
    String label1,
    String? value1,
    List<String> options1,
    Function(String?) onChanged1,
    String label2,
    String? value2,
    List<String> options2,
    Function(String?) onChanged2,
  ) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 100.0, vertical: 12),
      child: Row(
        children: [
          Expanded(child: buildDropdownField(label1, value1, options1, onChanged1)),
          const SizedBox(width: 20),
          Expanded(child: buildDropdownField(label2, value2, options2, onChanged2)),
        ],
      ),
    );
  }

  Widget buildSingleField(String label, TextEditingController controller) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 100.0, vertical: 12),
      child: buildField(label, controller),
    );
  }

    Widget buildContactInfoSection() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 100.0,vertical: 12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          buildSectionTitle("Contact Info"),
          Row(
            children: [
              Expanded(child: buildField("Booking Person Name", nameController, )),
              const SizedBox(width: 20),
              Expanded(child: buildField("Mobile Number", phoneController, )),
            ],
          ),
          const SizedBox(height: 20),
          Row(
            children: [
              Expanded(
                flex: 1,
                child: buildField("Email", emailController, ),
              ),
              const Spacer(),
            ],
          ),
        ],
      ),
    );
  }
}
