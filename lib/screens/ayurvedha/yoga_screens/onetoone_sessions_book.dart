import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:lalitha_peetham/screens/ayurvedha/yoga_screens/yoga_layout.dart';

class BookingConfirmation extends StatelessWidget {
  const BookingConfirmation({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    return YogaLayout(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 100),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              height: screenHeight * 1.5,
              padding: const EdgeInsets.all(20.0),

              child: Center(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    // Header
                    const Text(
                      'BOOKING CONFIRMATION',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.black87,
                        letterSpacing: 1.2,
                      ),
                    ),
                    const SizedBox(height: 20),

                    // Service Title
                    const Text(
                      'Brain Yoga Specialist',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                        color: Colors.black87,
                      ),
                    ),
                    const SizedBox(height: 20),

                    // Profile Image
                    Container(
                      width: 180,
                      height: 160,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      child: Image.asset(
                        'assets/images/personal_trainer.png',
                        fit: BoxFit.cover,
                      ),
                    ),
                    const SizedBox(height: 20),

                    // Price Section
                    Row(
                      children: [
                        const Text(
                          '₹14749',
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFFD4BB26),
                          ),
                        ),
                        const SizedBox(width: 10),
                        Text(
                          '₹25000',
                          style: TextStyle(
                            fontSize: 18,
                            decoration: TextDecoration.lineThrough,
                            color: Colors.grey[600],
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 20),

                    // Instructor Name
                    const Text(
                      'Krishna Raju',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: Colors.black87,
                      ),
                    ),
                    const SizedBox(height: 12),

                    // Orders Count
                    const Text(
                      '1320 Orderes',
                      style: TextStyle(fontSize: 14, color: Colors.black87),
                    ),
                    const SizedBox(height: 12),

                    // Time Slot
                    const Text(
                      'Time Slot : 3.45 Pm (Daily)',
                      style: TextStyle(fontSize: 14, color: Colors.black87),
                    ),
                    const SizedBox(height: 12),

                    // Starting Date
                    const Text(
                      'Starting Date : 21/07/2025',
                      style: TextStyle(fontSize: 14, color: Colors.black87),
                    ),
                    const SizedBox(height: 12),

                    // Location
                    const Text(
                      'Location : Flat No. 6, Oak Residency,\nVarthur Main Road, Whitefield,\nBengaluru – 560066,\nKarnataka, India',
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.black87,
                        height: 1.4,
                      ),
                    ),
                    const SizedBox(height: 20),

                    // Online/Offline Options
                    Row(
                      children: [
                        const Text(
                          'Online',
                          style: TextStyle(fontSize: 14, color: Colors.black87),
                        ),
                        const SizedBox(width: 8),
                        Container(
                          width: 18,
                          height: 18,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(
                              color: const Color(0xFFD4BB26),
                              width: 2,
                            ),
                          ),
                          child: const Center(
                            child: CircleAvatar(
                              radius: 4,
                              backgroundColor: Color(0xFFD4BB26),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 12),

                    Row(
                      children: [
                        const Text(
                          'Offline',
                          style: TextStyle(fontSize: 14, color: Colors.black87),
                        ),
                        const SizedBox(width: 8),
                        Container(
                          width: 18,
                          height: 18,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(color: Colors.grey, width: 2),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 30),

                    // Confirm Button
                    SizedBox(
                      width: screenWidth * 0.2,
                      height: 60,
                      child: ElevatedButton(
                        onPressed: () {
                          context.go('/ayurvedha_cardpin');
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xFFD4BB26),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(4.0),
                          ),
                        ),
                        child: const Text(
                          'CONFIRM ORDER',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            letterSpacing: 1.2,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              width: screenWidth * 0.4,
              padding: EdgeInsets.all(24.0),
              color: Color(0xFFD4BB26), // Golden yellow background
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Header Section
                  Text(
                    'Package Inclusions',
                    style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      height: 1.2,
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    'Why Choose our brain yoga class?',
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.black87,
                      height: 1.3,
                    ),
                  ),
                  SizedBox(height: 20),

                  // Features List
                  _buildFeatureItem(
                    'Premium Quality Flowers',
                    'We use high-quality fresh and artificial flowers to create stunning, long-lasting arrangements.',
                  ),
                  SizedBox(height: 12),
                  _buildFeatureItem(
                    'Customized Designs',
                    'Whether you prefer a romantic rose backdrop or a vibrant floral mix, we tailor the decoration to match your event\'s theme.',
                  ),
                  SizedBox(height: 12),
                  _buildFeatureItem(
                    'Perfect for All Events',
                    'Ideal for wedding reception decor, birthdays, baby showers, and corporate gatherings.',
                  ),
                  SizedBox(height: 12),
                  _buildFeatureItem(
                    'Expert Craftsmanship',
                    'Our team of skilled decorators ensures flawless installation and arrangement.',
                  ),
                  SizedBox(height: 12),
                  _buildFeatureItem(
                    'Affordable Luxury',
                    'Get a high-end floral ambiance at budget-friendly rates.',
                  ),
                  SizedBox(height: 32),

                  // Main Heading
                  Text(
                    'Elevate Your Event with Stunning Floral Backdrops',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.black87,
                      height: 1.3,
                    ),
                  ),
                  SizedBox(height: 16),

                  // Description
                  Text(
                    'Our flower walls serve as the perfect photo backdrop, elevating your event aesthetics. Whether it\'s an enchanting wedding stage or a dreamy entrance, our designs are crafted to impress.',
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.black87,
                      height: 1.4,
                    ),
                  ),
                  SizedBox(height: 32),

                  // Book Your Decoration Section
                  Text(
                    'Book Your Flower Decoration Today!',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.black87,
                      height: 1.3,
                    ),
                  ),
                  SizedBox(height: 16),

                  // Search text
                  RichText(
                    text: TextSpan(
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.black87,
                        height: 1.4,
                      ),
                      children: [
                        TextSpan(text: 'Searching for '),
                        TextSpan(
                          text: 'flower decoration in Bangalore',
                          style: TextStyle(
                            color: Colors.blue,
                            decoration: TextDecoration.underline,
                          ),
                        ),
                        TextSpan(
                          text:
                              ' ? BalloonPro is your go-to expert for elegant and eye-catching floral arrangements. Contact us today to create a mesmerizing floral experience for your event.',
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 16),

                  // Party decorations text
                  RichText(
                    text: TextSpan(
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.black87,
                        height: 1.4,
                      ),
                      children: [
                        TextSpan(text: 'Looking for complete '),
                        TextSpan(
                          text: 'party decorations in Bangalore',
                          style: TextStyle(
                            color: Colors.blue,
                            decoration: TextDecoration.underline,
                          ),
                        ),
                        TextSpan(
                          text:
                              ' ? Explore our wide range of decor services to make your event truly magical.',
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 24),

                  // Inclusions List
                  _buildInclusionItem(
                    'Backdrop size: 20feet width 8feet height.',
                  ),
                  SizedBox(height: 10),
                  _buildInclusionItem(
                    'Backdrop frame wall setup as shown in the image.',
                  ),
                  SizedBox(height: 10),
                  _buildInclusionItem(
                    'A beautiful set of flowers like chrysanthemum, Orchids, roses.',
                  ),
                  SizedBox(height: 10),
                  _buildInclusionItem(
                    '10feet flower wall as shown in the image.',
                  ),
                  SizedBox(height: 10),
                  _buildInclusionItem(
                    '5ft draping work as shown in the image with beautiful chandeliers.',
                  ),
                  SizedBox(height: 10),
                  _buildInclusionItem(
                    '10nos beautiful fiber pots with flower bouquets.',
                  ),
                  SizedBox(height: 10),
                  _buildInclusionItem(
                    '6nos of par can led lights used to add richness to the decor.',
                  ),
                  SizedBox(height: 10),
                  _buildInclusionItem('A special sofa for the sweet couple.'),
                  SizedBox(height: 32),

                  // Bottom Buttons
                  Container(
                    padding: EdgeInsets.all(15),
                    color: Colors.white,
                    child: Row(
                      children: [
                        Expanded(
                          child: Container(
                            padding: EdgeInsets.symmetric(
                              vertical: 12,
                              horizontal: 16,
                            ),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(2),
                              border: Border.all(
                                width: 1,
                                color: Color(0xffD1D1D1),
                              ),
                            ),
                            child: Center(
                              child: Text(
                                'Things To Remember',
                                style: TextStyle(
                                  fontSize: 10,
                                  color: Colors.black87,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(width: 12),
                        Expanded(
                          child: Container(
                            padding: EdgeInsets.symmetric(
                              vertical: 12,
                              horizontal: 16,
                            ),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(2),
                              border: Border.all(
                                width: 1,
                                color: Color(0xffD1D1D1),
                              ),
                            ),
                            child: Center(
                              child: Text(
                                'Terms & Conditions',
                                style: TextStyle(
                                  fontSize: 10,
                                  color: Colors.black87,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(width: 12),
                        Expanded(
                          child: Container(
                            padding: EdgeInsets.symmetric(
                              vertical: 12,
                              horizontal: 16,
                            ),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(2),
                              border: Border.all(
                                width: 1,
                                color: Color(0xffD1D1D1),
                              ),
                            ),
                            child: Center(
                              child: Text(
                                'Cancellation & Refunds',
                                style: TextStyle(
                                  fontSize: 10,
                                  color: Colors.black87,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
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
        ),
      ),
    );
  }

  Widget _buildFeatureItem(String title, String description) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: EdgeInsets.only(top: 2),
          child: Icon(Icons.check, color: Colors.green.shade700, size: 18),
        ),
        SizedBox(width: 8),
        Expanded(
          child: RichText(
            text: TextSpan(
              style: TextStyle(
                fontSize: 14,
                color: Colors.black87,
                height: 1.4,
              ),
              children: [
                TextSpan(
                  text: title,
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                TextSpan(text: ' – $description'),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildInclusionItem(String text) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: EdgeInsets.only(top: 3),
          width: 20,
          height: 20,
          decoration: BoxDecoration(
            color: Colors.purple.shade600,
            shape: BoxShape.circle,
          ),
          child: Icon(Icons.check, color: Colors.white, size: 14),
        ),
        SizedBox(width: 12),
        Expanded(
          child: Text(
            text,
            style: TextStyle(fontSize: 14, color: Colors.black87, height: 1.4),
          ),
        ),
      ],
    );
  }
}
