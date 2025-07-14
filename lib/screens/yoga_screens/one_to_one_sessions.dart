import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:lalitha_peetham/screens/yoga_screens/yoga_layout.dart';

class OneToOneSessions extends StatelessWidget {
  const OneToOneSessions({super.key});

  @override
  Widget build(BuildContext context) {
    return YogaLayout(
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 100),
        color: Colors.grey[100],
        child: Column(
          children: [
            // First row of cards
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _buildYogaCard(context),
                _buildYogaCard(context),
                _buildYogaCard(context),
              ],
            ),
            SizedBox(height: 60),
            // Second row of cards
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _buildYogaCard(context),
                _buildYogaCard(context),
                _buildYogaCard(context),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildYogaCard(BuildContext context) {
    return Container(
      width: 240,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Image section
          Center(
            child: Container(
              height: 150,
              width: 220,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.vertical(top: Radius.circular(8)),
              ),
              child: Image.asset(
                'assets/images/personal_trainer.png',
                fit: BoxFit.cover,
              ),
            ),
          ),

          // Content section
          Padding(
            padding: EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Title with badge
                Row(
                  children: [
                    Text(
                      'BRAIN YOGA SPECIALIST',
                      style: TextStyle(
                        fontSize: 10,
                        fontWeight: FontWeight.bold,
                        color: Colors.black87,
                        letterSpacing: 0.5,
                      ),
                    ),
                    SizedBox(width: 6),
                    Text(
                      '(7 YRS EXP)',
                      style: TextStyle(
                        fontSize: 8,
                        fontWeight: FontWeight.bold,
                        color: Color(0xffC1B11F),
                      ),
                    ),
                  ],
                ),

                SizedBox(height: 8),

                // Instructor name
                Text(
                  'Krishna Raju (100 Points)',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    color: Colors.black87,
                  ),
                ),

                SizedBox(height: 6),

                // Total order info
                Row(
                  children: [
                    Text(
                      'TOTAL ORDER',
                      style: TextStyle(
                        fontSize: 9,
                        fontWeight: FontWeight.bold,
                        color: Colors.black87,
                      ),
                    ),
                    SizedBox(width: 4),
                    Text(
                      '(1,320)',
                      style: TextStyle(
                        fontSize: 8,
                        fontWeight: FontWeight.bold,
                        color: Color(0xffC1B11F),
                      ),
                    ),
                  ],
                ),

                SizedBox(height: 12),

                // Pricing section
                Row(
                  children: [
                    Text(
                      '₹2,199.00',
                      style: TextStyle(
                        fontSize: 12,
                        color: Color(0xffC1B11F),
                        decoration: TextDecoration.lineThrough,
                      ),
                    ),
                    SizedBox(width: 8),
                    Text(
                      '₹1,850.00/',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: Color(0xffC1B11F),
                      ),
                    ),
                    Text(
                      ' month',
                      style: TextStyle(fontSize: 12, color: Color(0xffC1B11F)),
                    ),
                  ],
                ),

                SizedBox(height: 16),

                // Join Now button
                SizedBox(
                  width: double.infinity,
                  height: 40,
                  child: ElevatedButton(
                    onPressed: () {
                      context.go('/onetoone_sessions_booking');
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xffC1B11F), // Olive/mustard color
                      foregroundColor: Colors.white,
                      elevation: 0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(4),
                      ),
                    ),
                    child: Text(
                      'JOIN NOW',
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 1,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
