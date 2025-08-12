import 'package:flutter/material.dart';

class PaymentTab extends StatefulWidget {
  const PaymentTab({super.key});

  @override
  State<PaymentTab> createState() => _PaymentTabState();
}

class _PaymentTabState extends State<PaymentTab> {

  int selectedTabIndex = 0;
  bool isChatSelected = true;
 int myBookingsTabIndex = 0;
 bool isDetailedPaymentSelected = true; 

  @override
  Widget build(BuildContext context) {
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
