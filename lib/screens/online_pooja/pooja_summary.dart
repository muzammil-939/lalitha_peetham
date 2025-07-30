import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:lalitha_peetham/screens/online_vastu_property/vastupooja_layout.dart';
import 'package:lalitha_peetham/widgets/reusable_responsive_type_widget.dart';

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
            buildContentSection(context,),
            const SizedBox(height: 30),
           // buildTabs(),
            const SizedBox(height: 30),
            buildSectionTitle(context,"POOJA SUMMARY"),
            buildTwoColumnRow(context,"Pooja Name", poojaNameController, "Satyanarayan Pooja", "Occasion", occasionController, "House Warming"),
            buildTwoColumnRow(context,"Deity", deityController, "Lord Vishnu", "Purpose", purposeController, "Prosperity And Family Well-Being"),
            buildTwoColumnRow(context,"Language", languageController, "Telugu", "Ritual Type", ritualTypeController, "Simple"),
            const SizedBox(height: 20),
            buildSectionTitle(context,"Sankalp Details"),
            buildTwoColumnRow(context,"Gotra", gotraController, "Bharadwaja", "Family Members (Optional)", membersController, "5 Members"),
            const SizedBox(height: 20),
            buildSectionTitle(context,"Pick Date & Time"),
            buildTwoColumnRow(context,"Date", dateController, "24-05-25", "Time", timeController, "6:00 Am To 10:00 Am"),
            const SizedBox(height: 20),
            buildAddOfferingsSection(context,),
            const SizedBox(height: 20),
            buildContactInfoSection(context,),
            const SizedBox(height: 20),
            buildSectionTitle(context,"Additional Information"),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 100.0,vertical: 12),
              child: TextFormField(
                controller: additionalInfoController,
                maxLines: 3,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: "Enter",
                  fillColor: Color(0xFFF1F1F1),
                ),
              ),
            ),
            const SizedBox(height: 20),
            buildSectionTitle(context,"Payment Summary"),
            buildTwoColumnRow(context,"Pooja Charges", poojaCostController, "₹1500", "Offerings Add-On", addonCostController, "300"),
            buildTwoColumnRow(context,"Streaming Option", streamCostController, "Free", "Total Cost", totalCostController, "1800"),
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
            children:  [
              
              Text(
                "Book Customized E-Poojas Online – Your\nRitual, Your Way",
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

Widget buildContentSection(BuildContext context) {
  final isMobile = ResponsiveHelper.isMobile(context);
  final horizontalPadding = isMobile ? 16.0 : 100.0;
  final headingSize = isMobile ? 22.0 : 45.0;

  return Padding(
    padding: EdgeInsets.symmetric(horizontal: horizontalPadding),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "EXPERIENCE DIVINE RITUALS YOUR\nWAY — PERSONALIZED E-POOJAS",
          style: TextStyle(fontSize: headingSize, fontWeight: FontWeight.bold),
        ),
        Text(
          "WITH FLEXIBLE OPTIONS AND EASY\nONLINE BOOKING",
          style: TextStyle(fontSize: headingSize, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: isMobile ? 30 : 50),
        buildTabs(context),
      ],
    ),
  );
}

Widget buildTabs(BuildContext context) {
  final isMobile = ResponsiveHelper.isMobile(context);
  return Wrap(
    spacing: isMobile ? 10 : 15,
    runSpacing: 12,
    children: [
      buildButton("Book E-Pooja", isActive: true),
      buildButton("Browse Poojas"),
      buildButton("Upcoming Poojas"),
      buildButton("My Bookings"),
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
      border: Border.all(
        color: isActive ? Colors.grey.shade300 : Colors.transparent,
      ),
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

Widget buildSectionTitle(BuildContext context, String title) {
  final isMobile = ResponsiveHelper.isMobile(context);
  return Padding(
    padding: EdgeInsets.symmetric(horizontal: isMobile ? 16 : 100, vertical: 12),
    child: Text(
      title,
      style: TextStyle(fontWeight: FontWeight.bold, fontSize: isMobile ? 18 : 20),
    ),
  );
}

Widget buildTwoColumnRow(
  BuildContext context,
  String label1,
  TextEditingController controller1,
  String hint1,
  String label2,
  TextEditingController controller2,
  String hint2,
) {
  final isMobile = ResponsiveHelper.isMobile(context);
  return Padding(
    padding: EdgeInsets.symmetric(horizontal: isMobile ? 16 : 100, vertical: 12),
    child: isMobile
        ? Column(
            children: [
              buildField(context, label1, controller1, hintText: hint1),
              const SizedBox(height: 12),
              buildField(context, label2, controller2, hintText: hint2),
            ],
          )
        : Row(
            children: [
              Expanded(child: buildField(context, label1, controller1, hintText: hint1)),
              const SizedBox(width: 20),
              Expanded(child: buildField(context, label2, controller2, hintText: hint2)),
            ],
          ),
  );
}

Widget buildSingleField(
  BuildContext context,
  String label,
  TextEditingController controller,
  String hintText,
) {
  final isMobile = ResponsiveHelper.isMobile(context);
  return Padding(
    padding: EdgeInsets.symmetric(horizontal: isMobile ? 16 : 100, vertical: 12),
    child: buildField(context, label, controller, hintText: hintText),
  );
}

Widget buildField(
  BuildContext context,
  String label,
  TextEditingController controller, {
  String? hintText,
}) {
  final isMobile = ResponsiveHelper.isMobile(context);
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        label,
        style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
      ),
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
      ),
    ],
  );
}

Widget buildAddOfferingsSection(BuildContext context) {
  final isMobile = ResponsiveHelper.isMobile(context);
  return Padding(
    padding: EdgeInsets.symmetric(horizontal: isMobile ? 16 : 100, vertical: 12),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        buildSectionTitle(context, "Add Offerings (Optional)"),
        isMobile
            ? Column(
                children: [
                  buildField(context, "Items", offeringsController, hintText: "Fruits"),
                  const SizedBox(height: 12),
                  buildField(context, "Live Streaming Options", liveStreamController, hintText: "Yes"),
                ],
              )
            : Row(
                children: [
                  Expanded(child: buildField(context, "Items", offeringsController, hintText: "Fruits")),
                  const SizedBox(width: 20),
                  Expanded(child: buildField(context, "Live Streaming Options", liveStreamController, hintText: "Yes")),
                ],
              ),
        const SizedBox(height: 20),
        Row(
          children: [
            const Spacer(),
            Expanded(
              flex: 1,
              child: buildField(context, "Choose Platform", platformController, hintText: "Zoom"),
            ),
          ],
        ),
      ],
    ),
  );
}

Widget buildContactInfoSection(BuildContext context) {
  final isMobile = ResponsiveHelper.isMobile(context);
  return Padding(
    padding: EdgeInsets.symmetric(horizontal: isMobile ? 16 : 100, vertical: 12),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        buildSectionTitle(context, "Contact Info"),
        isMobile
            ? Column(
                children: [
                  buildField(context, "Booking Person Name", nameController, hintText: "Ramesh Kuma"),
                  const SizedBox(height: 12),
                  buildField(context, "Mobile Number", phoneController, hintText: "+91-XXXXXX"),
                ],
              )
            : Row(
                children: [
                  Expanded(child: buildField(context, "Booking Person Name", nameController, hintText: "Ramesh Kuma")),
                  const SizedBox(width: 20),
                  Expanded(child: buildField(context, "Mobile Number", phoneController, hintText: "+91-XXXXXX")),
                ],
              ),
        const SizedBox(height: 20),
        Row(
          children: [
            Expanded(
              flex: 1,
              child: buildField(context, "Email", emailController, hintText: "Ramesh@gmail.com")),
         const Spacer(),
          ],
        ),
      ],
    ),
  );
}

}
