import 'package:flutter/material.dart';
import 'package:lalitha_peetham/screens/refer&earn/refer_layout.dart';

class ReferandEarn extends StatelessWidget {
  const ReferandEarn({super.key});

  @override
  Widget build(BuildContext context) {
    return ReferLayout(
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 100),
        width: double.infinity,
        child: Column(
          children: [
            // Header Section
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Left side content
                Padding(
                  padding: const EdgeInsets.only(left: 200),
                  child: SizedBox(
                    width: 500,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'MY LALITHA PEETHAM /',
                          style: TextStyle(
                            fontSize: 40,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                            height: 1.1,
                            letterSpacing: 1.25,
                          ),
                        ),
                        const Text(
                          'REFER & EARN',
                          style: TextStyle(
                            fontSize: 40,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                            height: 1.1,
                            letterSpacing: 1.25,
                          ),
                        ),
                        const SizedBox(height: 20),
                        const Text(
                          'Invite Your Friends To Try Our Services',
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.black87,
                            height: 1.4,
                          ),
                        ),
                        const Text(
                          'And Get Rewarded Every Time They Book!',
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.black87,
                            height: 1.4,
                          ),
                        ),
                        const SizedBox(height: 30),
                        Container(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 60,
                            vertical: 20,
                          ),
                          decoration: BoxDecoration(
                            color: const Color(0xFFD4BB26),
                          ),
                          child: const Text(
                            'Get Your Referal Link',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Spacer(),
                // Right side golden section
                SizedBox(
                  width: 350,
                  height: 400,
                  child: Image.asset(
                    'assets/images/refer&earn.png',
                    fit: BoxFit.contain,
                  ),
                ),
              ],
            ),

            const SizedBox(height: 60),

            // How it works section
            const Center(
              child: Text(
                'HOW IT WORKS',
                style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                  letterSpacing: 1.25,
                ),
              ),
            ),

            const SizedBox(height: 40),

            // Three steps row
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 250),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  // Step 1 - Share
                  Material(
                    elevation: 3,
                    child: Container(
                      width: 200,
                      height: 350,
                      padding: const EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(8),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.1),
                            spreadRadius: 1,
                            blurRadius: 5,
                            offset: const Offset(0, 2),
                          ),
                        ],
                      ),
                      child: Column(
                        children: [
                          Container(
                            width: 60,
                            height: 60,
                            decoration: const BoxDecoration(
                              color: Color(0xFFE5DA95),
                            ),
                            child: const Icon(
                              Icons.link,
                              size: 30,
                              color: Colors.black,
                            ),
                          ),
                          const SizedBox(height: 15),
                          const Text(
                            'SHARE',
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                              letterSpacing: 1.5,
                            ),
                          ),
                          const SizedBox(height: 15),
                          SizedBox(
                            width: 80,
                            child: const Text(
                              'Copy Your Unique Referal Link And Share It With Friends Via Whatsapp, SMS Or Email',
                              style: TextStyle(
                                fontSize: 13,
                                color: Colors.black87,
                                height: 1.4,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),

                  const SizedBox(width: 20),

                  // Step 2 - They Join & Book
                  Material(
                    elevation: 3,
                    child: Container(
                      height: 350,
                      width: 200,
                      padding: const EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(8),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.1),
                            spreadRadius: 1,
                            blurRadius: 5,
                            offset: const Offset(0, 2),
                          ),
                        ],
                      ),
                      child: Column(
                        children: [
                          Container(
                            width: 60,
                            height: 60,
                            decoration: const BoxDecoration(
                              color: Color(0xFFE5DA95),
                            ),
                            child: const Icon(
                              Icons.person_add,
                              size: 30,
                              color: Colors.black,
                            ),
                          ),
                          const SizedBox(height: 15),
                          const Text(
                            'THEY JOIN & BOOK',
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                              letterSpacing: 1.5,
                            ),
                          ),
                          const SizedBox(height: 15),
                          SizedBox(
                            width: 80,
                            child: const Text(
                              'Your Friends Explore Our Services And Make A Booking - Like A Yoga Class, Wedding Photo Shoot Or Other Services.',
                              style: TextStyle(
                                fontSize: 13,
                                color: Colors.black87,
                                height: 1.4,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),

                  const SizedBox(width: 20),

                  // Step 3 - You Earn
                  Material(
                    elevation: 3,
                    child: Container(
                      width: 200,
                      height: 350,
                      padding: const EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(8),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.1),
                            spreadRadius: 1,
                            blurRadius: 5,
                            offset: const Offset(0, 2),
                          ),
                        ],
                      ),
                      child: Column(
                        children: [
                          Container(
                            width: 60,
                            height: 60,
                            decoration: const BoxDecoration(
                              color: Color(0xFFE5DA95),
                            ),
                            child: const Icon(
                              Icons.account_balance_wallet,
                              size: 30,
                              color: Colors.black,
                            ),
                          ),
                          const SizedBox(height: 15),
                          const Text(
                            'YOU EARN',
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                              letterSpacing: 1.5,
                            ),
                          ),
                          const SizedBox(height: 15),
                          SizedBox(
                            width: 60,
                            child: const Text(
                              'You Get Instant Reward After Their First Successful Service Booking!',
                              style: TextStyle(
                                fontSize: 13,
                                color: Colors.black87,
                                height: 1.4,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 80),
            _buildSubSection(),
          ],
        ),
      ),
    );
  }

  Widget _buildSubSection() {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 250),
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(8.0)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Header Section
          Center(
            child: Text(
              'WHAT WILL YOU EARN?',
              style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.w900,
                color: Colors.black,
                letterSpacing: 1.25,
              ),
            ),
          ),

          const SizedBox(height: 40),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // Yellow Box
              SizedBox(
                width: 150,
                height: 120,
                child: Image.asset(
                  'assets/images/earn-money.png',
                  fit: BoxFit.contain,
                ),
              ),

              // Bullet Points
              SizedBox(
                width: 500,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _buildBulletPoint(
                      '\$ 100 Wallet Credit For Every Successful Referral.',
                    ),
                    const SizedBox(height: 40),
                    _buildBulletPoint(
                      'Bonus \$ 500 When 5 Friends Book Any Service',
                    ),
                    const SizedBox(height: 40),
                    _buildBulletPoint(
                      'Use Your Rewards For Discounts On Services',
                    ),
                  ],
                ),
              ),
            ],
          ),

          const SizedBox(height: 80),

          // Terms & Conditions Section
          Text(
            'TERMS & CONDITIONS',
            style: TextStyle(
              fontSize: 40,
              fontWeight: FontWeight.w900,
              color: Colors.black,
              letterSpacing: 1.25,
            ),
          ),

          const SizedBox(height: 30),

          // Terms List
          _buildBulletPoint(
            'Referral Reward Will Be Credited Only After Successful Payment.',
          ),
          const SizedBox(height: 40),
          _buildBulletPoint(
            'Multiple Referrals To The Same User Will Not Be Counted',
          ),
          const SizedBox(height: 40),
          _buildBulletPoint('Wallet Credits Can Be Used Only On Our Platform.'),
        ],
      ),
    );
  }

  Widget _buildBulletPoint(String text) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: const EdgeInsets.only(top: 8.0, right: 12.0),
          width: 6,
          height: 6,
          decoration: BoxDecoration(
            color: Colors.black,
            shape: BoxShape.circle,
          ),
        ),
        Expanded(
          child: Text(
            text,
            style: TextStyle(
              fontSize: 18,
              color: Colors.grey[700],
              height: 1.5,
              fontWeight: FontWeight.w400,
              letterSpacing: 1.25,
            ),
          ),
        ),
      ],
    );
  }
}
