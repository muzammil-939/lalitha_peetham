import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:lalitha_peetham/screens/online_vastu_property/vastupooja_layout.dart';

class GsDeliveryAddressPage extends StatefulWidget {
  const GsDeliveryAddressPage({super.key});

  @override
  State<GsDeliveryAddressPage> createState() => _GsDeliveryAddressPageState();
}

class _GsDeliveryAddressPageState extends State<GsDeliveryAddressPage> {
  @override
  Widget build(BuildContext context) {
    return VastupoojaLayout(
      child: SingleChildScrollView(
        child: Column(
          children: [
             buildHeroSection(),
              buildDeliveryAddressForm(context),
              SizedBox(height: 80,),

          ],
        ),
      ),
    );
  }

  Widget buildHeroSection() {
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
              Text(
                "Menu",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
        Positioned(
          top: 120,
          child: Column(
            children: const [
              Text(
                "Wishlist of Grace & Devotion",
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
              'assets/images/gemstone7.png',
              height: 180,
              width: 280,
              fit: BoxFit.cover,
            ),
          ),
        )
      ],
    );
  }

  Widget buildDeliveryAddressForm(BuildContext context) {
    return Stack(
      children: [
        // 🌄 Background Decorations
        Positioned(
          top: 0,
          left: 0,
          child: SizedBox(
            height: 500,
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
            'assets/images/vastupooja11.png',
            width: 60,
            height: 60,
          ),
        ),
    Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: 80,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.shopping_bag, color: Colors.pink, size: 24),
              SizedBox(width: 8),
              Text(
                "Delivery Address Details",
                style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Serif',
                ),
              ),
            ],
          ),
    Container(
      padding: EdgeInsets.all(32),
      decoration: BoxDecoration(
        color: Color(0xFFE4C74D), // Yellow shade
        borderRadius: BorderRadius.circular(0),
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 10,
            offset: Offset(0, 2),
          ),
        ],
      ),
      width: 600, // Adjust based on image proportions
      child: 
         Column(
          children: [
          Row(
            children: [
              Expanded(
                child: _CustomTextField(label: "Full Name"),
              ),
              SizedBox(width: 16),
              Expanded(
                child: _CustomTextField(label: "Contact Number"),
              ),
            ],
          ),
          SizedBox(height: 16),
          Row(
            children: [
              Expanded(
                child: _CustomTextField(label: "Alternate Number (Optional)"),
              ),
              SizedBox(width: 16),
              Expanded(
                child: _CustomTextField(label: "Address"),
              ),
            ],
          ),
          SizedBox(height: 16),
          Row(
            children: [
              Expanded(
                child: _CustomTextField(label: "Street"),
              ),
              SizedBox(width: 16),
              Expanded(
                child: _CustomTextField(label: "state:"),
              ),
            ],
          ),
          SizedBox(height: 16),
          Row(
            children: [
              Expanded(
                child: _CustomTextField(label: "City"),
              ),
              SizedBox(width: 16),
              Expanded(
                child: _CustomTextField(label: "Pincode"),
              ),
            ],
          ),
          SizedBox(height: 16),
          Row(
            children: [
              Expanded(
                child: _CustomTextField(label: "Type of address:"),
              ),
              SizedBox(width: 16),
              Expanded(
                child: Align(
                  alignment: Alignment.centerRight,
                  child: ElevatedButton(
                    onPressed: () {
                      context.go('/gemstone_order_summary');
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      foregroundColor: Colors.black,
                      padding: EdgeInsets.symmetric(horizontal: 52, vertical: 16),
                    ),
                    child: Text(
                      'Continue',
                      style: TextStyle(fontSize: 16),
                    ),
                  ),
                ),
              ),
            ],
          ),
          ]
         )
    )
        ],
    )
      ]
    );
      
    
  }
}


class _CustomTextField extends StatelessWidget {
  final String label;
  const _CustomTextField({required this.label});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: TextStyle(
            fontFamily: 'Serif',
            fontSize: 16,
            color: Colors.black,
          ),
        ),
        SizedBox(height: 4),
        TextField(
          decoration: InputDecoration(
            filled: true,
            fillColor: Color(0xFFF0EFEA), // Off-white field color
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(4),
              borderSide: BorderSide.none,
            ),
            contentPadding: EdgeInsets.symmetric(vertical: 8, horizontal: 12),
          ),
        ),
      ],
    );
  }
}
