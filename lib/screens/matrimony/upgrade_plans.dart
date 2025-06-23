import 'package:flutter/material.dart';
import 'package:lalitha_peetham/screens/matrimony/matimony_page_layout.dart';
import 'package:lalitha_peetham/screens/matrimony/upgrade_ordersummary.dart';

class PremiumPlansContainer extends StatefulWidget {
  const PremiumPlansContainer({super.key});

  @override
  PremiumPlansContainerState createState() => PremiumPlansContainerState();
}

class PremiumPlansContainerState extends State<PremiumPlansContainer> {
  bool isYearly = true;

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return MatriPageLayout(
      child: Column(
        children: [
          SizedBox(height: 40),
          // Top banner
          Container(
            width: double.infinity,
            padding: EdgeInsets.symmetric(vertical: 12),
            decoration: BoxDecoration(color: Color(0xFFEDE5BA)),
            child: Text(
              'SAVE UPTO 55% ON PREMIUM PLANS!! VALID PLANS!!!!! VALID FOR LIMITED PERIOD!!',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.bold,
                color: Colors.black,
                letterSpacing: 0.5,
              ),
            ),
          ),
          SizedBox(height: 80),
          Container(
            width: double.infinity,
            height: screenHeight * 1.25, // Increased container height
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
                colors: [
                  Color(0xFFEDE5BA),
                  Color(0xFFF5F0E1),
                  Color(0xFFE8E8E8),
                ],
              ),
            ),
            child: Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 150,
              ), // Added horizontal padding
              child: Column(
                children: [
                  SizedBox(height: 60),

                  // Ready to get started text
                  Text(
                    'READY TO GET STARTED?',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w600,
                      color: Color(0xFFB8860B),
                      letterSpacing: 1.2,
                    ),
                  ),

                  SizedBox(height: 30),

                  // Monthly/Yearly toggle
                  Container(
                    padding: EdgeInsets.all(4),
                    decoration: BoxDecoration(
                      color: Color(0xFFB8860B),
                      borderRadius: BorderRadius.circular(25),
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        GestureDetector(
                          onTap: () => setState(() => isYearly = false),
                          child: Container(
                            padding: EdgeInsets.symmetric(
                              horizontal: 20,
                              vertical: 8,
                            ),
                            decoration: BoxDecoration(
                              color:
                                  !isYearly ? Colors.white : Colors.transparent,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Text(
                              'Monthly',
                              style: TextStyle(
                                color: !isYearly ? Colors.black : Colors.white,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () => setState(() => isYearly = true),
                          child: Container(
                            padding: EdgeInsets.symmetric(
                              horizontal: 20,
                              vertical: 8,
                            ),
                            decoration: BoxDecoration(
                              color:
                                  isYearly ? Colors.white : Colors.transparent,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Text(
                              'Yearly',
                              style: TextStyle(
                                color: isYearly ? Colors.black : Colors.white,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),

                  SizedBox(height: 40),

                  // Pricing cards
                  Row(
                    children: [
                      Expanded(
                        child: _buildPricingCard(
                          context: context,
                          screenHeight: screenHeight,
                          title: 'GOLD 3 MONTHS',
                          price: '\$1,362',
                          priceDetail: '\$454/MONTH',
                          features: [
                            'Send Unlimited Messages',
                            'View Upto 75 Contact Numbers',
                            'Standout From Other Profiles',
                            'Let Matches Contact You Directly',
                          ],
                          isHighlighted: false,
                        ),
                      ),
                      Expanded(
                        child: _buildPricingCard(
                          context: context,
                          screenHeight: screenHeight,
                          title: 'GOLD PLUS 3 MONTH',
                          price: '\$1,688',
                          priceDetail: '\$556 PER MONTH',
                          features: [
                            'Send Unlimited Messages',
                            'View Upto 150 Contact Numbers',
                            'Standout From Other Profiles',
                            'Let Matches Contact You Directly',
                          ],
                          isHighlighted: true,
                        ),
                      ),
                      Expanded(
                        child: _buildPricingCard(
                          context: context,
                          screenHeight: screenHeight,
                          title: 'DIAMOND 6 MONTHS',
                          price: '\$1,956',
                          priceDetail: '\$326 Per Month',
                          features: [
                            'Send Unlimited Messages',
                            'View Upto 400 Contact Numbers',
                            'Standout From Other Profiles',
                            'Let Matches Contact You Directly',
                          ],
                          isHighlighted: false,
                        ),
                      ),
                    ],
                  ),

                  SizedBox(height: 40),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

Widget _buildPricingCard({
  required BuildContext context,
  required String title,
  required String price,
  required String priceDetail,
  required List<String> features,
  required bool isHighlighted,
  required screenHeight,
}) {
  return Container(
    height: screenHeight * 0.8,
    margin: EdgeInsets.symmetric(horizontal: 8),
    padding: EdgeInsets.all(20),
    decoration: BoxDecoration(
      color: isHighlighted ? Color(0xFFDECE9B) : Colors.white,
      borderRadius: BorderRadius.circular(12),
      boxShadow: [
        BoxShadow(
          color: Colors.black.withOpacity(0.1),
          blurRadius: 8,
          offset: Offset(0, 4),
        ),
      ],
    ),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),

        SizedBox(height: 20),

        Text(
          price,
          style: TextStyle(
            fontSize: 32,
            fontWeight: FontWeight.bold,
            color: Colors.black,
            decoration: TextDecoration.underline,
          ),
        ),

        SizedBox(height: 8),

        Text(
          priceDetail,
          style: TextStyle(
            fontSize: 14,
            color: Colors.black,
            fontWeight: FontWeight.w500,
          ),
        ),

        SizedBox(height: 24),

        ...features
            .map(
              (feature) => Padding(
                padding: EdgeInsets.only(bottom: 12),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: 20,
                      height: 20,
                      decoration: BoxDecoration(
                        color: isHighlighted ? Color(0xFFB8860B) : Colors.black,
                        borderRadius: BorderRadius.circular(4),
                      ),
                      child: Icon(Icons.check, color: Colors.white, size: 14),
                    ),
                    SizedBox(width: 12),
                    Expanded(
                      child: Text(
                        feature,
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.black,
                          height: 1.4,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            )
            .toList(),

        SizedBox(height: 24),

        GestureDetector(
          onTap: () => showOrderSummaryDialog(context),
          child: Container(
            width: double.infinity,
            padding: EdgeInsets.symmetric(vertical: 14),
            decoration: BoxDecoration(
              color: isHighlighted ? Color(0xFFB8860B) : Colors.transparent,
              borderRadius: BorderRadius.circular(25),
              border: Border.all(
                color: isHighlighted ? Colors.transparent : Color(0xFFB8860B),
                width: 2,
              ),
            ),
            child: Text(
              'CHOOSE NOW',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
                color: isHighlighted ? Colors.white : Color(0xFFB8860B),
                letterSpacing: 0.8,
              ),
            ),
          ),
        ),
      ],
    ),
  );
}
