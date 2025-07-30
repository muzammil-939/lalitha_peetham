import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:lalitha_peetham/screens/online_vastu_property/vastupooja_layout.dart';
import 'package:lalitha_peetham/widgets/reusable_responsive_type_widget.dart';

class NityapoojaBookingsPage extends StatefulWidget {
  const NityapoojaBookingsPage({super.key});

  @override
  State<NityapoojaBookingsPage> createState() => _NityapoojaBookingsPageState();
}

class _NityapoojaBookingsPageState extends State<NityapoojaBookingsPage> {
  int selectedTabIndex = 0;
  bool isChatSelected = true;
 int myBookingsTabIndex = 0;
 bool isDetailedPaymentSelected = true; // Toggle between the two views


  final List<String> tabTitles = [
    "My Bookings",
    "Payments",
    "Support",
  ];

  final TextEditingController fullNameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController issueController = TextEditingController();
  final TextEditingController commentController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return VastupoojaLayout(
      child: SingleChildScrollView(
        child: Column(
          children: [
            buildHeroSection(),
            const ResponsiveTitleSection(),
          ResponsiveTabNavigation(
            selectedTabIndex: selectedTabIndex,
            onTabSelected: (index) {
              setState(() => selectedTabIndex = index);
            },
            tabTitles: tabTitles,
          ),
          ResponsiveTabContent(
            selectedTabIndex: selectedTabIndex,
            buildMyBookingTabs: () => buildMybookingtabs(context),

            buildPaymentTabs:()=> buildpaymenttabs(context),
            buildSupportTabs:()=> buildSupportTabs(context),
          ),
          ],
        ),
      ),
    );
  }

  Widget buildHeroSection() {
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


Widget responsiveContainer({
  required BuildContext context,
  required Widget child,
  Color color = const Color(0xFFEAC63E),
  double horizontalPadding = 20,
  double verticalPadding = 20,
}) {
  final screenWidth = MediaQuery.of(context).size.width;

  double horizontalMargin = screenWidth < 600
      ? 10
      : screenWidth < 900
          ? 40
          : 100;

  return Container(
    margin: EdgeInsets.symmetric(horizontal: horizontalMargin, vertical: 20),
    padding: EdgeInsets.symmetric(
      horizontal: horizontalPadding,
      vertical: verticalPadding,
    ),
    decoration: BoxDecoration(
      color: color,
      borderRadius: BorderRadius.circular(0),
    ),
    child: child,
  );
}

Widget _buildTabToggle({
  required BuildContext context,
  required List<String> tabs,
  required int selectedIndex,
  required void Function(int index) onTap,
}) {
  return Wrap(
    spacing: 20,
    runSpacing: 10,
    children: List.generate(tabs.length, (index) {
      return GestureDetector(
        onTap: () => onTap(index),
        child: Text(
          tabs[index],
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w600,
            decoration:
                selectedIndex == index ? TextDecoration.underline : null,
          ),
        ),
      );
    }),
  );
}

Widget buildMybookingtabs(BuildContext context) {
  final screenWidth = MediaQuery.of(context).size.width;
  final isMobile = screenWidth < 600;

  return responsiveContainer(
    context: context,
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 10),
        _buildTabToggle(
          context: context,
          tabs: ["Active", "Expired"],
          selectedIndex: myBookingsTabIndex,
          onTap: (index) => setState(() => myBookingsTabIndex = index),
        ),
        const SizedBox(height: 30),
        buildBookingCard(context, isExpired: myBookingsTabIndex == 1, isMobile: isMobile),
      ],
    ),
  );
}

Widget buildBookingCard(BuildContext context, {required bool isExpired,required bool isMobile}) {
  final screenWidth = MediaQuery.of(context).size.width;
  final isMobile = screenWidth < 600;

  return Container(
    padding: const EdgeInsets.all(18),
    decoration: BoxDecoration(color: Colors.white),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        isMobile
            ? Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: _buildBookingInfo(context, isExpired, isMobile),
              )
            : Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: _buildBookingInfo(context, isExpired, isMobile),
              ),
        const SizedBox(height: 20),
        if (!isExpired) ...[
          const Row(
            children: [
              Text("Total Amount: ₹ 8,999"),
              Spacer(),
              Text("Download Invoice (PDF)", style: TextStyle(decoration: TextDecoration.underline)),
            ],
          ),
          const Row(
            children: [
              Text("Invoice ID: INV-2025-0610-001"),
              Spacer(),
              Text("Contact Billing Support", style: TextStyle(decoration: TextDecoration.underline)),
            ],
          ),
          const SizedBox(height: 10),
          Align(
            alignment: Alignment.centerRight,
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 22, vertical: 6),
              decoration: BoxDecoration(
                color: Color(0xFF71B023),
                borderRadius: BorderRadius.circular(4),
              ),
              child: const Text("Confirmed", style: TextStyle(color: Colors.white)),
            ),
          )
        ] else ...[
          const SizedBox(height: 10),
          Wrap(
            spacing: 12,
            runSpacing: 12,
            children: [
              ResponsiveButton(
                onPressed: () => context.go('/nityapooja_renewaldetails_page'),
                text: "Renew",
                textColor: Colors.black,
                backgroundColor: const Color(0xFFECCE5C),
              ),
              ResponsiveButton(
                onPressed: () {},
                text: "Change Package",
                textColor: Colors.black,
                backgroundColor: const Color(0xFFECCE5C),
              ),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 6),
                decoration: BoxDecoration(
                  color: const Color(0xFFEA5045),
                  borderRadius: BorderRadius.circular(4),
                ),
                child: const Text("Expired", style: TextStyle(color: Colors.white)),
              ),
            ],
          )
        ],
      ],
    ),
  );
}


List<Widget> _buildBookingInfo(BuildContext context, bool isExpired, bool isMobile) {
  final infoColumn = Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: const [
      Text("Temple: Tirumala Balaji Temple", style: TextStyle(fontSize: 13)),
      Text("Performed By: Pandit Ravi Kumar", style: TextStyle(fontSize: 13)),
      Text("Duration: 30 Days", style: TextStyle(fontSize: 13)),
      Text("Start Date: 15-May-2025", style: TextStyle(fontSize: 13)),
      Text("End Date: 13-Jun-2025", style: TextStyle(fontSize: 13)),
      Text("Time: Daily at 6:00 AM", style: TextStyle(fontSize: 13)),
      Text("Purpose: Family Peace & Health", style: TextStyle(fontSize: 13)),
    ],
  );

  return isMobile
      ? [
          ClipRRect(
            borderRadius: BorderRadius.circular(6),
            child: Image.asset(
              'assets/images/durga.jpg',
              height: 150,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(height: 16),
          infoColumn,
          const SizedBox(height: 16),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
            decoration: BoxDecoration(
              color: const Color(0xFFECCE5C),
              borderRadius: BorderRadius.circular(6),
            ),
            child: const Text(
              "Full Amount: ₹ 8,999",
              style: TextStyle(fontSize: 13, fontWeight: FontWeight.w500, color: Colors.black),
            ),
          ),
        ]
      : [
          ClipRRect(
            borderRadius: BorderRadius.circular(6),
            child: Image.asset(
              'assets/images/durga.jpg',
              height: 150,
              width: 150,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(width: 16),
          Expanded(child: infoColumn),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
            decoration: BoxDecoration(
              color: const Color(0xFFECCE5C),
              borderRadius: BorderRadius.circular(6),
            ),
            child: const Text(
              "Full Amount: ₹ 8,999",
              style: TextStyle(fontSize: 13, fontWeight: FontWeight.w500, color: Colors.black),
            ),
          ),
        ];
}

Widget buildpaymenttabs(BuildContext context) {
  final screenWidth = MediaQuery.of(context).size.width;
  final isMobile = screenWidth < 600;

  return responsiveContainer(
    context: context,
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _buildTabToggle(
          context: context,
          tabs: ["Payments", "Payment Status"],
          selectedIndex: isDetailedPaymentSelected ? 0 : 1,
          onTap: (index) =>
              setState(() => isDetailedPaymentSelected = index == 0),
        ),
        const SizedBox(height: 20),
        isDetailedPaymentSelected
            ? buildPaymentCardDetails(context, isMobile: isMobile)
            : buildPaymentSuccessStatus(context),
      ],
    ),
  );
}
Widget buildPaymentCardDetails(BuildContext context, {required bool isMobile}) {
  return Container(
    width: double.infinity,
    padding: const EdgeInsets.all(20),
    decoration: const BoxDecoration(color: Colors.white),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        isMobile
            ? Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  buildPaymentImage(),
                  const SizedBox(height: 12),
                  buildPaymentTextInfo(),
                  const SizedBox(height: 12),
                  buildAmountBadge(),
                ],
              )
            : Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  buildPaymentImage(),
                  const SizedBox(width: 20),
                  Expanded(child: buildPaymentTextInfo()),
                  const SizedBox(width: 20),
                  buildAmountBadge(),
                ],
              ),
        const SizedBox(height: 20),

        // ✅ Invoice Info
        isMobile ? buildInvoiceColumn() : buildInvoiceRow(),

        const SizedBox(height: 20),
        const Align(alignment: Alignment.centerLeft, child: Text("Payment Status: Paid")),
        const SizedBox(height: 10),

        Align(
          alignment: Alignment.centerRight,
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
            decoration: BoxDecoration(
              color: Color(0xFF71B023),
              borderRadius: BorderRadius.circular(5),
            ),
            child: const Text("Confirmed", style: TextStyle(color: Colors.white)),
          ),
        ),
      ],
    ),
  );
}
Widget buildPaymentImage() {
  return Image.asset(
    'assets/images/durga.jpg',
    height: 150,
    width: 150,
    fit: BoxFit.cover,
  );
}

Widget buildPaymentTextInfo() {
  return const Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text("Temple: Tirumala Balaji Temple"),
      Text("Performed By: Pandit Ravi Kumar"),
      Text("Duration: 30 Days"),
      Text("Start Date: 15-May-2025"),
      Text("End Date: 13-Jun-2025"),
      Text("Time: Daily at 6:00 AM"),
      Text("Purpose: Family Peace & Health"),
    ],
  );
}

Widget buildAmountBadge() {
  return Container(
    padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
    decoration: BoxDecoration(
      color: Color(0xFFE4B5B5),
      borderRadius: BorderRadius.circular(4),
    ),
    child: const Text("Full Amount: ₹ 8,999", style: TextStyle(color: Colors.black)),
  );
}

Widget buildInvoiceColumn() {
  return const Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text("Total Amount: ₹9,999"),
      SizedBox(height: 8),
      Text("Download Invoice (PDF)", style: TextStyle(decoration: TextDecoration.underline)),
      SizedBox(height: 8),
      Text("Invoice ID: INV-2025-0610-001"),
      SizedBox(height: 8),
      Text("Contact Billing Support", style: TextStyle(decoration: TextDecoration.underline)),
    ],
  );
}

Widget buildInvoiceRow() {
  return const Column(
    children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text("Total Amount: ₹9,999"),
          Text("Download Invoice (PDF)", style: TextStyle(decoration: TextDecoration.underline)),
        ],
      ),
      SizedBox(height: 8),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text("Invoice ID: INV-2025-0610-001"),
          Text("Contact Billing Support", style: TextStyle(decoration: TextDecoration.underline)),
        ],
      ),
    ],
  );
}

Widget buildPaymentSuccessStatus(BuildContext context) {
  final screenWidth = MediaQuery.of(context).size.width;
  final isMobile = screenWidth < 600;

  return Container(
    padding: const EdgeInsets.all(20),
    decoration: const BoxDecoration(color: Colors.white),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        isMobile
            ? Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset(
                    'assets/images/durga.jpg',
                    height: 150,
                    width: 150,
                    fit: BoxFit.cover,
                  ),
                  const SizedBox(height: 12),
                  const Text("Pooja Type: Lakshmi Nithya Pooja"),
                  const Text("Duration: 30 Days"),
                  const Text("Start Date: 20 June 2025"),
                  const Text("Temple/Deity: Sree Lalitha Peetham, Hyderabad"),
                  const Text("End date: 10 July 2025"),
                ],
              )
            : Row(
                children: [
                  Image.asset(
                    'assets/images/durga.jpg',
                    height: 150,
                    width: 150,
                    fit: BoxFit.cover,
                  ),
                  const SizedBox(width: 20),
                  const Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Pooja Type: Lakshmi Nithya Pooja"),
                        Text("Duration: 30 Days"),
                        Text("Start Date: 20 June 2025"),
                        Text("Temple/Deity: Sree Lalitha Peetham, Hyderabad"),
                        Text("End date: 10 July 2025"),
                      ],
                    ),
                  )
                ],
              ),
        const SizedBox(height: 20),
        const Text("Payment Status: Paid"),
        const Text("• Payment Mode: UPI (Google Pay)"),
        const Text("• Transaction ID: TXN4827495182"),
        const Text("• Amount Paid: 7999"),
        const Text("• Payment Date: 18 June 2025, 04:35 PM"),
        const Text("• Status: ✅ Success"),
        const SizedBox(height: 20),
        const Text("🙏 Thank you for your booking!"),
        const Text("Your Nithya Pooja will be performed as per schedule."),
        const Text("You will receive regular updates via SMS/WhatsApp."),
        const Text("📞 For any queries, contact: +91-XXXXXXXXXX"),
        const SizedBox(height: 20),
        const Text(
          "Facing Payment Issues? Contact Our Support Team",
          style: TextStyle(fontWeight: FontWeight.w600),
        ),
        const SizedBox(height: 10),
        const Center(child: ContactButton()),
      ],
    ),
  );
}

Widget buildSupportTabs(BuildContext context) {
  return responsiveContainer(
    context: context,
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _buildTabToggle(
          context: context,
          tabs: ["Chat Support", "FAQ's Support"],
          selectedIndex: isChatSelected ? 0 : 1,
          onTap: (index) =>
              setState(() => isChatSelected = index == 0),
        ),
        const SizedBox(height: 20),
        isChatSelected ? buildChatSupportForm() : buildFaqSupportList(),
      ],
    ),
  );
}

Widget buildChatSupportForm() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      const Text(
        "Upload A Screenshot And Write Your Problem Below – You’ll Be Redirected To Chat Support",
        style: TextStyle(
          fontSize: 13,
          fontWeight: FontWeight.w400,
        ),
      ),
      const SizedBox(height: 25),

      // Full Name & Email
      Wrap(
        spacing: 20,
        runSpacing: 20,
        children: [
          SizedBox(
            width: 400,
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
          SizedBox(
            width: 400,
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
      Wrap(
        spacing: 20,
        runSpacing: 20,
        children: [
          SizedBox(
            width: 400,
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
          GestureDetector(
            onTap: () {
              // TODO: Implement image upload
            },
            child: Container(
              width: 400,
              height: 50,
              decoration: BoxDecoration(
                color: const Color(0xFFD9D9D9),
                borderRadius: BorderRadius.circular(4),
              ),
              child: const Center(child: Icon(Icons.add_circle_outline)),
            ),
          ),
        ],
      ),

      const SizedBox(height: 20),

      // Comment Box
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
          onPressed: () {
            //context.go('/pooja_service_confirm_page');
          },
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.white,
            padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 12),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30),
            ),
          ),
          child: const Text(
            "Submit",
            style: TextStyle(fontSize: 18, color: Colors.black),
          ),
        ),
      ),
    ],
  );
}
Widget buildFaqSupportList() {
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
        style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
      ),
      const SizedBox(height: 6),
      const Text(
        "Got questions? I’ve got answers!",
        style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
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
            title: Text(question, style: const TextStyle(fontSize: 14)),
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


}

class ContactButton extends StatelessWidget {
  const ContactButton({super.key});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // handle contact support
      },
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 35, vertical: 12),
        decoration: BoxDecoration(
          color: Color(0xFFF7D85F),
          borderRadius: BorderRadius.circular(40),
        ),
        child: const Text("Contact", style: TextStyle(fontSize: 16)),
      ),
    );
  }
}



class ResponsiveUtils {
  static bool isMobile(double width) => width < 600;
  static bool isTablet(double width) => width >= 600 && width < 1024;
  static bool isDesktop(double width) => width >= 1024;
}
class ResponsiveTitleSection extends StatelessWidget {
  const ResponsiveTitleSection({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final width = constraints.maxWidth;

        final bool isMobile = ResponsiveUtils.isMobile(width);
        final bool isTablet = ResponsiveUtils.isTablet(width);

        final imageHeight = isMobile ? 200.0 : isTablet ? 300.0 : 350.0;
        final fontSize = isMobile ? 20.0 : isTablet ? 32.0 : 45.0;
        final paddingX = isMobile ? 16.0 : isTablet ? 50.0 : 150.0;
        final topOffset = isMobile ? 60.0 : isTablet ? 100.0 : 120.0;
        final iconSize = isMobile ? 60.0 : 100.0;

        return Stack(
          children: [
            SizedBox(
              height: imageHeight,
              width: double.infinity,
              child: Image.asset(
                'assets/images/vastupooja4.png',
                fit: BoxFit.cover,
              ),
            ),
            Positioned(
              top: topOffset,
              right: 30,
              child: Image.asset(
                'assets/images/vastupooja11.png',
                height: iconSize,
                width: iconSize,
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: paddingX, vertical: 25),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 30),
                  Text(
                    "Access the Full List of Your Scheduled and\nActive Poojas",
                    style: TextStyle(
                      fontSize: fontSize,
                      fontWeight: FontWeight.w900,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ),
          ],
        );
      },
    );
  }
}

class ResponsiveTabNavigation extends StatelessWidget {
  final int selectedTabIndex;
  final Function(int) onTabSelected;
  final List<String> tabTitles;

  const ResponsiveTabNavigation({
    super.key,
    required this.selectedTabIndex,
    required this.onTabSelected,
    required this.tabTitles,
  });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final isMobile = ResponsiveUtils.isMobile(constraints.maxWidth);

        return Padding(
          padding: EdgeInsets.symmetric(
            horizontal: isMobile ? 16 : 50,
            vertical: 20,
          ),
          child: Wrap(
            spacing: 15,
            runSpacing: 10,
            children: List.generate(tabTitles.length, (index) {
              final bool isSelected = selectedTabIndex == index;
              return GestureDetector(
                onTap: () => onTabSelected(index),
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 10),
                  decoration: BoxDecoration(
                    color: isSelected ? Colors.white : Colors.grey.shade300,
                    borderRadius: BorderRadius.circular(2),
                    border: Border.all(
                      color: isSelected ? Colors.grey.shade400 : Colors.transparent,
                    ),
                  ),
                  width: isMobile ? double.infinity : 250,
                  child: Text(
                    tabTitles[index],
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      color: isSelected ? Colors.black : Colors.black87,
                    ),
                  ),
                ),
              );
            }),
          ),
        );
      },
    );
  }
}
class ResponsiveTabContent extends StatelessWidget {
  final int selectedTabIndex;
  final Widget Function() buildMyBookingTabs;
  final Widget Function() buildPaymentTabs;
  final Widget Function() buildSupportTabs;

  const ResponsiveTabContent({
    super.key,
    required this.selectedTabIndex,
    required this.buildMyBookingTabs,
    required this.buildPaymentTabs,
    required this.buildSupportTabs,
  });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final width = constraints.maxWidth;
        final double paddingX = width < 600 ? 16 : width < 1024 ? 32 : 100;

        late final Widget content;

        switch (selectedTabIndex) {
          case 0:
            content = buildMyBookingTabs();
            break;
          case 1:
            content = buildPaymentTabs();
            break;
          case 2:
            content = buildSupportTabs();
            break;
          default:
            content = const SizedBox.shrink();
        }

        return Padding(
          padding: EdgeInsets.symmetric(horizontal: paddingX, vertical: 20),
          child: content,
        );
      },
    );
  }
}
