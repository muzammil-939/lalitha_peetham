import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:lalitha_peetham/screens/ayurvedha/ayurvedh_page_layout.dart';

class HerbsProductsDetails extends StatefulWidget {
  const HerbsProductsDetails({super.key});

  @override
  HerbsProductsDetailsState createState() => HerbsProductsDetailsState();
}

class HerbsProductsDetailsState extends State<HerbsProductsDetails> {
  int selectedQuantity = 1;
  int selectedProductIndex = 0;

  @override
  Widget build(BuildContext context) {
    return AyurvedhPageLayout(
      child: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.fromLTRB(10, 50, 10, 100),
          decoration: const BoxDecoration(color: Colors.white),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Header breadcrumb
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const SizedBox(width: 100),
                  Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 18,
                      vertical: 12,
                    ),
                    decoration: BoxDecoration(
                      color: const Color(0xFFD4BB26),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: const [
                        Icon(Icons.home, size: 16, color: Colors.black),
                        Text(
                          ' / ',
                          style: TextStyle(color: Colors.black, fontSize: 14),
                        ),
                        Text(
                          'BUY HERBS',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Text(
                          ' // ',
                          style: TextStyle(color: Colors.black, fontSize: 14),
                        ),
                        Text(
                          'Product Details Page',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(width: 100),
                ],
              ),

              const SizedBox(height: 40),

              // Main product section
              Container(
                padding: const EdgeInsets.all(40),
                decoration: BoxDecoration(
                  color: const Color(0xFFF0E7BB),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Product image section
                    Expanded(
                      flex: 4,
                      child: Column(
                        children: [
                          Container(
                            height: 350,
                            color: const Color(
                              0xFFFFF8E1,
                            ), // Light yellowish background to match
                            child: Stack(
                              alignment: Alignment.center,
                              children: [
                                // Main Grapes Image
                                Positioned.fill(
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(0),
                                    child: Image.asset(
                                      'assets/images/herbs_graps.jpg', // your grape image
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),

                          const SizedBox(height: 20),

                          // Action buttons - positioned below the image
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 24,
                                  vertical: 12,
                                ),
                                decoration: BoxDecoration(
                                  color: const Color(0xFFD4BB26),
                                  borderRadius: BorderRadius.circular(0),
                                ),
                                child: const Text(
                                  'ADD TO CART',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w600,
                                    fontSize: 14,
                                  ),
                                ),
                              ),

                              const SizedBox(width: 16),

                              GestureDetector(
                                onTap: () => context.go('/herbs_buy_now'),
                                child: Container(
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 24,
                                    vertical: 12,
                                  ),
                                  decoration: BoxDecoration(
                                    color: Color(0xff333333),
                                    borderRadius: BorderRadius.circular(0),
                                  ),
                                  child: const Text(
                                    'BUY NOW',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w600,
                                      fontSize: 14,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),

                    const SizedBox(width: 30),

                    // Product details section
                    Expanded(
                      flex: 4,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // Product title
                          const Text(
                            'GRAPESEED ESSENTIAL OIL',

                            style: TextStyle(
                              fontSize: 28,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                          const SizedBox(height: 2),
                          const Text(
                            ' Be the first to review this product',

                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                              color: Colors.grey,
                            ),
                          ),

                          const SizedBox(height: 12),

                          // Rating
                          Row(
                            children: [
                              Row(
                                children: List.generate(
                                  5,
                                  (index) => Icon(
                                    Icons.star,
                                    size: 18,
                                    color:
                                        index < 4
                                            ? Colors.amber
                                            : Colors.grey[300],
                                  ),
                                ),
                              ),
                              const SizedBox(width: 8),
                              const Text(
                                '1 Review',
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 14,
                                ),
                              ),
                            ],
                          ),

                          const SizedBox(height: 20),

                          const Text(
                            'Please Select the Variations Of This Herb You Would Like To Purchase',
                            style: TextStyle(fontSize: 12, color: Colors.grey),
                          ),

                          const SizedBox(height: 12),

                          // Product variations table
                          Container(
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(8),
                              border: Border.all(color: Colors.grey[300]!),
                            ),
                            child: Column(
                              children: [
                                // Table header
                                Container(
                                  padding: const EdgeInsets.all(15),
                                  decoration: BoxDecoration(
                                    color: const Color(0xFFD4BB26),
                                    borderRadius: const BorderRadius.only(
                                      topLeft: Radius.circular(8),
                                      topRight: Radius.circular(8),
                                    ),
                                  ),
                                  child: Row(
                                    children: const [
                                      Expanded(
                                        flex: 5,
                                        child: Text(
                                          'PRODUCT NAME',
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 16,
                                          ),
                                        ),
                                      ),
                                      Expanded(
                                        flex: 2,
                                        child: Center(
                                          child: Text(
                                            'PRICE',
                                            style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 16,
                                            ),
                                          ),
                                        ),
                                      ),
                                      Expanded(
                                        flex: 3,
                                        child: Center(
                                          child: Text(
                                            'QUANTITY',
                                            style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 16,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),

                                // Product rows
                                _buildProductRow(
                                  'Grapeseed Essential Oil 200 ML',
                                  '₹ 240',
                                  0,
                                ),
                                _buildProductRow(
                                  'Grapeseed Essential Oil 500 ML',
                                  '₹ 800',
                                  1,
                                ),
                              ],
                            ),
                          ),

                          const SizedBox(height: 20),

                          // Availability
                          Row(
                            children: const [
                              Text(
                                'Availability: ',
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.black87,
                                ),
                              ),
                              Text(
                                'In Stock',
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.green,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ],
                          ),

                          const SizedBox(height: 10),

                          const Text(
                            'See Dosage And Product Description Below',
                            style: TextStyle(fontSize: 14, color: Colors.grey),
                          ),
                        ],
                      ),
                    ),

                    const SizedBox(width: 30),

                    // About this product section
                    Expanded(
                      flex: 3,
                      child: Column(
                        children: [
                          // About This Product Container
                          Container(
                            width: double.infinity,
                            padding: const EdgeInsets.all(8),
                            decoration: BoxDecoration(
                              //color: Colors.white,
                              borderRadius: BorderRadius.circular(0),
                              border: Border.all(color: Color(0xf28BE35E)),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  'ABOUT THIS PRODUCT',
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),

                                const SizedBox(height: 16),

                                const Text(
                                  'Grapeseed Essential',
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.grey,
                                  ),
                                ),
                              ],
                            ),
                          ),

                          const SizedBox(height: 20),

                          // Product Facts Container
                          Container(
                            width: double.infinity,
                            padding: const EdgeInsets.all(20),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(0),
                              border: Border.all(color: Color(0xf28BE35E)),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  'PRODUCT FACTS',
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),

                                const SizedBox(height: 15),

                                const Text(
                                  'Purity Tests: Pass(heavy metal content below 4 PPM).',
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: Colors.black87,
                                    height: 1.5,
                                  ),
                                ),
                                const Text(
                                  'Manufacturing: Manufactured In accordence with GMP',
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: Colors.black87,
                                    height: 1.5,
                                  ),
                                ),
                                const Text(
                                  'Guidelines.',
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: Colors.black87,
                                    height: 1.5,
                                  ),
                                ),

                                const SizedBox(height: 20),

                                // Quality badges using image
                                Row(
                                  children: [
                                    Image.asset(
                                      'assets/images/herbel_pure.png',
                                      width: 120, // adjust width as per your UI
                                      height: 40,
                                      fit: BoxFit.contain,
                                    ),
                                  ],
                                ),

                                const SizedBox(height: 15),

                                const Text(
                                  'Medical Use:',
                                  style: TextStyle(
                                    fontSize: 14,
                                    color: Colors.black87,
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

              const SizedBox(height: 30),

              // Tabs section
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 50),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(color: Colors.grey[300]!),
                  ),
                  child: Column(
                    children: [
                      // Tab headers
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.grey[100],
                          borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(8),
                            topRight: Radius.circular(8),
                          ),
                        ),
                        child: Row(
                          children: [
                            _buildTabHeader('Description', true),
                            _buildTabHeader('Additional', false),
                            _buildTabHeader('Reviews', false),
                          ],
                        ),
                      ),

                      // Tab content
                      Container(
                        padding: const EdgeInsets.all(20),
                        child: const Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            'Grapeseed Essential oil',
                            style: TextStyle(
                              fontSize: 12,
                              color: Colors.black87,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              const SizedBox(height: 40),

              // Customers who bought section
              Container(
                padding: const EdgeInsets.all(30),
                decoration: BoxDecoration(
                  color: const Color(0xFFF5F1D1),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'CUSTOMERS WHO BOUGHT THIS ITEM ALSO BOUGHT',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),

                    const SizedBox(height: 30),

                    // Related products carousel
                    Row(
                      children: [
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.arrow_back_ios, size: 20),
                        ),

                        Expanded(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              _buildRelatedProduct('Aswagandha Tail', '₹ 90'),
                              _buildRelatedProduct(
                                'Maha Manjith Tail Oil',
                                '₹ 120',
                              ),
                              _buildRelatedProduct(
                                'Maha Masha Tail Oil',
                                '₹ 62',
                              ),
                              _buildRelatedProduct('Aswagandha Tail', '₹ 90'),
                              _buildRelatedProduct(
                                'Maha Bhringraj Tail',
                                '₹ 100',
                              ),
                              _buildRelatedProduct(
                                'Maha Masha Tail Oil',
                                '₹ 62',
                              ),
                              _buildRelatedProduct('Kshirabala Tail', '₹ 91'),
                              _buildRelatedProduct('Aswagandha Tail', '₹ 90'),
                            ],
                          ),
                        ),

                        IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.arrow_forward_ios, size: 20),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildProductRow(String name, String price, int index) {
    return Container(
      color: const Color(0xFFFAF2D1), // Light yellow background
      padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 10),
      child: Column(
        children: [
          Row(
            children: [
              // Product name
              Expanded(
                flex: 5,
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Text(name, style: const TextStyle(fontSize: 12)),
                ),
              ),

              // Vertical divider
              Container(width: 2, height: 30, color: Colors.grey[300]),

              // Price
              Expanded(
                flex: 2,
                child: Center(
                  child: Text(
                    price,
                    style: const TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),

              // Vertical divider
              Container(width: 2, height: 30, color: Colors.grey[300]),

              // Quantity controls
              Expanded(
                flex: 3,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // Minus Button
                    GestureDetector(
                      onTap: () {
                        if (selectedQuantity > 1) {
                          setState(() {
                            selectedQuantity--;
                          });
                        }
                      },
                      child: Container(
                        width: 30,
                        height: 30,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey),
                          borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(0),
                            bottomLeft: Radius.circular(0),
                          ),
                        ),
                        child: const Icon(Icons.remove, size: 16),
                      ),
                    ),

                    // Quantity Display
                    Container(
                      width: 40,
                      height: 30,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        border: Border(
                          top: BorderSide(color: Colors.grey[400]!),
                          bottom: BorderSide(color: Colors.grey[400]!),
                        ),
                      ),
                      child: Text(
                        selectedQuantity.toString(),
                        style: const TextStyle(fontSize: 14),
                      ),
                    ),

                    // Plus Button
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          selectedQuantity++;
                        });
                      },
                      child: Container(
                        width: 30,
                        height: 30,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey[400]!),
                          borderRadius: const BorderRadius.only(
                            topRight: Radius.circular(0),
                            bottomRight: Radius.circular(0),
                          ),
                        ),
                        child: const Icon(Icons.add, size: 16),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildTabHeader(String title, bool isActive) {
    return Expanded(
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 15),
        decoration: BoxDecoration(
          color: isActive ? Colors.white : Colors.transparent,
          border: isActive ? Border.all(color: Colors.grey[300]!) : null,
          borderRadius:
              isActive
                  ? const BorderRadius.only(
                    topLeft: Radius.circular(8),
                    topRight: Radius.circular(8),
                  )
                  : null,
        ),
        child: Center(
          child: Text(
            title,
            style: TextStyle(
              fontSize: 16,
              fontWeight: isActive ? FontWeight.w600 : FontWeight.normal,
              color: Colors.black87,
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildRelatedProduct(String name, String price) {
    return Container(
      width: 90,
      child: Column(
        children: [
          Container(
            width: 70,
            height: 70,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(8),
              border: Border.all(color: Colors.grey[300]!),
            ),
            child: const Icon(
              Icons.local_pharmacy,
              size: 35,
              color: Colors.grey,
            ),
          ),

          const SizedBox(height: 10),

          Text(
            name,
            style: const TextStyle(fontSize: 11, fontWeight: FontWeight.w500),
            textAlign: TextAlign.center,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),

          const SizedBox(height: 6),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(
              5,
              (index) => Icon(
                Icons.star,
                size: 10,
                color: index < 4 ? Colors.amber : Colors.grey[300],
              ),
            ),
          ),

          const SizedBox(height: 6),

          Text(
            price,
            style: const TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}
