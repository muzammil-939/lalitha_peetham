import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'flower_deco_layout.dart';

class FlowerDecoProduct extends StatelessWidget {
  const FlowerDecoProduct({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return FlowerDecoLayout(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 200, vertical: 50),
        child: Column(
          children: [
            _buildBreadcrumb(),
            Container(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Left golden section with small bottom square
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Main large golden rectangle
                      Container(
                        width: 600,
                        height: 500,
                        child: Image.asset(
                          'assets/images/flower_deco_product_1.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                      SizedBox(height: 50),
                      // Small golden square at bottom left
                      Container(
                        width: 120,
                        height: 80,
                        child: Image.asset(
                          'assets/images/flower_deco_product_3.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ],
                  ),

                  Spacer(),

                  // Right card section
                  Container(
                    width: 450,
                    height: 700,
                    decoration: BoxDecoration(
                      color: Color(0xFFF5F2E8),
                      border: Border.all(color: Color(0xFFE0D5B7), width: 2),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    padding: EdgeInsets.all(20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // Title
                        Text(
                          'Beautiful Flower Wall Decoration',
                          style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),

                        SizedBox(height: 16),

                        // Description
                        RichText(
                          text: TextSpan(
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.black87,
                              height: 1.5,
                            ),
                            children: [
                              TextSpan(
                                text: 'Transform your event space with ',
                                style: TextStyle(fontSize: 14),
                              ),
                              TextSpan(
                                text:
                                    'BalloonPro\'s Beautiful Flower\nWall Decoration',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14,
                                ),
                              ),
                              TextSpan(
                                text:
                                    ', a breathtaking backdrop perfect for\n\n',
                                style: TextStyle(fontSize: 14),
                              ),
                              TextSpan(
                                text: 'Weddings, Parties, And Corporate Events',
                              ),
                              TextSpan(text: '. Our\n'),
                              TextSpan(text: 'Elegantly Crafted'),
                              TextSpan(text: '\n'),
                              TextSpan(
                                text:
                                    'Flower Walls Add A Touch Of Sophistication\nAnd Charm',
                              ),
                              TextSpan(text: ', Ensuring\n'),
                              TextSpan(
                                text:
                                    'Your Special Occasion Is Picture-Perfect.',
                              ),
                            ],
                          ),
                        ),

                        SizedBox(height: 24),

                        Container(
                          // width: 440,
                          // height: 400,
                          padding: EdgeInsets.symmetric(
                            vertical: 25,
                            horizontal: 20,
                          ),
                          color: Color(0xffF0E8BD),
                          child: Column(
                            children: [
                              // Pricing section
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.baseline,
                                    textBaseline: TextBaseline.alphabetic,
                                    children: [
                                      Text(
                                        '₹104207',
                                        style: TextStyle(
                                          fontSize: 24,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black,
                                        ),
                                      ),
                                      SizedBox(width: 12),
                                      Text(
                                        '₹123369',
                                        style: TextStyle(
                                          fontSize: 16,
                                          color: Color(0xFFD4AF37),
                                          decoration:
                                              TextDecoration.lineThrough,
                                        ),
                                      ),
                                      SizedBox(width: 8),
                                      Text(
                                        'SAVE: 16%',
                                        style: TextStyle(
                                          fontSize: 12,
                                          color: Color(0xFFD4AF37),
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: 8),
                                  Text(
                                    'Book Now',
                                    style: TextStyle(
                                      fontSize: 14,
                                      color: Color(0xFFD4AF37),
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                  SizedBox(height: 6),
                                  Container(
                                    height: 1.5,
                                    width: 50,
                                    color: Color(0xFFD4BB26),
                                  ),
                                ],
                              ),

                              SizedBox(height: 16),

                              // Book Now button
                              SizedBox(
                                width: double.infinity,
                                child: ElevatedButton(
                                  onPressed: () {
                                    context.go('/flower_deco_order_corfirm');
                                  },
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: Color(0xFFD4AF37),
                                    padding: EdgeInsets.symmetric(vertical: 30),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(6),
                                    ),
                                    elevation: 0,
                                  ),
                                  child: Text(
                                    'Book Now',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ),

                              SizedBox(height: 16),

                              // Need Help section
                              Container(
                                padding: EdgeInsets.all(16),

                                color: Color(0xFFD4AF37),

                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      children: [
                                        SizedBox(
                                          width: 40,
                                          height: 40,
                                          child: Image.asset(
                                            'assets/images/flower_deco_product_2.png',
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                        SizedBox(width: 12),
                                        Expanded(
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                'Need Help?',
                                                style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                              Text(
                                                'We\'re here to help. Call or chat with the\nBalloonpro.',
                                                style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 12,
                                                  height: 1.3,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(height: 16),
                                  ],
                                ),
                              ),
                              SizedBox(height: 16),
                              Container(
                                padding: EdgeInsets.symmetric(vertical: 16),

                                color: Color(0xFFD4AF37),

                                child: Row(
                                  children: [
                                    Expanded(
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Icon(
                                            Icons.phone,
                                            color: Colors.white,
                                            size: 16,
                                          ),
                                          SizedBox(width: 6),
                                          Text(
                                            'CALL NOW',
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 12,
                                              fontWeight: FontWeight.w600,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    SizedBox(width: 10),
                                    Expanded(
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Icon(
                                            Icons.chat_bubble_outline,
                                            color: Colors.white,
                                            size: 16,
                                          ),
                                          SizedBox(width: 6),
                                          Text(
                                            'CHAT WITH US',
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 12,
                                              fontWeight: FontWeight.w600,
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
                      ],
                    ),
                  ),
                ],
              ),
            ),
            _buildDecoFeatures(),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 50),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(
                    height: screenHeight * 0.6,
                    width: 380,
                    child: Image.asset(
                      'assets/images/flower_deco_product_5.png',
                      fit: BoxFit.cover,
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
                          'Why Choose Our Flower Wall Decoration?',
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
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
                        _buildInclusionItem(
                          'A special sofa for the sweet couple.',
                        ),
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
            // Products Section
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 50),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 30),
                    child: Text(
                      'Related Products',
                      style: TextStyle(fontSize: 16),
                    ),
                  ),
                  // First row
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: 300,
                        height: 350,
                        child: _buildProductCard(
                          'Amazing House Warming Decoration',
                          '₹1474',
                          '₹2500',
                          'assets/images/flower_deco_1.png',
                        ),
                      ),
                      SizedBox(
                        width: 300,
                        height: 350,
                        child: _buildProductCard(
                          'Amazing Naming Ceremony Decor',
                          '₹4900',
                          '₹6500',
                          'assets/images/flower_deco_2.png',
                        ),
                      ),
                      SizedBox(
                        width: 300,
                        height: 350,
                        child: _buildProductCard(
                          'Artificial Naming Ceremony Flower',
                          '₹3900',
                          '₹6500',
                          'assets/images/flower_deco_3.png',
                        ),
                      ),
                    ],
                  ),

                  const SizedBox(height: 40),

                  // Second row
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: 300,
                        height: 350,
                        child: _buildProductCard(
                          'Amazing House Warming Decoration',
                          '₹1474',
                          '₹2500',
                          'assets/images/flower_deco_1.png',
                        ),
                      ),
                      SizedBox(
                        width: 300,
                        height: 350,
                        child: _buildProductCard(
                          'Amazing Naming Ceremony Decor',
                          '₹4900',
                          '₹6500',
                          'assets/images/flower_deco_2.png',
                        ),
                      ),
                      SizedBox(
                        width: 300,
                        height: 350,
                        child: _buildProductCard(
                          'Artificial Naming Ceremony Flower',
                          '₹3900',
                          '₹6500',
                          'assets/images/flower_deco_3.png',
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildProductCard(
    String title,
    String currentPrice,
    String originalPrice,
    String imagePath,
  ) {
    return Card(
      color: Colors.white,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Product Image
          Expanded(
            flex: 3,
            child: Container(
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.vertical(
                  top: Radius.circular(8),
                ),
              ),
              child: Image.asset(imagePath, fit: BoxFit.cover),
            ),
          ),

          // Product Details
          Expanded(
            flex: 2,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    title,
                    style: const TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                    ),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                  const SizedBox(height: 4),
                  Row(
                    children: [
                      Text(
                        currentPrice,
                        style: const TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: Colors.green,
                        ),
                      ),
                      const SizedBox(width: 4),
                      Text(
                        originalPrice,
                        style: const TextStyle(
                          fontSize: 12,
                          decoration: TextDecoration.lineThrough,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 8),
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFFD4BB26),
                        padding: const EdgeInsets.symmetric(vertical: 25),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(4),
                        ),
                      ),
                      child: const Text(
                        'VIEW DETAILS',
                        style: TextStyle(
                          fontSize: 10,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildDecoFeatures() {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 100),
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // First Section - Customizable Decorations
          _buildSection(
            title: "Customizable Decorations",
            content:
                "Our Hot Air Balloon Theme Decorations Can b Tomized To Suit Your Party's Needs. We Can Create Hot Air Balloon Centerpieces, Balloon\nDecoration Arches, And Even Full-Size Hot Air Balloons Made Entirely Out Of Balloons, We Use Only The Highest Quality Balloons And\nMaterials To Ensure That Your Decorations Last Throughout The Entire Event.",
          ),

          SizedBox(height: 40.0),

          // Second Section - Boy Hot Air Balloon Theme Party
          _buildSection(
            title: "Boy Hot Air Balloon Theme Party",
            content:
                "For A Boy's Hot Air Balloon Theme Party, We Can Create Decorations In A Variety Of Colors And Styles That Will Appeal To Kids Of All Ages.\nWe Can Incorporate Bold Primary Colors Or More Subdued Pastels To Match Your Party's Color Scheme. We Can Also Add Fun Details Like\nClouds, Suns, And Stars To Create A Fully Immersive Hot Air Balloon Theme.",
          ),

          SizedBox(height: 40.0),

          // Third Section - Exceptional Customer Service
          _buildSection(
            title: "Exceptional Customer Service",
            content:
                "At Balloon Pro, We Pride Ourselves On Our Attention To Detail And Exceptional Customer Service. We Will Work Closely With You To Create\nA Hot Air Balloon Theme That Perfectly Captures Your Vision And Exceeds Your Expectations. Our Balloon Experts Will Handle All Of The\nSetup And Cleanup, So You Can Focus On Enjoying Your Party And Making Memories That Will Last A Lifetime.",
          ),
        ],
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

  Widget _buildSection({required String title, required String content}) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Yellow square icon
        Container(
          width: 50.0,
          height: 50.0,
          child: Image.asset(
            'assets/images/flower_deco_product_4.png',
            fit: BoxFit.cover,
          ),
        ),

        SizedBox(width: 16.0),

        // Text content
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Title
              Text(
                title,
                style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.w500,
                  color: Color(0xFFD4AF37), // Golden yellow color
                  height: 1.2,
                ),
              ),

              SizedBox(height: 8.0),

              // Content
              Text(
                content,
                style: TextStyle(
                  fontSize: 14.0,
                  color: Color(0xFF666666), // Gray color
                  height: 1.4,
                  letterSpacing: 0.2,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildBreadcrumb() {
    return Center(
      child: Padding(
        padding: const EdgeInsets.only(bottom: 50),
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 22, vertical: 12),
          decoration: BoxDecoration(
            color: const Color(0xFFD4BB26),
            borderRadius: BorderRadius.circular(20),
          ),
          child: const Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(Icons.home, size: 16, color: Colors.black),
              Text(
                ' // Flower Decoration // Birthday Party  //   Product Details',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
