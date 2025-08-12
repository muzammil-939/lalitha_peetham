import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:lalitha_peetham/screens/upcoming_poojas_screens/upcoming_pooja_layout.dart';
import 'package:lalitha_peetham/widgets/reusable_responsive_type_widget.dart';

class BookingSummary extends StatefulWidget {
  const BookingSummary({super.key});

  @override
  State<BookingSummary> createState() => _BookingSummaryState();
}

class _BookingSummaryState extends State<BookingSummary> {
  @override
  Widget build(BuildContext context) {
    return UpcomingPoojaLayout(
      child: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 80),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 150,vertical: 20),
              child: Container(
                width: double.infinity,
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: const Color(0xFFFFF2CC), // Light yellow background
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    /// Title
                    const Center(
                      child: Text(
                        "Payment",
                        style: TextStyle(
                          fontSize: 26,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),

                    /// Booking Summary
                    sectionTitle("Booking Summary"),
                    const SizedBox(height: 10),
                    Row(
                      children: [
                        buildInfoRow("Customer Name", "Ram Kumar"),
                        SizedBox(width: 50,),
                        buildInfoRow("Pooja", "Ganesh Chaturthi"),
                      ],
                    ),
                    SizedBox(height: 20,),
                    Row(
                      children: [
                        buildInfoRow("Date", "September 10, 2024"),
                        SizedBox(width: 50,),
                         buildInfoRow("Time", "9:00 AM"),
                      ],
                    ),
                   SizedBox(height: 20,),
                    Row(
                      children: [
                        buildInfoRow("Location", "Home Visit, Hyderabad"),
                        SizedBox(width: 50,),
                         buildInfoRow("Total Amount Payable", "₹7,500"),
                      ],
                    ),
                   
                    const Divider(thickness: 1, height: 30),

                    /// Charges Breakdown
                    sectionTitle("Charges Breakdown"),
                    const SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        buildChargeRow("Pooja Booking", "₹1,500"),
                        SizedBox(width: 50,),
                        buildChargeRow("Flower Decoration", "₹2,000"),
                   
                      ],
                    ),
                    SizedBox(height: 16,),
                     Row(
                       children: [
                         buildChargeRow("Photography/Videography", "₹2,500"),
                         SizedBox(width: 50,),
                         buildChargeRow("Pooja Samagri", "₹1,000"),
                       ],
                     ),
                    
                    const Divider(thickness: 1, height: 30),

                    /// Payment Method
                    sectionTitle("Payment Method"),
                    const SizedBox(height: 10),
                    buildPaymentButton(context, 'assets/images/vastupooja12.png', 'Payment'),
                    buildPaymentButton(context, 'assets/images/vastupooja13.png', 'Payment'),
                    buildPaymentButton(context, 'assets/images/vastupooja14.png', 'Payment'),
                    buildPaymentButton(context, 'assets/images/vastupooja15.png', 'Payment'),

                    const SizedBox(height: 25),

                    /// Pay Button
                    Center(
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xFFFFC000),
                          foregroundColor: Colors.black,
                          padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 12),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30),
                          ),
                        ),
                        onPressed: () {
                         context.go('/booking_deatils_page');
                        },
                        child: const Text("Pay"),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 80,)
          ],
        ),
      ),
    );
  }

  Widget sectionTitle(String text) {
    return Text(
      text,
      style: const TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 16,
        color: Colors.black87,
      ),
    );
  }
Widget buildInfoRow(String label, String value) {
  return SizedBox(
    width: 200, // fixed width for perfect column alignment
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start, // left align
      children: [
        Text(
          label,
          style: const TextStyle(
            fontSize: 14,
            color: Colors.black87,
            fontWeight: FontWeight.w600,
          ),
        ),
        const SizedBox(height: 2),
        Text(
          value,
          style: const TextStyle(
            fontSize: 12,
            color: Colors.grey,
          ),
        ),
      ],
    ),
  );
}

Widget buildChargeRow(String label, String value) {
  return SizedBox(
    width: 200,
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: const TextStyle(
            fontSize: 14,
            color: Colors.black87,
            fontWeight: FontWeight.w600,
          ),
        ),
        const SizedBox(height: 2),
        Text(
          value,
          style: const TextStyle(
            fontSize: 12,
            color: Colors.grey,
          ),
        ),
      ],
    ),
  );
}

  Widget buildPaymentButton(BuildContext context, String logoAsset, String text) {
    final screenWidth = MediaQuery.of(context).size.width;
    final isMobile = ResponsiveHelper.isMobile(context);
    final buttonWidth = isMobile ? screenWidth : screenWidth * 0.50;

    return Container(
      width: buttonWidth,
      margin: const EdgeInsets.only(bottom: 10),
      padding: const EdgeInsets.symmetric(horizontal: 10),
      decoration: BoxDecoration(
        color: Colors.grey.shade300,
        borderRadius: BorderRadius.circular(6),
      ),
      height: 45,
      child: Row(
        children: [
          Image.asset(logoAsset, height: 24),
          const SizedBox(width: 15),
          Text(
            text,
            style: TextStyle(fontSize: isMobile ? 14 : 16, color: Colors.black87),
          ),
        ],
      ),
    );
  }
}
