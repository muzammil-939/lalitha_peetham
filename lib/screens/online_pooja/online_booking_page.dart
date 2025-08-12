import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:lalitha_peetham/screens/online_pooja/e_pooja_layout.dart';
import 'package:lalitha_peetham/screens/online_vastu_property/vastupooja_layout.dart';
import 'package:lalitha_peetham/widgets/menu.dart';
import 'package:lalitha_peetham/widgets/reusable_responsive_type_widget.dart';

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
    return EPoojaLayout(
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
          SizedBox(height: 50,),
            buildContentSection(context),
            const SizedBox(height: 30),
            
            buildTwoColumnDropdownRow(context,
              "Pooja Name", selectedPoojaName, ["Satyanarayan", "Lakshmi Pooja"],
              (val) => setState(() => selectedPoojaName = val),
              "Occasion", selectedOccasion, ["House Warming", "Birthday","Marriage"],
              (val) => setState(() => selectedOccasion = val),
            ),
            buildTwoColumnDropdownRow(context,
              "Deity", selectedDeity, ["Ganesha", "Lakshmi","Shiva", ],
              (val) => setState(() => selectedDeity = val),
              "Purpose", selectedPurpose, ["Health", "Career","Peace"],
              (val) => setState(() => selectedPurpose = val),
            ),
            buildTwoColumnDropdownRow(context,
              "Language", selectedLanguage, ["Telugu", "Hindi","English"],
              (val) => setState(() => selectedLanguage = val),
              "Ritual Type", selectedRitualType, ["Simple", "Traditional", "Full Vedic",],
              (val) => setState(() => selectedRitualType = val),
            ),
            const SizedBox(height: 20),
            buildSectionTitle(context,"Sankalp Details"),
            buildTwoColumnRow(context,"Gotra", gotraController, "Family Members (Optional)", membersController),
            const SizedBox(height: 20),
            buildSectionTitle(context,"Pick Date & Time"),
            buildTwoColumnRow(context,"Date", dateController, "Time", timeController),
            const SizedBox(height: 20),
            buildSectionTitle(context,"Add Offerings (Optional)"),
            buildTwoColumnDropdownRow(context,
              "Items", selectedOfferingItem, ["Fruits", "Sweets","Samagri","Donation"],
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
                    child: buildDropdownField(context,
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
            buildContactInfoSection(context),
            const SizedBox(height: 20),
            buildSectionTitle(context,"Additional Information"),
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
            buildSectionTitle(context,"Payment Summary"),
            buildTwoColumnRow(context,"Pooja Charges", poojaCostController, "Offerings Add-On", addonCostController),
            buildTwoColumnRow(context,"Streaming Option", streamCostController, "Total Cost", totalCostController),
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
                    backgroundColor: const Color(0xFFDC9323),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                    padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 16),
                  ),
                  child: const Text("Continnue", style: TextStyle(fontSize: 18)),
                ),
              ),
            ),
            const SizedBox(height: 80),
          ],
        ),
      ),
    );
  }

  
 Widget buildContentSection(BuildContext context) {
  final isMobile = ResponsiveHelper.isMobile(context);
  final horizontalPadding = isMobile ? 16.0 : 100.0;
  final titleFontSize = isMobile ? 24.0 : 45.0;

  return Padding(
    padding: EdgeInsets.symmetric(horizontal: horizontalPadding),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "RAHUPOOJA FILL THE DEATILS",
          style: TextStyle(fontSize: titleFontSize, fontWeight: FontWeight.bold),
        ),
       
        SizedBox(height: isMobile ? 20 : 50),
        
      ],
    ),
  );
}

Widget buildSectionTitle(BuildContext context, String title) {
  final isMobile = ResponsiveHelper.isMobile(context);
  return Padding(
    padding: EdgeInsets.symmetric(horizontal: isMobile ? 16 : 100, vertical: 12),
    child: Text(title, style: TextStyle(fontSize: isMobile ? 18 : 20, fontWeight: FontWeight.bold)),
  );
}

Widget buildField(BuildContext context, String label, TextEditingController controller) {
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

Widget buildDropdownField(
  BuildContext context,
  String label,
  String? selectedValue,
  List<String> items,
  Function(String?) onChanged,
) {
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
          dropdownColor: Color(0XFFE4C74D),
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

Widget buildTwoColumnRow(
  BuildContext context,
  String label1,
  TextEditingController controller1,
  String label2,
  TextEditingController controller2,
) {
  final isMobile = ResponsiveHelper.isMobile(context);
  final padding = isMobile ? 16.0 : 100.0;

  return Padding(
    padding: EdgeInsets.symmetric(horizontal: padding, vertical: 12),
    child: isMobile
        ? Column(
            children: [
              buildField(context, label1, controller1),
              const SizedBox(height: 12),
              buildField(context, label2, controller2),
            ],
          )
        : Row(
            children: [
              Expanded(child: buildField(context, label1, controller1)),
              const SizedBox(width: 20),
              Expanded(child: buildField(context, label2, controller2)),
            ],
          ),
  );
}

Widget buildTwoColumnDropdownRow(
  BuildContext context,
  String label1,
  String? value1,
  List<String> options1,
  Function(String?) onChanged1,
  String label2,
  String? value2,
  List<String> options2,
  Function(String?) onChanged2,
) {
  final isMobile = ResponsiveHelper.isMobile(context);
  final padding = isMobile ? 16.0 : 100.0;

  return Padding(
    padding: EdgeInsets.symmetric(horizontal: padding, vertical: 12),
    child: isMobile
        ? Column(
            children: [
              buildDropdownField(context, label1, value1, options1, onChanged1),
              const SizedBox(height: 12),
              buildDropdownField(context, label2, value2, options2, onChanged2),
            ],
          )
        : Row(
            children: [
              Expanded(child: buildDropdownField(context, label1, value1, options1, onChanged1)),
              const SizedBox(width: 20),
              Expanded(child: buildDropdownField(context, label2, value2, options2, onChanged2)),
            ],
          ),
  );
}

Widget buildSingleField(BuildContext context, String label, TextEditingController controller) {
  final isMobile = ResponsiveHelper.isMobile(context);
  return Padding(
    padding: EdgeInsets.symmetric(horizontal: isMobile ? 16.0 : 100.0, vertical: 12),
    child: buildField(context, label, controller),
  );
}

Widget buildContactInfoSection(BuildContext context) {
  final isMobile = ResponsiveHelper.isMobile(context);
  final padding = isMobile ? 16.0 : 100.0;

  return Padding(
    padding: EdgeInsets.symmetric(horizontal: padding, vertical: 12),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        buildSectionTitle(context, "Contact Info"),
        isMobile
            ? Column(
                children: [
                  buildField(context, "Booking Person Name", nameController),
                  const SizedBox(height: 12),
                  buildField(context, "Mobile Number", phoneController),
                ],
              )
            : Row(
                children: [
                  Expanded(child: buildField(context, "Booking Person Name", nameController)),
                  const SizedBox(width: 20),
                  Expanded(child: buildField(context, "Mobile Number", phoneController)),
                ],
              ),
        const SizedBox(height: 20),
        Row(
            children: [
              Expanded(
                flex: 1,
                child: buildField(context,"Email", emailController, ),
              ),
              const Spacer(),
            ],
          ),
      ],
    ),
  );
}

}
