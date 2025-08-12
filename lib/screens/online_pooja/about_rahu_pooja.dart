import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:lalitha_peetham/screens/online_pooja/e_pooja_layout.dart';
import 'package:lalitha_peetham/widgets/reusable_responsive_type_widget.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';

class AboutRahuPooja extends StatefulWidget {
  const AboutRahuPooja({super.key});

  @override
  State<AboutRahuPooja> createState() => _AboutRahuPoojaState();
}

class _AboutRahuPoojaState extends State<AboutRahuPooja> {

// State variable to hold selected dates
List<DateTime> selectedDates = [];

void _showMultiDatePicker(BuildContext context) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        contentPadding: const EdgeInsets.all(16),
        content: SizedBox(
          height: 300,
          width: 300,
          child: SfDateRangePicker(
            view: DateRangePickerView.month,
            selectionMode: DateRangePickerSelectionMode.multiple,
            initialSelectedDates: selectedDates,
            minDate: DateTime.now().add(const Duration(days: 1)),
            maxDate: DateTime(2100),
            onSelectionChanged: (DateRangePickerSelectionChangedArgs args) {
              selectedDates = List<DateTime>.from(args.value);
            },
          ),
        ),
        actions: [
          TextButton(
            onPressed: () {
              print("Selected Dates: $selectedDates");
              Navigator.of(context).pop();
            },
            child: const Text("OK"),
          )
        ],
      );
    },
  );
}

  @override
  Widget build(BuildContext context) {
    return EPoojaLayout(
      child: SingleChildScrollView(
        child: Column(
          children: [
            buildAboutRahuPoojaContent(context),
          // const SizedBox(height: 50),
            _buildDropdownRow(context),
            const SizedBox(height: 30),
            buildWhyPerformSection(),
            const SizedBox(height: 80),
          ],
        ),
      ),
    );
  }

  Widget buildAboutRahuPoojaContent(BuildContext context) {
    bool isMobile = ResponsiveHelper.isMobile(context);
    bool isTablet = ResponsiveHelper.isTablet(context);

    return Stack(
      children: [
        // Background
        Positioned.fill(
          child: Image.asset(
            'assets/images/vastupooja4.png',
            fit: BoxFit.cover,
          ),
        ),

        // Planet top-right
        Positioned(
          top: isMobile ? 60 : 100,
          right: isMobile ? 16 : 30,
          child: Image.asset(
            'assets/images/vastupooja11.png',
            height: isMobile ? 60 : isTablet ? 80 : 100,
            width: isMobile ? 60 : isTablet ? 80 : 100,
          ),
        ),

        // Content
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: isMobile ? 16 : 150,
            vertical: 40,
          ),
          child: LayoutBuilder(
            builder: (context, constraints) {
              return constraints.maxWidth < 600
                  ? _buildMobileLayout(context)
                  : _buildDesktopLayout(context);
            },
          ),
        ),
      ],
    );
  }

  Widget _buildMobileLayout(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _buildPujaImageWithPrice(),
        const SizedBox(height: 20),
        buildRahuPujaTextBlock(context),
      ],
    );
  }

  Widget _buildDesktopLayout(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Left side image
        Expanded(
          flex: 1,
          child: _buildPujaImageWithPrice(),
        ),
        const SizedBox(width: 40),
        // Right side content
        Expanded(
          flex: 2,
          child: buildRahuPujaTextBlock(context),
        ),
      ],
    );
  }

  Widget _buildPujaImageWithPrice() {
    final isMobile = ResponsiveHelper.isMobile(context);
    final isTablet = ResponsiveHelper.isTablet(context);

    double imageHeight = isMobile ? 250 : isTablet ? 200 : 300;
    double imageWidth = isMobile ? double.infinity : isTablet ? 300 : 380;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(8),
          child: Image.asset(
            'assets/images/e_pooja3.jpg',
            height: imageHeight,
            width: imageWidth,
            fit: BoxFit.cover,
          ),
        ),
        const SizedBox(height: 10),
        const Text(
          "Pooja Dhakshana : ₹ 500",
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
      ],
    );
  }

  Widget buildRahuPujaTextBlock(BuildContext context) {
    final isMobile = ResponsiveHelper.isMobile(context);
    final isTablet = ResponsiveHelper.isTablet(context);

    double fontSizeTitle = isMobile ? 18 : isTablet ? 28 : 36;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "DISCOVER THE\nSPIRITUAL SIGNIFICANCE\nOF RAHU PUJA",
          style: TextStyle(
            fontSize: fontSizeTitle,
            fontWeight: FontWeight.w900,
            color: Colors.black,
            height: 1.3,
          ),
        ),
        const SizedBox(height: 10),
        const Row(
          children: [
            Icon(Icons.self_improvement, color: Colors.deepPurple),
            SizedBox(width: 6),
            Text(
              "🕉️ ABOUT RAHU PUJA",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            )
          ],
        ),
        const SizedBox(height: 20),
        // ElevatedButton(
        //   style: ElevatedButton.styleFrom(
        //     backgroundColor: const Color(0xFFDC9323),
        //     foregroundColor: Colors.black,
        //     padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 14),
        //     shape: RoundedRectangleBorder(
        //       borderRadius: BorderRadius.circular(30),
        //     ),
        //   ),
        //   onPressed: () => context.go('/online_booking'),
        //   child: const Text("Book Now"),
        // ),
      ],
    );
  }

  Widget _buildDropdownRow(BuildContext context) {
    bool isMobile = ResponsiveHelper.isMobile(context);
    bool isTablet = ResponsiveHelper.isTablet(context);

    double paddingHorizontal = isMobile ? 12 : isTablet ? 16 : 80;
    double paddingVertical = isMobile ? 8 : isTablet ? 10 : 12;
    double fontSize = isMobile ? 12 : isTablet ? 14 : 16;

    return Wrap(
      spacing: isMobile ? 8 : 12,
      runSpacing: 10,
      children: [
        _styledDropdownContainer("Daily", paddingHorizontal, paddingVertical, fontSize, context),
        _styledDropdownContainer("Weekly", paddingHorizontal, paddingVertical, fontSize, context),
        _styledDropdownContainer("Monthly", paddingHorizontal, paddingVertical, fontSize, context),
        _styledDropdownContainer("Yearly", paddingHorizontal, paddingVertical, fontSize, context),
      ],
    );
  }

  Widget _styledDropdownContainer(
    String label,
    double horizontalPadding,
    double verticalPadding,
    double fontSize,
    BuildContext context,
  ) {
    return GestureDetector(
      onTap: () async {
  if (label == "Daily") {
    _showMultiDatePicker(context);
  }
},
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: horizontalPadding,
          vertical: verticalPadding,
        ),
        decoration: BoxDecoration(
          color: Colors.grey.shade300,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              label,
              style: TextStyle(
                fontSize: fontSize,
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(width: 4),
            const Icon(Icons.arrow_drop_down, size: 18),
          ],
        ),
        
      ),
      
    );
    
  }

  Widget buildWhyPerformSection() {
    final isMobile = ResponsiveHelper.isMobile(context);
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: isMobile ? 16 : 150),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
           ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: const Color(0xFFDC9323),
            foregroundColor: Colors.black,
            padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 14),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30),
            ),
          ),
          onPressed: () => context.go('/online_booking'),
          child: const Text("Book Now"),
        ),
          Text(
            "☀️ Why Perform Rahu Pooja ?",
            style: TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.bold,
              color: Colors.amber,
            ),
          ),
          SizedBox(height: 10),
          Text(
            "Rahu Puja is believed to reduce the malefic effects of Rahu in one’s horoscope, "
            "remove delays and obstacles, and attract success and stability. It is performed to bring mental peace, "
            "protect from negative influences, and invite positive transformations in life.",
            style: TextStyle(fontSize: 18, height: 1.6),
          ),
        ],
      ),
    );
  }
}














// import 'package:flutter/material.dart';
// import 'package:go_router/go_router.dart';
// import 'package:lalitha_peetham/screens/online_pooja/e_pooja_layout.dart';
// import 'package:lalitha_peetham/screens/online_pooja/satyanarayana_faq_widget.dart';
// import 'package:lalitha_peetham/screens/online_vastu_property/astrologer_contact_section.dart';
// import 'package:lalitha_peetham/screens/online_vastu_property/vastufaq_section_widget.dart';
// import 'package:lalitha_peetham/screens/online_vastu_property/vastupooja_layout.dart';
// import 'package:lalitha_peetham/widgets/menu.dart';
// import 'package:lalitha_peetham/widgets/reusable_responsive_type_widget.dart';

// class AboutRahuPoojaSatyanarayanaPooja extends StatefulWidget {
//   const AboutRahuPoojaSatyanarayanaPooja({super.key});

//   @override
//   State<AboutRahuPoojaSatyanarayanaPooja> createState() => _AboutRahuPoojaSatyanarayanaPoojaState();
// }

// class _AboutRahuPoojaSatyanarayanaPoojaState extends State<AboutRahuPoojaSatyanarayanaPooja> {

//        void _openMenu(BuildContext context) {
//     Navigator.push(
//       context,
//       PageRouteBuilder(
//         pageBuilder: (context, animation, _) => DropdownGridMenu(),
//         transitionDuration: const Duration(milliseconds: 300),
//         transitionsBuilder:
//             (context, animation, _, child) =>
//                 FadeTransition(opacity: animation, child: child),
//         opaque: false,
//       ),
//     );
//   }
//   @override
//   Widget build(BuildContext context) {
//     return EPoojaLayout(
//       child: SingleChildScrollView(
//         child: Column(
//           children: [
//             //buildherosection(),
//             buildAboutRahuPoojaSatyanarayanaContent(),
//             SizedBox(height: 50,),
//             buildContent() ,
//              SizedBox(height: 80,),
//              AstrologerContactSection(),
//              SizedBox(height: 80,),
//              SatyanarayanaFaqWidget(),
//              SizedBox(height: 80,),

//           ],
//         ),
//       ),
//     );
//   }

// //  Widget buildherosection() {
// //       final size = MediaQuery.of(context).size;
// //     final isMediumScreen = size.width > 800;
// //     final isSmallScreen = size.width < 600;
// //     final isVerySmallScreen = size.width < 400;
    
// //     final isMobile = ResponsiveHelper.isMobile(context);
// //     final isTablet = ResponsiveHelper.isTablet(context);

// //     double getMenuIconSize() {
// //       if (isVerySmallScreen) return 24;
// //       if (isSmallScreen) return 26;
// //       if (isMediumScreen) return 28;
// //       return 30;
// //     }

// //     double getMenuFontSize() {
// //       if (isVerySmallScreen) return 18;
// //       if (isSmallScreen) return 20;
// //       if (isMediumScreen) return 22;
// //       return 24;
// //     }

// //     double getMenuLetterSpacing() {
// //       if (isVerySmallScreen) return 1;
// //       if (isSmallScreen) return 1.5;
// //       return 2;
// //     }

// //         double getMenuWidth() {
// //       if (isVerySmallScreen) return 200;
// //       if (isSmallScreen) return 250;
// //       return 300;
// //     }

    
// //     return Stack(
// //       alignment: Alignment.center,
// //       children: [
// //         Image.asset(
// //           'assets/images/vastupooja1.png',
// //           width: double.infinity,
// //           height: isMobile ? 300 :isTablet? 400: 600,
// //           fit: BoxFit.cover,
// //         ),
// //          // Menu button positioned at top
// //           Positioned(
// //             top: 40,
// //             left: 0,
// //             right: 0,
// //             child: Center(
// //               child: GestureDetector(
// //                 onTap: () => _openMenu(context),
// //                 child: SizedBox(
// //                   width: getMenuWidth(),
// //                   child: Row(
// //                     mainAxisAlignment: MainAxisAlignment.center,
// //                     children: [
// //                       Icon(
// //                         Icons.menu,
// //                         color: Colors.white,
// //                         size: getMenuIconSize(),
// //                       ),
// //                       SizedBox(width: isVerySmallScreen ? 6 : 8),
// //                       Text(
// //                         'MENU',
// //                         style: TextStyle(
// //                           color: Colors.white,
// //                           fontSize: getMenuFontSize(),
// //                           fontWeight: FontWeight.w600,
// //                           letterSpacing: getMenuLetterSpacing(),
// //                         ),
// //                       ),
// //                     ],
// //                   ),
// //                 ),
// //               ),
// //             ),
// //           ),
// //         Positioned(
// //          top:isMobile?80: 120,
// //           child: Column(
// //             children: [
              
// //               Text(
// //                 "Complete the payment to confirm your\nbooking",
// //                 textAlign: TextAlign.center,
// //                 style: TextStyle(
// //                   color: Colors.white,
// //                   fontSize: ResponsiveFontsize.fontSize(
// //                     context,
// //                     desktop: 45,
// //                     tablet: 30,
// //                     mobile: 20
// //                   ),
// //                   fontWeight: FontWeight.bold,
// //                 ),
// //               ),
// //             ],
// //           ),
// //         ),
// //         Positioned(
// //           bottom: 20,
// //           child: ClipRRect(
// //             borderRadius: BorderRadius.circular(0),
// //             child: Image.asset(
// //               'assets/images/online_pooja2.jpg',
// //              height: isMobile ? 100 : isTablet ? 120 : 180,
// //                width: isMobile ? 150 : isTablet ? 180 : 280,
// //               fit: BoxFit.cover,
// //             ),
// //           ),
// //         )
// //       ],
// //     );
// //   }

//   Widget buildAboutRahuPoojaSatyanarayanaContent() {
//   double width = ResponsiveHelper.screenWidth(context);
//   bool isMobile = ResponsiveHelper.isMobile(context);
//   bool isTablet = ResponsiveHelper.isTablet(context);
//   return Stack(
      
//       children: [
//          // Background Image (Covering full screen)
//       Positioned.fill(
//         child: Image.asset(
//           'assets/images/vastupooja4.png', // Make sure this path matches your asset folder
//           fit: BoxFit.cover,
         
//         ),
//       ),
//             // 🌑 2. Optional Planet Image (positioned right)
//             Positioned(
//         top: isMobile ? 60 : 120,
//         right: isMobile ? 16 : 30,
//         child: Image.asset(
//           'assets/images/vastupooja11.png',
//           height: isMobile ? 60 : isTablet ? 80 : 100,
//           width: isMobile ? 60 : isTablet ? 80 : 100,
//         ),
//       ),
//             // Main Responsive Content
//       ResponsiveWrapper(
//         child: Padding(
//           padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 30),
//           child: LayoutBuilder(
//             builder: (context, constraints) {
//               final isMobile = constraints.maxWidth < 600;

//               return isMobile
//                   ? Column(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         Image.asset(
//                           'assets/images/online_pooja1.jpg',
//                           height: 200,
//                           width: double.infinity,
//                           fit: BoxFit.cover,
//                         ),
//                         const SizedBox(height: 20),
//                         buildSatyanarayanaTextBlock(context),
//                       ],
//                     )
//                   : Row(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         Image.asset(
//                           'assets/images/online_pooja1.jpg',
//                           height: 300,
//                           width: 300,
//                           fit: BoxFit.cover,
//                         ),
//                         const SizedBox(width: 20),
//                         Expanded(child: buildSatyanarayanaTextBlock(context)),
//                       ],
//                     );
//             },
//           ),
//         ),
//       ),
//     ],
//   );
// }
 
//   }


// Widget buildSatyanarayanaTextBlock(BuildContext context) {
//   return Column(
//     crossAxisAlignment: CrossAxisAlignment.start,
//     children: [
//       Text(
//         "DISCOVER THE SPIRITUAL\nSIGNIFICANCE OF\nSATYANARAYANA POOJA",
//         style: TextStyle(
//           fontSize: ResponsiveFontsize.fontSize(
//             context,
//             mobile: 20,
//             tablet: 28,
//             desktop: 40,
//           ),
//           fontWeight: FontWeight.w900,
//         ),
//       ),
//       const SizedBox(height: 10),
//       Row(
//         children: const [
//           Icon(Icons.electric_bolt, size: 18, color: Colors.deepOrange),
//           SizedBox(width: 5),
//           Text(
//             "AboutRahuPooja Satyanarayana Puja",
//             style: TextStyle(
//               fontSize: 14,
//               fontWeight: FontWeight.bold,
//               color: Colors.black,
//             ),
//           ),
//         ],
//       ),
//       const SizedBox(height: 12),
//       ResponsiveButton(
//         text: "Book Now",
//         onPressed: () => context.go('/online_booking'),
//         backgroundColor: const Color(0xFFDC9323),
//         textColor: Colors.black,
//       ),
//     ],
//   );
// }
      
//  Widget buildContent() {
//   return 
//       // 📜 Description
//       Padding(
//         padding: const EdgeInsets.symmetric(horizontal: 100.0),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             const Text(
//               "Satyanarayana Puja Is A Sacred Hindu Ritual Dedicated To Lord Vishnu, Worshipped In His Truthful Form—Satyanarayana, The Lord Of Truth. Performed On Auspicious Occasions Like Purnima, Housewarmings, Weddings, Or Fulfilling Vows, The Puja Seeks Blessings For Peace, Prosperity, And Spiritual Well-Being.",
//               style: TextStyle(height: 1.6, fontSize: 14),
//             ),
//             const SizedBox(height: 30),
        
//         // 📘 Significance
//         Row(
//           children: const [
//             Icon(Icons.menu_book_outlined, color: Colors.amber),
//             SizedBox(width: 8),
//             Text(
//               "Significance Of Satyanarayan Katha",
//               style: TextStyle(
//                 fontWeight: FontWeight.bold,
//                 color: Colors.amber,
//                 fontSize: 16,
//               ),
//             ),
//           ],
//         ),
//         const SizedBox(height: 10),
//         const Text(
//           "Central To The Puja Is The Satyanarayana Katha—A Divine Story That Highlights The Power Of Truth, Faith, And Devotion. Through Tales Of Kings, Merchants, And Commoners, It Reminds Us That Sincere Worship Leads To Divine Blessings.",
//           style: TextStyle(height: 1.6, fontSize: 14),
//         ),
        
//         const SizedBox(height: 30),
        
//         // 🔱 Puja Procedure
//         Row(
//           children: const [
//             Icon(Icons.local_fire_department_outlined, color: Colors.orange),
//             SizedBox(width: 8),
//             Text(
//               "Puja Procedure At A Glance",
//               style: TextStyle(
//                 fontWeight: FontWeight.bold,
//                 fontSize: 16,
//                 color: Colors.orange,
//               ),
//             ),
//           ],
//         ),
//         const SizedBox(height: 10),
//         const Text("1. Preparation: Clean And Decorate The Space With Flowers, Rangoli, and Puja Items."),
//         const Text("2. Invocation: Chant Mantras To Invite Lord Satyanarayana’s Presence."),
//         const Text("3. Offerings: Present Fruits, Sweets, Flowers, And Devotion."),
//         const Text("4. Katha Recital: Read Or Listen To The Satyanarayana Katha With Sincerity."),
//         const Text("5. Aarti: Light A Lamp And Sing Praises To The Lord."),
//         const Text("6. Prasad: Distribute The Sacred Offerings To All."),
        
//         const SizedBox(height: 30),
        
//         // 💛 Why Perform
//         Row(
//           children: const [
//             Icon(Icons.lightbulb_outline, color: Colors.amber),
//             SizedBox(width: 8),
//             Text(
//               "Why Perform The Puja?",
//               style: TextStyle(
//                 fontWeight: FontWeight.bold,
//                 fontSize: 16,
//                 color: Colors.amber,
//               ),
//             ),
//           ],
//         ),
//         const SizedBox(height: 10),
//         const Text(
//           "This Puja Is Believed To Remove Obstacles, Attract Positive Energy, And Promote Harmony And Happiness. Open To All, Regardless Of Religion Or Background, It’s A Moment Of Spiritual Unity And Divine Connection.",
//           style: TextStyle(height: 1.6, fontSize: 14),
//         ),
        
//         const SizedBox(height: 30),
        
//         // 🔴 Conclusion
//         Row(
//           children: const [
//             Icon(Icons.stop_circle_outlined, color: Colors.red),
//             SizedBox(width: 8),
//             Text(
//               "Conclusion",
//               style: TextStyle(
//                 fontWeight: FontWeight.bold,
//                 fontSize: 16,
//                 color: Colors.red,
//               ),
//             ),
//           ],
//         ),
//         const SizedBox(height: 10),
//         const Text(
//           "Satyanarayana Puja is not just a ritual—it’s a celebration of truth, devotion, and divine grace. A timeless tradition that strengthens families, uplifts communities, and brings light to our lives.",
//           style: TextStyle(height: 1.6, fontSize: 14),
//         ),
        
//           ],
//         ),
//       );

      

// }


