import 'package:flutter/material.dart';

class GemstoneCardsGrid extends StatelessWidget {
  const GemstoneCardsGrid({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> products = [
  {
    "image": "assets/images/stone1.png",
    "title": "Emarold",
    "quality": "Select Quality",
    "prices": {
      "1st Quality": {"price": "2000", "oldPrice": "2600"},
      "2nd Quality": {"price": "1800", "oldPrice": "2300"},
      "3rd Quality": {"price": "1600", "oldPrice": "2100"},
      "4th Quality": {"price": "1400", "oldPrice": "1900"},
    }
  },
{
    "image": "assets/images/stone1.png",
    "title": "Emarold",
    "quality": "Select Quality",
    "prices": {
      "1st Quality": {"price": "2000", "oldPrice": "2600"},
      "2nd Quality": {"price": "1800", "oldPrice": "2300"},
      "3rd Quality": {"price": "1600", "oldPrice": "2100"},
      "4th Quality": {"price": "1400", "oldPrice": "1900"},
    }
  },
     {
    "image": "assets/images/stone1.png",
    "title": "Emarold",
    "quality": "Select Quality",
    "prices": {
      "1st Quality": {"price": "2000", "oldPrice": "2600"},
      "2nd Quality": {"price": "1800", "oldPrice": "2300"},
      "3rd Quality": {"price": "1600", "oldPrice": "2100"},
      "4th Quality": {"price": "1400", "oldPrice": "1900"},
    }
  },
     {
    "image": "assets/images/stone1.png",
    "title": "Emarold",
    "quality": "Select Quality",
    "prices": {
      "1st Quality": {"price": "2000", "oldPrice": "2600"},
      "2nd Quality": {"price": "1800", "oldPrice": "2300"},
      "3rd Quality": {"price": "1600", "oldPrice": "2100"},
      "4th Quality": {"price": "1400", "oldPrice": "1900"},
    }
  },
    ];

    return Center(
      child: Wrap(
        spacing: 20,
        runSpacing: 20,
        children: products.map((product) {
          return ProductCard(product: product);
        }).toList(),
      ),
    );
  }
}
class ProductCard extends StatefulWidget {
  final Map<String, dynamic> product;
  const ProductCard({super.key, required this.product});

  @override
  State<ProductCard> createState() => _ProductCardState();
}

class _ProductCardState extends State<ProductCard> {
  String? selectedQuality;
  String? selectedCarat;
  String? selectedSize;
  String? selectedGram;
  String? selectedModel;
  String currentImage = "";
  String currentPrice = "";
  String currentOldPrice = "";


  final List<String> qualities = [
    "Select Quality",
    "1st Quality",
    "2nd Quality",
    "3rd Quality",
    "4th Quality"
  ];
  final List<String> carats = ["Select Carats", "1 Carat", "2 Carats", "3 Carats", "4 Carats"];
  final List<String> sizes = ["Select Size", "Small", "Medium", "Large"];
  final List<String> grams = ["Select Grams", "1g", "2g", "3g", "5g"];
  final List<String> models = ["Select Model", "Round", "Oval", "Square"];

@override
void initState() {
  super.initState();
  selectedQuality = widget.product["quality"];
  selectedCarat = "Select Carats";
  selectedSize = "Select Size";
  selectedGram = "Select Grams";
  selectedModel = "Select Model";

  currentImage = widget.product["image"];
  currentPrice = widget.product["prices"]["1st Quality"]["price"];
  currentOldPrice = widget.product["prices"]["1st Quality"]["oldPrice"];
}


  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Color(0xFFE9E9E9),
        borderRadius: BorderRadius.circular(8),
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 4,
            offset: Offset(0, 2),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Image Section
         Container(
  height: 150,
  decoration: BoxDecoration(
    color: const Color(0xFFE4C74D),
    borderRadius: BorderRadius.circular(4),
  ),
  child: Stack(
    clipBehavior: Clip.none,
    children: [
      // Top-left logo
      Positioned(
        top: 8,
        left: 8,
        child: Image.asset(
          'assets/images/916.png', // replace with your left logo
          height: 32,
          color: Colors.white,
        ),
      ),
      // Top-right logo
      Positioned(
        top: 8,
        right: 8,
        child: Image.asset(
          'assets/images/gia.png', // replace with your right logo
          height: 32,
        ),
      ),
      Positioned(
        bottom: 8,
        left: 8,
        child: Image.asset(
          'assets/images/iso9001.png', // replace with your right logo
          height: 32,
        ),
      ),
      // Main centered image
      Center(
        child: Image.asset(
          currentImage,
          fit: BoxFit.contain,
          height: 100,
        ),
      ),
    ],
  ),
),

          const SizedBox(height: 8),
          // Title
          Text(
            widget.product["title"],
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
          ),
          const SizedBox(height: 4),
          // Dropdowns
         // Dropdowns in rows (compact size like reference image)
Row(
  children: [
   Expanded(
  child: _dropdownCompact(selectedQuality!, qualities, (val) {
    setState(() {
      selectedQuality = val;

      // Change image
      if (val == "1st Quality") {
        currentImage = "assets/images/stone1.png";
      } else if (val == "2nd Quality") {
        currentImage = "assets/images/stone2.png";
      } else if (val == "3rd Quality") {
        currentImage = "assets/images/stone3.png";
      } else if (val == "4th Quality") {
        currentImage = "assets/images/stone4.png";
      } else {
        currentImage = widget.product["image"];
      }


      // Change price if not "Select Quality"
      if (val != "Select Quality") {
        currentPrice = widget.product["prices"][val]["price"];
        currentOldPrice = widget.product["prices"][val]["oldPrice"];
      } //else {
       // currentPrice = "";
       // currentOldPrice = "";
    });
  }),
),

    const SizedBox(width: 6),
    Expanded(child: _dropdownCompact(selectedCarat!, carats, (val) => setState(() => selectedCarat = val))),
  ],
),
const SizedBox(height: 4),
Row(
  children: [
    Expanded(child: _dropdownCompact(selectedSize!, sizes, (val) => setState(() => selectedSize = val))),
    const SizedBox(width: 6),
    Expanded(child: _dropdownCompact(selectedGram!, grams, (val) => setState(() => selectedGram = val))),
  ],
),
const SizedBox(height: 4),
Row(
  children: [
    Expanded(child: _dropdownCompact(selectedModel!, models, (val) => setState(() => selectedModel = val))),
  ],
),

          const SizedBox(height: 8),
          // Buttons
          Row(
            children: [
              Expanded(child: _greyButton("Make With Gold")),
              const SizedBox(width: 6),
              Expanded(child: _greyButton("Make With Silver")),
            ],
          ),
          const SizedBox(height: 8),
          Row(
            children: [
              Expanded(child: _greyButton("With Pooja")),
              const SizedBox(width: 6),
              Expanded(child: _greyButton("Why Buy Here")),
            ],
          ),
          const SizedBox(height: 8),
//           Row(
//   children: [
//     Text(
//       currentPrice.isNotEmpty ? currentPrice : "—",
//       style: const TextStyle(
//         fontWeight: FontWeight.bold,
//         fontSize: 14,
//       ),
//     ),
//     const SizedBox(width: 8),
//     if (currentOldPrice.isNotEmpty)
//       Text(
//         currentOldPrice,
//         style: const TextStyle(
//           fontSize: 14,
//           color: Colors.black,
//           decoration: TextDecoration.lineThrough,
//         ),
//       ),
//   ],
// ),

          // Price
         Row(
  children: [
    Text(
      currentPrice,
      style: const TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 14,
      ),
    ),
    const SizedBox(width: 8),
    
      Text(
        currentOldPrice,
        style: const TextStyle(
          fontSize: 14,
          color: Colors.black,
          decoration: TextDecoration.lineThrough,
        ),
      ),
  ],
),

          const SizedBox(height: 8),
          // Buy Button
          SizedBox(
            width: double.infinity,
            height: 36,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFFECC04A),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(4),
                ),
              ),
              onPressed: () {},
              child: const Text(
                "Buy",
                style: TextStyle(color: Colors.black),
              ),
            ),
          ),
        ],
      ),
    );
  }

Widget _dropdownCompact(String value, List<String> items, Function(String) onChanged) {
  return Container(
    height: 32,
    padding: const EdgeInsets.symmetric(horizontal: 6),
    decoration: BoxDecoration(
      border: Border.all(color: Color(0xFFA3A29C),),
      borderRadius: BorderRadius.circular(4),
      //color: Color(0xFFA3A29C),
    ),
    child: DropdownButton<String>(
      isExpanded: true,
      value: value,
      icon: const Icon(Icons.keyboard_arrow_down, size: 14),
      underline: const SizedBox(),
      style: const TextStyle(fontSize: 11, color: Colors.black),
      items: items.map((item) {
        return DropdownMenuItem<String>(
          value: item,
          child: Text(item, style: const TextStyle(fontSize: 11)),
        );
      }).toList(),
      onChanged: (val) {
        if (val != null) onChanged(val);
      },
    ),
  );
}


  Widget _greyButton(String text) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 4),
      decoration: BoxDecoration(
        color: Color(0xFFA3A29C),
        borderRadius: BorderRadius.circular(4),
      ),
      child: Center(
        child: Text(
          text,
          style: const TextStyle(fontSize: 10),
        ),
      ),
    );
  }
}
