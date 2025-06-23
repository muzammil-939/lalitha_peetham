import 'package:flutter/material.dart';
import 'package:lalitha_peetham/screens/matrimony/matimony_page_layout.dart';

class OrdersPageContainer extends StatelessWidget {
  const OrdersPageContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return MatriPageLayout(
      child: Container(
        width: double.infinity,
        height: 800,
        color: Color(0xFFF5F6F8), // Cyan background
        padding: EdgeInsets.symmetric(vertical: 40, horizontal: 150),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Left column with sidebar and bottom sections
            Container(
              width: 260,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Yellow Sidebar
                  Container(
                    width: 260,
                    decoration: BoxDecoration(color: Color(0xFFD4B942)),
                    padding: EdgeInsets.all(20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // My Quick Links Header
                        Text(
                          'MY QUICK LINKS',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 1.5,
                          ),
                        ),
                        SizedBox(height: 25),

                        // Navigation Links with dividers
                        _buildNavItem('• Shortlists & More'),
                        _buildDivider(),
                        _buildNavItem('• New Matches'),
                        _buildDivider(),
                        _buildNavItem('• My Matches'),
                        _buildDivider(),
                        _buildNavItem('• Near Me'),
                        _buildDivider(),
                        _buildNavItem('• Add Saved Searches'),
                        _buildDivider(),
                        _buildNavItem('• My Help'),
                      ],
                    ),
                  ),

                  SizedBox(height: 30),

                  // Profile ID Search Section (on cyan background)
                  Text(
                    'PROFILE ID SEARCH',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1.2,
                    ),
                  ),
                  SizedBox(height: 15),

                  // Search Input and Button
                  Row(
                    children: [
                      Container(
                        width: 140,
                        height: 35,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey[400]!),
                          borderRadius: BorderRadius.circular(3),
                          color: Colors.white,
                        ),
                        child: TextField(
                          style: TextStyle(fontSize: 12),
                          decoration: InputDecoration(
                            hintText: 'Enter Profile Id',
                            hintStyle: TextStyle(
                              color: Colors.grey[500],
                              fontSize: 12,
                            ),
                            border: InputBorder.none,
                            contentPadding: EdgeInsets.symmetric(
                              horizontal: 10,
                              vertical: 10,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(width: 8),
                      Container(
                        height: 35,
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Color(0xFFE67E22),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(3),
                            ),
                            padding: EdgeInsets.symmetric(horizontal: 15),
                            elevation: 1,
                          ),
                          child: Text(
                            'Go',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),

                  SizedBox(height: 30),

                  // Useful Links Section (on cyan background)
                  Text(
                    'USEFUL LINKS',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1.2,
                    ),
                  ),
                  SizedBox(height: 15),

                  // Useful Links
                  _buildUsefulLink('🔗', 'Refer A Friend'),
                  SizedBox(height: 8),
                  _buildUsefulLink('❓', 'Need Help?'),
                  SizedBox(height: 8),
                  _buildUsefulLink('📋', 'Security Tips'),
                ],
              ),
            ),

            SizedBox(width: 100),

            // Right side - White container with MY ORDERS
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(5),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.1),
                      blurRadius: 5,
                      offset: Offset(0, 2),
                    ),
                  ],
                ),
                padding: EdgeInsets.all(25),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // MY ORDERS Header
                    Text(
                      'MY ORDERS',
                      style: TextStyle(
                        color: Color(0xFFE67E22),
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 2.5,
                      ),
                    ),
                    SizedBox(height: 25),

                    // Orders Description
                    Text(
                      'This Section Provides Details About Your Orders',
                      style: TextStyle(
                        color: Colors.grey[600],
                        fontSize: 14,
                        height: 1.4,
                      ),
                    ),
                    SizedBox(height: 5),
                    Text(
                      'For Our Premium Services.',
                      style: TextStyle(
                        color: Colors.grey[600],
                        fontSize: 14,
                        height: 1.4,
                      ),
                    ),
                    SizedBox(height: 25),

                    // No Orders Message
                    Text(
                      'You Have Not Placed Any Orders With Us.',
                      style: TextStyle(
                        color: Colors.grey[600],
                        fontSize: 14,
                        height: 1.4,
                      ),
                    ),

                    // Spacer to push help text to bottom
                    Spacer(),

                    // Help Information at bottom
                    RichText(
                      text: TextSpan(
                        style: TextStyle(
                          color: Colors.grey[600],
                          fontSize: 13,
                          height: 1.5,
                        ),
                        children: [
                          TextSpan(
                            text:
                                'If You Require Any Further Help Or Information, Please Feel\nFree To Write To ',
                          ),
                          TextSpan(
                            text: 'Customer Support',
                            style: TextStyle(
                              color: Color(0xFFE67E22),
                              decoration: TextDecoration.underline,
                            ),
                          ),
                          TextSpan(text: ' Or Call Us At\n'),
                          TextSpan(
                            text: '+91-8905031111',
                            style: TextStyle(color: Color(0xFFE67E22)),
                          ),
                          TextSpan(text: ' With Your '),
                          TextSpan(
                            text: 'Order ID',
                            style: TextStyle(
                              color: Color(0xFFE67E22),
                              decoration: TextDecoration.underline,
                            ),
                          ),
                          TextSpan(text: ' And A Description Of The\nIssue.'),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildNavItem(String text) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 12),
      child: Text(
        text,
        style: TextStyle(color: Colors.white, fontSize: 14, height: 1.3),
      ),
    );
  }

  Widget _buildDivider() {
    return Container(height: 1, color: Colors.white.withOpacity(0.3));
  }

  Widget _buildUsefulLink(String icon, String text) {
    return Row(
      children: [
        Text(icon, style: TextStyle(fontSize: 14)),
        SizedBox(width: 6),
        Text(
          text,
          style: TextStyle(
            color: Color(0xFFE67E22),
            fontSize: 14,
            decoration: TextDecoration.underline,
          ),
        ),
      ],
    );
  }
}
