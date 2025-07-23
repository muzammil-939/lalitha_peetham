import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:lalitha_peetham/screens/catering_screens/catering_layout.dart';

class CatererProductList extends StatefulWidget {
  const CatererProductList({super.key});

  @override
  State<CatererProductList> createState() => _CatererProductListState();
}

class _CatererProductListState extends State<CatererProductList> {
  @override
  Widget build(BuildContext context) {
    return CateringLayout(
      child: SingleChildScrollView(
        child: Column(
          children: [
            buildherosection(),
            FoodCartScreen(),
            SizedBox(height: 80,),

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
              Text("Menu", style: TextStyle(color: Colors.white, fontSize: 25, fontWeight: FontWeight.bold)),
            ],
          ),
        ),
        Positioned(
          top: 120,
          child: Column(
            children: const [
              
              Text(
                "Find the Perfect Caterer for Your\nOccasion",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 45,
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
              'assets/images/catering1.png',
              height: 180,
              width: 280,
              fit: BoxFit.cover,
            ),
          ),
        )
      ],
    );
  }
}


class FoodCartScreen extends StatelessWidget {
  const FoodCartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
        children: [
          // Background Decorations
         Positioned(
        top: 0,
        left: 0,
        child: SizedBox(
          height: 450,
          width: 1500,
          child: Image.asset(
            'assets/images/vastupooja4.png',
            fit: BoxFit.cover,
          ),
        ),
      ),
          Positioned(
            top: 40,
            right: 40,
            child: Image.asset(
              'assets/images/vastupooja11.png', // orange moon image
              width: 60,
              height: 60,
            ),
          ),
    Padding(
      padding: const EdgeInsets.symmetric(horizontal: 150.0),
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 80,),
            buildFoodCard(
              context,
              imagePath: 'assets/images/catering9.png',
              alignmentLeft: true,
            ),
            const SizedBox(height: 20),
            buildFoodCard(
              context,
              imagePath: 'assets/images/catering10.png',
              alignmentLeft: false,
            ),
            const SizedBox(height: 80),
            const Row(
              children: [
                Icon(Icons.receipt_long_rounded),
                SizedBox(width: 6),
                Text(
                  "Product List",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 28,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16),
            buildTable(),
            const SizedBox(height: 16),
            const Text("Total Products: 3"),
            const Text("Total Quantity: 8"),
            const Text(
              "Grand Total Price: \$13.00",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 30),
            Center(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFFEDC14B),
                  foregroundColor: Colors.black,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  padding: const EdgeInsets.symmetric(
                    horizontal: 40,
                    vertical: 14,
                  ),
                ),
                onPressed: () {
                  context.go('/caterer_product_dishes');
                },
                child: const Text("Continue", style: TextStyle(fontSize: 16)),
              ),
            )
          ],
        ),
    )
    ]
    );
    
  }

  Widget buildFoodCard(BuildContext context,
      {required String imagePath, required bool alignmentLeft}) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: const Color(0xFFEDC14B),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        children: alignmentLeft
            ? [
                ClipOval(
                  child: Image.asset(imagePath, height: 80, width: 80, fit: BoxFit.cover),
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text("is simply dummy",
                          style: TextStyle(fontWeight: FontWeight.bold)),
                      const SizedBox(height: 4),
                      const Text(
                        "is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard",
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ],
                  ),
                ),
                const SizedBox(width: 8),
                Column(
                  children: [
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                        foregroundColor: Colors.black,
                        elevation: 2,
                      ),
                      onPressed: () {},
                      child: const Text("View details"),
                    ),
                    const SizedBox(height: 10),
                    quantityButton(),
                  ],
                )
              ]
            : [
                Column(
                  children: [
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                        foregroundColor: Colors.black,
                        elevation: 2,
                      ),
                      onPressed: () {},
                      child: const Text("View details"),
                    ),
                    const SizedBox(height: 10),
                    quantityButton(),
                  ],
                ),
                const SizedBox(width: 8),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      const Text("is simply dummy",
                          style: TextStyle(fontWeight: FontWeight.bold)),
                      const SizedBox(height: 4),
                      const Text(
                        "is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard",
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.right,
                      ),
                    ],
                  ),
                ),
                const SizedBox(width: 12),
                ClipOval(
                  child: Image.asset(imagePath, height: 80, width: 80, fit: BoxFit.cover),
                ),
              ],
      ),
    );
  }

  Widget quantityButton() {
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.grey.shade300,
        foregroundColor: Colors.black,
      ),
      child: const Text("- 1 +"),
    );
  }

  Widget buildTable() {
    return Table(
      columnWidths: const {
        0: FlexColumnWidth(2),
        1: FlexColumnWidth(1.2),
        2: FlexColumnWidth(1.5),
        3: FlexColumnWidth(1.5),
      },
      border: TableBorder.symmetric(
        inside: BorderSide(color: Colors.grey.shade300),
      ),
      children: [
        const TableRow(
          decoration: BoxDecoration(color: Colors.white),
          children: [
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Text("Product Name", style: TextStyle(fontWeight: FontWeight.bold)),
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Text("Quantity", style: TextStyle(fontWeight: FontWeight.bold)),
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Text("Price per Unit", style: TextStyle(fontWeight: FontWeight.bold)),
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Text("Total Price", style: TextStyle(fontWeight: FontWeight.bold)),
            ),
          ],
        ),
        ...List.generate(
          3,
          (index) => const TableRow(
            children: [
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Text("Biryani"),
              ),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Text("5"),
              ),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Text("\$1.00"),
              ),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Text("\$5.00"),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
