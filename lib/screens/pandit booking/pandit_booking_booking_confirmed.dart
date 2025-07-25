import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:lalitha_peetham/screens/online_vastu_property/vastupooja_layout.dart';
import 'package:lalitha_peetham/screens/palm_reading/palm_reading_layout.dart';
import 'package:lalitha_peetham/screens/pandit%20booking/pandit_booking_layout.dart';

class PanditBookingBookingConfirmed extends StatefulWidget {
  const PanditBookingBookingConfirmed({super.key});

  @override
  State<PanditBookingBookingConfirmed> createState() =>
      _PanditBookingBookingConfirmedState();
}

class _PanditBookingBookingConfirmedState
    extends State<PanditBookingBookingConfirmed> {
  @override
  Widget build(BuildContext context) {
    return PanditBookingLayout(
      child: SingleChildScrollView(
        child: Column(
          children: [
            buildherosection(),
            buildVastuBookingEnquiryFormPage(),
            SizedBox(height: 80),
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
              Text(
                "Menu",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
        Positioned(
          top: 120,
          child: Column(
            children: const [
              Text(
                "Booking Confirmed track your pooja",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 38,
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
              'assets/images/pandit_booking_home.png',
              height: 180,
              width: 280,
              fit: BoxFit.cover,
            ),
          ),
        ),
      ],
    );
  }

  Widget buildVastuBookingEnquiryFormPage() {
    return Stack(
      children: [
        // 🌄 Full Background Image
        Positioned.fill(
          child: Image.asset(
            'assets/images/vastupooja4.png',
            fit: BoxFit.cover,
          ),
        ),

        // 🌑 Planet Image (top-right)
        Positioned(
          top: 100,
          right: 40,
          child: Image.asset(
            'assets/images/vastupooja11.png',
            height: 80,
            width: 80,
          ),
        ),

        // 🌟 Foreground Content
        Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 60),
              const Text(
                "Booking Confirmed – Thank You!",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 80),

              // Fixed Form Container
              Container(
                width: 800,
                padding: const EdgeInsets.all(30),
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [Color(0xFFE6C85D), Color(0xFFD4B54A)],
                  ),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: double.infinity,
                      child: Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            // Success Message
                            Container(
                              padding: EdgeInsets.all(16),
                              child: Text(
                                "Your Pandit has been successfully booked. We've received your advance payment and your puja is scheduled.",
                                style: TextStyle(
                                  color: Colors.black87,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),

                            SizedBox(height: 20),

                            // Booking Details Section
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Booking Details",
                                        style: TextStyle(
                                          color: Colors.black87,
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      SizedBox(height: 16),

                                      // Booking details list
                                      _buildDetailItem("Name:", "Ravi Kumar"),
                                      _buildDetailItem(
                                        "Mobile:",
                                        "+91 9876543210",
                                      ),
                                      _buildDetailItem(
                                        "Puja Type:",
                                        "Satyanarayana Puja (Housewarming)",
                                      ),
                                      _buildDetailItem(
                                        "Date & Time:",
                                        "15 June 2025, 9:00 AM",
                                      ),
                                      _buildDetailItem(
                                        "Location:",
                                        "Habsiguda, Hyderabad",
                                      ),
                                      _buildDetailItem(
                                        "Preferred Language:",
                                        "Telugu",
                                      ),
                                      _buildDetailItem(
                                        "Samagri Provided by Pandit:",
                                        "",
                                      ),
                                      _buildDetailItem("Samagri Cost:", "₹600"),
                                      _buildDetailItem("Pandit Fee:", "₹1400"),
                                      _buildDetailItem(
                                        "Total Amount:",
                                        "₹2000",
                                      ),
                                      _buildDetailItem("Advance Paid:", "₹500"),
                                      _buildDetailItem(
                                        "Balance to Pay on Puja Day:",
                                        "₹1500",
                                      ),
                                    ],
                                  ),
                                ),

                                // Placeholder image box
                                Container(
                                  width: 80,
                                  height: 60,
                                  decoration: BoxDecoration(
                                    color: Colors.grey[300],
                                    borderRadius: BorderRadius.circular(4),
                                  ),
                                ),
                              ],
                            ),

                            SizedBox(height: 30),

                            // Assigned Pandit Details Section
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Assigned Pandit Details",
                                        style: TextStyle(
                                          color: Colors.black87,
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      SizedBox(height: 16),

                                      // Pandit details list
                                      _buildDetailItem(
                                        "Name:",
                                        "Pandit Sharmaji",
                                      ),
                                      _buildDetailItem(
                                        "Contact Number:",
                                        "+91 91234 56789",
                                      ),
                                      _buildDetailItem(
                                        "Experience:",
                                        "10+ Years",
                                      ),
                                      _buildDetailItem("Language:", "Telugu"),
                                      Row(
                                        children: [
                                          Text(
                                            "Will Bring Samagri: ",
                                            style: TextStyle(
                                              color: Colors.black87,
                                              fontSize: 14,
                                              fontWeight: FontWeight.w500,
                                            ),
                                          ),
                                          Icon(
                                            Icons.check,
                                            color: Colors.green,
                                            size: 16,
                                          ),
                                          Text(
                                            "Yes",
                                            style: TextStyle(
                                              color: Colors.green,
                                              fontSize: 14,
                                              fontWeight: FontWeight.w500,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),

                                // Placeholder image box
                                Container(
                                  width: 80,
                                  height: 60,
                                  decoration: BoxDecoration(
                                    color: Colors.grey[300],
                                    borderRadius: BorderRadius.circular(4),
                                  ),
                                ),
                              ],
                            ),

                            SizedBox(height: 30),

                            // Payment Details Table
                            Container(
                              width: double.infinity,
                              child: Table(
                                border: TableBorder.all(
                                  color: Colors.black54,
                                  width: 1,
                                ),
                                children: [
                                  // Header row
                                  TableRow(
                                    decoration: BoxDecoration(
                                      color: Colors.black12,
                                    ),
                                    children: [
                                      _buildTableHeader("Payment Type"),
                                      _buildTableHeader("Amount (₹)"),
                                      _buildTableHeader("Status"),
                                    ],
                                  ),
                                  // Data rows
                                  TableRow(
                                    children: [
                                      _buildTableCell("Advance Paid"),
                                      _buildTableCell("₹500"),
                                      _buildTableCell("Received"),
                                    ],
                                  ),
                                  TableRow(
                                    children: [
                                      _buildTableCell("Remaining Balance"),
                                      _buildTableCell("₹1500"),
                                      _buildTableCell("To Be Paid On Puja Day"),
                                    ],
                                  ),
                                ],
                              ),
                            ),

                            SizedBox(height: 30),

                            // Payment Method Details
                            Text(
                              "Payment Method (Advance)",
                              style: TextStyle(
                                color: Colors.black87,
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: 16),

                            _buildDetailItem(
                              "Paid via:",
                              "Google Pay / PhonePe",
                            ),
                            _buildDetailItem("UPI ID:", "panditbooking@upi"),
                            _buildDetailItem("Transaction ID:", "TXN-PB952741"),
                            _buildDetailItem("Date:", "11 June 2025, 10:15 AM"),

                            SizedBox(height: 30),

                            // Next Step
                            Text(
                              "Next Step",
                              style: TextStyle(
                                color: Colors.black87,
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: 16),

                            Text(
                              "Kindly Pay The Remaining ₹1500 In Cash Or UPI Directly To The Pandit After The Puja Is Completed.",
                              style: TextStyle(
                                color: Colors.black87,
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                              ),
                            ),

                            SizedBox(height: 8),

                            Text(
                              "A Confirmation Message Has Been Sent To Your Email And WhatsApp With All Puja Details",
                              style: TextStyle(
                                color: Colors.black87,
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                              ),
                            ),

                            SizedBox(height: 40),

                            // Buttons
                            Row(
                              children: [
                                Expanded(
                                  child: Container(
                                    height: 50,
                                    margin: EdgeInsets.only(right: 8),
                                    child: ElevatedButton(
                                      onPressed: () {},
                                      style: ElevatedButton.styleFrom(
                                        backgroundColor: Colors.grey[400],
                                        foregroundColor: Colors.black87,
                                        elevation: 2,
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(
                                            8,
                                          ),
                                        ),
                                      ),
                                      child: Text(
                                        "Download Details",
                                        style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: Container(
                                    height: 50,
                                    margin: EdgeInsets.only(left: 8),
                                    child: ElevatedButton(
                                      onPressed: () {
                                        context.go('/pandit_booking_waiting');
                                      },
                                      style: ElevatedButton.styleFrom(
                                        backgroundColor: Colors.white,
                                        foregroundColor: Colors.black87,
                                        elevation: 2,
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(
                                            8,
                                          ),
                                        ),
                                      ),
                                      child: Text(
                                        "Home",
                                        style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),

                            SizedBox(height: 20),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildDetailItem(String label, String value) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            label,
            style: TextStyle(
              color: Colors.black87,
              fontSize: 14,
              fontWeight: FontWeight.w500,
            ),
          ),
          SizedBox(width: 8),
          Expanded(
            child: Text(
              value,
              style: TextStyle(
                color: Colors.black87,
                fontSize: 14,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildTableHeader(String text) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Text(
        text,
        style: TextStyle(
          color: Colors.black87,
          fontSize: 14,
          fontWeight: FontWeight.bold,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }

  Widget _buildTableCell(String text) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Text(
        text,
        style: TextStyle(
          color: Colors.black87,
          fontSize: 14,
          fontWeight: FontWeight.w400,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}
