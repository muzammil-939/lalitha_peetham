import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
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

   void _openMenu(BuildContext context) {
    Navigator.push(
      context,
      PageRouteBuilder(
        pageBuilder: (context, animation, _) => DropdownGridMenu(),
        transitionDuration: const Duration(milliseconds: 300),
        transitionsBuilder:
            (context, animation, _, child) =>
                FadeTransition(opacity: animation, child: child),
        opaque: false,
      ),
    );
  }
  
  @override
  Widget build(BuildContext context) {
    return VastupoojaLayout(
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            buildherosection(),
            buildContentSection(context),
            const SizedBox(height: 30),
            
            buildTwoColumnDropdownRow(context,
              "Pooja Name", selectedPoojaName, ["Satyanarayan", "Lakshmi Pooja"],
              (val) => setState(() => selectedPoojaName = val),
              "Occasion", selectedOccasion, ["House Warming", "Birthday"],
              (val) => setState(() => selectedOccasion = val),
            ),
            buildTwoColumnDropdownRow(context,
              "Deity", selectedDeity, ["Lord Vishnu", "Ganesha"],
              (val) => setState(() => selectedDeity = val),
              "Purpose", selectedPurpose, ["Well-being", "Prosperity"],
              (val) => setState(() => selectedPurpose = val),
            ),
            buildTwoColumnDropdownRow(context,
              "Language", selectedLanguage, ["Telugu", "Hindi"],
              (val) => setState(() => selectedLanguage = val),
              "Ritual Type", selectedRitualType, ["Simple", "Elaborate"],
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
      final size = MediaQuery.of(context).size;
    final isMediumScreen = size.width > 800;
    final isSmallScreen = size.width < 600;
    final isVerySmallScreen = size.width < 400;

      final isMobile = ResponsiveHelper.isMobile(context);
    final isTablet = ResponsiveHelper.isTablet(context);

    double getMenuIconSize() {
      if (isVerySmallScreen) return 24;
      if (isSmallScreen) return 26;
      if (isMediumScreen) return 28;
      return 30;
    }

    double getMenuFontSize() {
      if (isVerySmallScreen) return 18;
      if (isSmallScreen) return 20;
      if (isMediumScreen) return 22;
      return 24;
    }

    double getMenuLetterSpacing() {
      if (isVerySmallScreen) return 1;
      if (isSmallScreen) return 1.5;
      return 2;
    }

        double getMenuWidth() {
      if (isVerySmallScreen) return 200;
      if (isSmallScreen) return 250;
      return 300;
    }
    return Stack(
      alignment: Alignment.center,
      children: [
        Image.asset(
          'assets/images/vastupooja1.png',
          width: double.infinity,
          height: isMobile ? 300:isTablet ? 400 : 600,
          fit: BoxFit.cover,
        ),
       // Menu button positioned at top
          Positioned(
            top: 40,
            left: 0,
            right: 0,
            child: Center(
              child: GestureDetector(
                onTap: () => _openMenu(context),
                child: SizedBox(
                  width: getMenuWidth(),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.menu,
                        color: Colors.white,
                        size: getMenuIconSize(),
                      ),
                      SizedBox(width: isVerySmallScreen ? 6 : 8),
                      Text(
                        'MENU',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: getMenuFontSize(),
                          fontWeight: FontWeight.w600,
                          letterSpacing: getMenuLetterSpacing(),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        Positioned(
          top:isMobile?80: 120,
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
             height: isMobile ? 100 : isTablet ? 120 : 180,
               width: isMobile ? 150 : isTablet ? 180 : 280,
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
  final titleFontSize = isMobile ? 24.0 : 45.0;

  return Padding(
    padding: EdgeInsets.symmetric(horizontal: horizontalPadding),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "EXPERIENCE DIVINE RITUALS YOUR\nWAY — PERSONALIZED E-POOJAS",
          style: TextStyle(fontSize: titleFontSize, fontWeight: FontWeight.bold),
        ),
        Text(
          "WITH FLEXIBLE OPTIONS AND EASY\nONLINE BOOKING",
          style: TextStyle(fontSize: titleFontSize, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: isMobile ? 20 : 50),
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
      border: Border.all(color: isActive ? Colors.grey.shade300 : Colors.transparent),
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
