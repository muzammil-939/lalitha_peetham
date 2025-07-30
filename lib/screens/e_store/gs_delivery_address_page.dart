import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:lalitha_peetham/screens/online_vastu_property/vastupooja_layout.dart';
import 'package:lalitha_peetham/widgets/reusable_responsive_type_widget.dart';

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
            children: [
              Text(
                "Wishlist of Grace & Devotion",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: ResponsiveFontsize.fontSize(
                    context, mobile: 20, tablet: 30, desktop: 45),
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
  final isMobile = ResponsiveHelper.isMobile(context);
  final isTablet = ResponsiveHelper.isTablet(context);
  final isDesktop = ResponsiveHelper.isDesktop(context);

  return Stack(
    children: [
      // 🌄 Background Decorations
      Positioned(
        top: 0,
        left: 0,
        child: SizedBox(
          height: isMobile ? 300 : 500,
          width: MediaQuery.of(context).size.width,
          child: Image.asset(
            'assets/images/vastupooja4.png',
            fit: BoxFit.cover,
          ),
        ),
      ),
      if (!isMobile)
        Positioned(
          top: 40,
          right: 40,
          child: Image.asset(
            'assets/images/vastupooja11.png',
            width: 60,
            height: 60,
          ),
        ),

      SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: isMobile ? 40 : 80),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.shopping_bag, color: Colors.pink, size: isMobile ? 20 : 28),
                SizedBox(width: 8),
                Text(
                  "Delivery Address Details",
                  style: TextStyle(
                    fontSize: isMobile ? 20 : 32,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Serif',
                  ),
                ),
              ],
            ),
            SizedBox(height: isMobile ? 24 : 48),

            // 🟡 Main Address Container
            Container(
              padding: EdgeInsets.all(isMobile ? 16 : 32),
              decoration: BoxDecoration(
                color: Color(0xFFE4C74D),
                borderRadius: BorderRadius.circular(8),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black12,
                    blurRadius: 10,
                    offset: Offset(0, 2),
                  ),
                ],
              ),
              width: isMobile ? MediaQuery.of(context).size.width * 0.9 : 600,
              child: Column(
                children: [

                  // 🔁 Responsive Rows/Columns
                  buildFormRow(context, isMobile, [
                    _CustomTextField(label: "Full Name"),
                    _CustomTextField(label: "Contact Number"),
                  ]),
                  SizedBox(height: 16),
                  buildFormRow(context, isMobile, [
                    _CustomTextField(label: "Alternate Number (Optional)"),
                    _CustomTextField(label: "Address"),
                  ]),
                  SizedBox(height: 16),
                  buildFormRow(context, isMobile, [
                    _CustomTextField(label: "Street"),
                    _CustomTextField(label: "State"),
                  ]),
                  SizedBox(height: 16),
                  buildFormRow(context, isMobile, [
                    _CustomTextField(label: "City"),
                    _CustomTextField(label: "Pincode"),
                  ]),
                  SizedBox(height: 16),
                  buildFormRow(context, isMobile, [
                    _CustomTextField(label: "Type of address:"),
                    Align(
                      alignment: Alignment.centerRight,
                      child: ElevatedButton(
                        onPressed: () {
                          context.go('/gemstone_order_summary');
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white,
                          foregroundColor: Colors.black,
                          padding: EdgeInsets.symmetric(horizontal: 32, vertical: 14),
                        ),
                        child: Text(
                          'Continue',
                          style: TextStyle(fontSize: 16),
                        ),
                      ),
                    ),
                  ]),
                ],
              ),
            ),
            SizedBox(height: 40),
          ],
        ),
      )
    ],
  );
}
Widget buildFormRow(BuildContext context, bool isMobile, List<Widget> children) {
  if (isMobile) {
    return Column(
      children: [
        for (var child in children) ...[
          child,
          SizedBox(height: 12),
        ]
      ],
    );
  } else {
    return Row(
      children: [
        for (int i = 0; i < children.length; i++) ...[
          Expanded(child: children[i]),
          if (i < children.length - 1) SizedBox(width: 16),
        ]
      ],
    );
  }
}

}

class _CustomTextField extends StatelessWidget {
  final String label;
  const _CustomTextField({required this.label});

  @override
  Widget build(BuildContext context) {
    final isMobile = ResponsiveHelper.isMobile(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: TextStyle(
            fontFamily: 'Serif',
            fontSize: isMobile ? 14 : 16,
            color: Colors.black,
          ),
        ),
        SizedBox(height: 4),
        TextField(
          decoration: InputDecoration(
            filled: true,
            fillColor: Color(0xFFF0EFEA),
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
