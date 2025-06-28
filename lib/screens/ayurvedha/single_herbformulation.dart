import 'package:flutter/material.dart';
import 'package:lalitha_peetham/screens/ayurvedha/ayurvedh_page_layout.dart';

class SingleHerbFormulationPage extends StatelessWidget {
  const SingleHerbFormulationPage({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return AyurvedhPageLayout(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          width: double.infinity,
          color: Color(0xFFffffff),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Breadcrumb Navigation
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                child: Row(
                  children: [
                    Text(
                      'Home',
                      style: TextStyle(color: Colors.black, fontSize: 14),
                    ),
                    Icon(
                      Icons.keyboard_arrow_right,
                      color: Colors.black,
                      size: 16,
                    ),
                    SizedBox(width: 5),
                    Text(
                      'Single Herb Formulation',
                      style: TextStyle(color: Colors.black, fontSize: 14),
                    ),
                  ],
                ),
              ),

              // Header Section
              Center(
                child: Material(
                  elevation: 2,
                  child: Container(
                    width: screenWidth * 0.8,
                    margin: EdgeInsets.symmetric(horizontal: 20),
                    padding: EdgeInsets.all(12),
                    decoration: BoxDecoration(color: Colors.white),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Flexible(
                          child: Text(
                            'Single Herb Formulation ( Total 5 Products )',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              color: Colors.black87,
                            ),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.symmetric(
                            horizontal: 15,
                            vertical: 8,
                          ),
                          decoration: BoxDecoration(
                            color: Colors.grey[600], // Fixed: was grey[300] with white text
                            borderRadius: BorderRadius.circular(4),
                          ),
                          child: Column(
                            children: [
                              Text(
                                'Sort By',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              Text(
                                'By Price',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 10,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),

              SizedBox(height: 20),

              // Products Grid
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: LayoutBuilder(
                  builder: (context, constraints) {
                    // Responsive grid - adjust based on screen width
                    int crossAxisCount = 4;
                    if (constraints.maxWidth < 600) {
                      crossAxisCount = 2;
                    } else if (constraints.maxWidth < 900) {
                      crossAxisCount = 3;
                    }

                    return GridView.builder(
                      shrinkWrap: true, // Important: This makes GridView take only needed space
                      physics: NeverScrollableScrollPhysics(), // Disable GridView scrolling
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: crossAxisCount,
                        crossAxisSpacing: 20,
                        mainAxisSpacing: 20,
                        childAspectRatio: 0.8,
                      ),
                      itemCount: 5,
                      itemBuilder: (context, index) {
                        return buildProductCard(index);
                      },
                    );
                  },
                ),
              ),

              // Add some bottom spacing
              SizedBox(height: 40),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildProductCard(int index) {
    // Different product names for variety
    List<String> productNames = [
      'Curcumin Capsules',
      'Ashwagandha Tablets',
      'Brahmi Extract',
      'Triphala Powder',
      'Neem Capsules',
    ];

    List<String> productSizes = [
      '60 Caps',
      '30 Tablets',
      '50ml',
      '100g',
      '90 Caps',
    ];

    List<int> prices = [1100, 850, 950, 650, 750];

    return Material(
      elevation: 2,
      borderRadius: BorderRadius.circular(8),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.1),
              blurRadius: 4,
              offset: Offset(0, 2),
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Product Image
            Expanded(
              flex: 3,
              child: Container(
                margin: EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: Colors.grey[100],
                  borderRadius: BorderRadius.circular(6),
                ),
                child: Center(
                  child: Container(
                    width: 60,
                    height: 80,
                    decoration: BoxDecoration(
                      color: _getProductColor(index),
                      borderRadius: BorderRadius.circular(4),
                    ),
                    child: Center(
                      child: Icon(
                        Icons.medical_services,
                        color: Colors.white,
                        size: 24,
                      ),
                    ),
                  ),
                ),
              ),
            ),

            // Product Details
            Expanded(
              flex: 2,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      productNames[index],
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w600,
                        color: Colors.black87,
                      ),
                      textAlign: TextAlign.center,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),

                    Text(
                      productSizes[index],
                      style: TextStyle(fontSize: 10, color: Colors.grey[600]),
                    ),

                    // Star Rating
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: List.generate(5, (starIndex) {
                        return Icon(Icons.star, color: Colors.amber, size: 12);
                      }),
                    ),

                    // Price
                    RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: '₹ ',
                            style: TextStyle(
                              color: Colors.black87,
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          TextSpan(
                            text: '${prices[index]}',
                            style: TextStyle(
                              color: Colors.black87,
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
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

  Color _getProductColor(int index) {
    List<Color> colors = [
      Colors.blue[400]!,
      Colors.green[600]!,
      Colors.brown[800]!,
      Colors.orange[700]!,
      Colors.teal[700]!,
    ];
    return colors[index % colors.length];
  }
}