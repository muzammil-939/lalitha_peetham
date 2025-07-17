import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:lalitha_peetham/screens/online_vastu_property/vastupooja_layout.dart';

class PoojaSummary extends StatefulWidget {
  const PoojaSummary({super.key});

  @override
  State<PoojaSummary> createState() => _PoojaSummaryState();
}

class _PoojaSummaryState extends State<PoojaSummary> {
  // Controllers
  final TextEditingController poojaNameController = TextEditingController();
  final TextEditingController occasionController = TextEditingController();
  final TextEditingController deityController = TextEditingController();
  final TextEditingController purposeController = TextEditingController();
  final TextEditingController languageController = TextEditingController();
  final TextEditingController ritualTypeController = TextEditingController();
  final TextEditingController gotraController = TextEditingController();
  final TextEditingController membersController = TextEditingController();
  final TextEditingController dateController = TextEditingController();
  final TextEditingController timeController = TextEditingController();
  final TextEditingController offeringsController = TextEditingController();
  final TextEditingController liveStreamController = TextEditingController();
  final TextEditingController platformController = TextEditingController();
  final TextEditingController nameController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController additionalInfoController = TextEditingController();
  final TextEditingController poojaCostController = TextEditingController();
  final TextEditingController addonCostController = TextEditingController();
  final TextEditingController streamCostController = TextEditingController();
  final TextEditingController totalCostController = TextEditingController();

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
           // buildTabs(),
            const SizedBox(height: 30),
            buildSectionTitle("POOJA SUMMARY"),
            buildTwoColumnRow("Pooja Name", poojaNameController, "Satyanarayan Pooja", "Occasion", occasionController, "House Warming"),
            buildTwoColumnRow("Deity", deityController, "Lord Vishnu", "Purpose", purposeController, "Prosperity And Family Well-Being"),
            buildTwoColumnRow("Language", languageController, "Telugu", "Ritual Type", ritualTypeController, "Simple"),
            const SizedBox(height: 20),
            buildSectionTitle("Sankalp Details"),
            buildTwoColumnRow("Gotra", gotraController, "Bharadwaja", "Family Members (Optional)", membersController, "5 Members"),
            const SizedBox(height: 20),
            buildSectionTitle("Pick Date & Time"),
            buildTwoColumnRow("Date", dateController, "24-05-25", "Time", timeController, "6:00 Am To 10:00 Am"),
            const SizedBox(height: 20),
            buildAddOfferingsSection(),
            const SizedBox(height: 20),
            buildContactInfoSection(),
            const SizedBox(height: 20),
            buildSectionTitle("Additional Information"),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 100.0,vertical: 12),
              child: TextFormField(
                controller: additionalInfoController,
                maxLines: 3,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: "Enter",
                ),
              ),
            ),
            const SizedBox(height: 20),
            buildSectionTitle("Payment Summary"),
            buildTwoColumnRow("Pooja Charges", poojaCostController, "₹1500", "Offerings Add-On", addonCostController, "300"),
            buildTwoColumnRow("Streaming Option", streamCostController, "Free", "Total Cost", totalCostController, "1800"),
            const SizedBox(height: 30),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 100.0),
              child: Align(
               alignment: Alignment.bottomRight,
                child: ElevatedButton(
                  onPressed: () {
                    context.go('/payment_summary');
                  },
                  style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.black,
                    backgroundColor: Color(0xFFDC9323),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                    padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 16),
                  ),
                  child: const Text("Pay", style: TextStyle(fontSize: 18)),
                ),
              ),
            ),
            SizedBox(height: 80,)
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
                "Book Customized E-Poojas Online – Your\nRitual, Your Way",
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

  Widget buildSectionTitle(String title) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12,horizontal: 100),
      child: Text(title, style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
    );
  }

  Widget buildTwoColumnRow(String label1, TextEditingController controller1, String hint1,
      String label2, TextEditingController controller2, String hint2) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 100.0,vertical: 12),
      child: Row(
        children: [
          Expanded(child: buildField(label1, controller1, hintText: hint1)),
          const SizedBox(width: 20),
          Expanded(child: buildField(label2, controller2, hintText: hint2)),
        ],
      ),
    );
  }

  Widget buildSingleField(String label, TextEditingController controller, String hintText) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 100,vertical: 12),
      child: buildField(label, controller, hintText: hintText),
    );
  }

  Widget buildField(String label, TextEditingController controller, {String? hintText}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(label, style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w500)),
        const SizedBox(height: 4),
        TextFormField(
          controller: controller,
          decoration: InputDecoration(
            hintText: hintText,
            filled: true,
            fillColor: Colors.grey.shade200,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(4),
              borderSide: BorderSide.none,
            ),
          ),
        )
      ],
    );
  }

  Widget buildAddOfferingsSection() {
    return 
    Padding(
      padding: const EdgeInsets.symmetric(horizontal: 100.0,vertical: 12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          buildSectionTitle("Add Offerings (Optional)"),
          Row(
            children: [
              Expanded(child: buildField("Items", offeringsController, hintText: "Fruits")),
              const SizedBox(width: 20),
              Expanded(child: buildField("Live Streaming Options", liveStreamController, hintText: "Yes")),
            ],
          ),
          const SizedBox(height: 20),
          Row(
            children: [
              const Spacer(),
              Expanded(
                flex: 1,
                child: buildField("Choose Platform", platformController, hintText: "Zoom"),
              ),
            ],
          ),
        ],
      ),
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
              Expanded(child: buildField("Booking Person Name", nameController, hintText: "Ramesh Kuma")),
              const SizedBox(width: 20),
              Expanded(child: buildField("Mobile Number", phoneController, hintText: "+91-XXXXXX")),
            ],
          ),
          const SizedBox(height: 20),
          Row(
            children: [
              Expanded(
                flex: 1,
                child: buildField("Email", emailController, hintText: "Ramesh@gmail.com"),
              ),
              const Spacer(),
            ],
          ),
        ],
      ),
    );
  }
}
