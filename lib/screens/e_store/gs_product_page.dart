import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:lalitha_peetham/screens/e_store/gs_contact_widget.dart';
import 'package:lalitha_peetham/screens/e_store/gs_related_products.dart';
import 'package:lalitha_peetham/screens/online_vastu_property/vastupooja_layout.dart';
import 'package:lalitha_peetham/widgets/menu.dart';
import 'package:lalitha_peetham/widgets/reusable_responsive_type_widget.dart';

class GsProductPage extends StatefulWidget {
  const GsProductPage({super.key});

  @override
  State<GsProductPage> createState() => _GsProductPageState();
}

class _GsProductPageState extends State<GsProductPage> {

       void _openMenu(BuildContext context) {
    Navigator.push(
      context,
      PageRouteBuilder(
        pageBuilder: (context, animation, _) => DropdownGridMenu(),
        transitionDuration: const Duration(milliseconds: 300),
        transitionsBuilder:
            (context, animation, _, child) =>
                FadeTransition(opacity: animation, child: child),
        opaque: false,
      ),
    );
  }
  


  @override
  Widget build(BuildContext context) {
    return VastupoojaLayout(
      child: SingleChildScrollView(
        child: Column(
          children: [
            buildherosection(),
            buildProductCard(context),
            GsContactWidget(),
            SizedBox(height: 80,),
            GsRelatedProducts(),
            SizedBox(height: 80,),


          ],
        ),
      ),
    );
  }

 Widget buildherosection() {
      final size = MediaQuery.of(context).size;
    final isMediumScreen = size.width > 800;
    final isSmallScreen = size.width < 600;
    final isVerySmallScreen = size.width < 400;
    

    double getMenuIconSize() {
      if (isVerySmallScreen) return 24;
      if (isSmallScreen) return 26;
      if (isMediumScreen) return 28;
      return 30;
    }

    double getMenuFontSize() {
      if (isVerySmallScreen) return 18;
      if (isSmallScreen) return 20;
      if (isMediumScreen) return 22;
      return 24;
    }

    double getMenuLetterSpacing() {
      if (isVerySmallScreen) return 1;
      if (isSmallScreen) return 1.5;
      return 2;
    }

        double getMenuWidth() {
      if (isVerySmallScreen) return 200;
      if (isSmallScreen) return 250;
      return 300;
    } {
    return Stack(
      alignment: Alignment.center,
      children: [
        Image.asset(
          'assets/images/vastupooja1.png',
          width: double.infinity,
          height: 600,
          fit: BoxFit.cover,
        ),
        // Menu button positioned at top
          Positioned(
            top: 40,
            left: 0,
            right: 0,
            child: Center(
              child: GestureDetector(
                onTap: () => _openMenu(context),
                child: SizedBox(
                  width: getMenuWidth(),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.menu,
                        color: Colors.white,
                        size: getMenuIconSize(),
                      ),
                      SizedBox(width: isVerySmallScreen ? 6 : 8),
                      Text(
                        'MENU',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: getMenuFontSize(),
                          fontWeight: FontWeight.w600,
                          letterSpacing: getMenuLetterSpacing(),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        Positioned(
          top: 120,
          child: Column(
            children: [
              Text(
                "Bring Home Peace, Power & Positivity",
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
 }
 
 Widget buildProductCard(BuildContext context) {
  final isMobile = ResponsiveHelper.isMobile(context);
  final isTablet = ResponsiveHelper.isTablet(context);
  final isDesktop = ResponsiveHelper.isDesktop(context);

  final horizontalPadding = isMobile ? 16.0 : isTablet ? 40.0 : 200.0;

  return Stack(
    children: [
      // Background
      Positioned(
        child: SizedBox(
          height: 500,
          width: 1500,
          child: Image.asset(
            'assets/images/vastupooja4.png',
            fit: BoxFit.cover,
          ),
        ),
      ),

      // Planet Icon Top Right
      Positioned(
        top: isMobile ? 10 : 25,
        right: isMobile ? 10 : 30,
        child: Image.asset(
          'assets/images/vastupooja11.png',
          height: isMobile ? 40 : 60,
          width: isMobile ? 40 : 60,
        ),
      ),

      // Main content
      Padding(
        padding: EdgeInsets.symmetric(horizontal: horizontalPadding, vertical: 30),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "PRODUCT PAGE",
                style: TextStyle(
                  fontSize: isMobile ? 20 : 32,
                  fontWeight: FontWeight.bold,
                  color: Colors.black87,
                ),
              ),
              const SizedBox(height: 20),

              // Image + Details
              isMobile
                  ? Column(
                      children: [
                        buildProductImage(),
                        const SizedBox(height: 16),
                        buildProductDetails(context, isMobile),
                      ],
                    )
                  : Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        buildProductImage(),
                        const SizedBox(width: 20),
                        Expanded(child: buildProductDetails(context, isMobile)),
                      ],
                    ),

              const SizedBox(height: 24),
              buildSectionTitle(Icons.star, "Product Highlights"),
              buildSectionText(
                "• Material: Pure Brass With Antique Finish\n"
                "• Height: 7 inches | Width: 4.5 inches | Weight: 1.2 Kg\n"
                "• Handcrafted by Skilled Artisans in India\n"
                "• Ideal For Home Temple, Office Desk, Or Gifting\n"
                "• Comes With A Velvet Gift Box And Care Instructions\n"
                "• Vastu & Feng Shui Compliant",
              ),

              buildSectionTitle(Icons.info_outline, "Description"),
              buildSectionText(
                    "Invite divine energy into your space with this beautifully crafted Lord Ganesh Brass Idol from the Divine Blessings Collection. Designed with intricate detailing and a rustic antique finish, this idol embodies wisdom, prosperity, and the remover of obstacles. Whether you’re starting a new venture, setting up a prayer corner, or looking for a spiritual gift, this piece adds grace and serenity to any setting.",
              ),

              buildSectionTitle(Icons.favorite, "Benefits"),
              buildSectionText(
                "• Enhances Positive Energy In Your Home\n"
                "• Symbol Of Intellect and Wealth\n"
                "• Perfect For Ganesh Chaturthi, Housewarmings, And Wedding Gifts",
              ),

              buildSectionTitle(Icons.shopping_cart, "Also Available"),
              buildSectionText(
                "• Framed Gold Posters – ₹890\n• Krishna Frame – ₹899\n• Lakshmi-Ganesh Set – ₹2,499",
              ),

              buildSectionTitle(Icons.local_shipping, "Delivery & Returns"),
              buildSectionText(
                "• Free Delivery\n• 3–5 Day Delivery\n• 7-Day Returns\n• COD Available",
              ),

              buildCustomerReviews(context),
              const SizedBox(height: 60),
            ],
          ),
        ),
      ),
    ],
  );
}

Widget buildProductImage() {
  return Container(
    width: 300,
    height: 250,
    decoration: BoxDecoration(
      gradient: LinearGradient(
        colors: [Color(0XFFFFFFFF), Color(0XFFEAC63E)],
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
      ),
      borderRadius: BorderRadius.circular(8),
    ),
    child: Center(
      child: Image.asset(
        'assets/images/gemstone3.png',
        height: 200,
        width: 150,
        fit: BoxFit.cover,
      ),
    ),
  );
}

Widget buildProductDetails(BuildContext context, bool isMobile) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      const Text(
        "🛕 Product Name: Lord Durga Idol",
        style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Colors.brown),
      ),
      const Text("Divine Blessings – Lord Durga Brass Idol"),
      const SizedBox(height: 12),
      RichText(
        text: TextSpan(
          children: [
            TextSpan(text: "💰 Price: ₹1,249  ",
              style: TextStyle(fontSize: 18, color: Colors.black, fontWeight: FontWeight.bold)),
            TextSpan(text: "₹1,499", style: TextStyle(
                fontSize: 16, color: Colors.grey, decoration: TextDecoration.lineThrough)),
            TextSpan(text: "  (You Save ₹250)", style: TextStyle(fontSize: 14, color: Colors.green)),
          ],
        ),
      ),
      const Text('(Inclusive of all taxes)'),
      const SizedBox(height: 6),
      Row(
        children: [
          ElevatedButton(
            onPressed: () {
               context.go('/gemstone_add_to_cart');
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.white,
              padding: EdgeInsets.symmetric(horizontal: 24, vertical: 10),
            ),
            child: const Text("Add To Cart", style: TextStyle(color: Colors.black)),
          ),
          const SizedBox(width: 15),
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              backgroundColor: Color(0xFFEDCD54),
              padding: EdgeInsets.symmetric(horizontal: 24, vertical: 10),
            ),
            child: const Text("Buy", style: TextStyle(color: Colors.black)),
          ),
        ],
      ),
    ],
  );
}

Widget buildSectionTitle(IconData icon, String title) {
  return Padding(
    padding: const EdgeInsets.only(top: 20, bottom: 8),
    child: Row(
      children: [
        Icon(icon, color: Colors.orange),
        const SizedBox(width: 10),
        Text(title, style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
      ],
    ),
  );
}

Widget buildSectionText(String text) {
  return Text(
    text,
    style: const TextStyle(fontSize: 15, height: 1.5),
  );
}

  
Widget buildCustomerReviews(BuildContext context) {
  final isMobile = ResponsiveHelper.isMobile(context);

  return Padding(
    padding: EdgeInsets.symmetric(horizontal: isMobile ? 16 : 100, vertical: 24),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          '⭐ Customer Reviews:',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: isMobile ? 16 : 28,
          ),
        ),
        const SizedBox(height: 16),
        isMobile
            ? Column(
                children: const [
                  ReviewCard(),
                  SizedBox(height: 16),
                  ReviewCard(),
                ],
              )
            : Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Expanded(child: ReviewCard()),
                  SizedBox(width: 20),
                  Expanded(child: ReviewCard()),
                ],
              ),
      ],
    ),
  );
}

  
}


class ReviewCard extends StatelessWidget {
  const ReviewCard({super.key});

  @override
  Widget build(BuildContext context) {
    final isMobile = ResponsiveHelper.isMobile(context);

    return Container(
      height: 180,
      width: isMobile
          ? double.infinity
          : MediaQuery.of(context).size.width * 0.40, // Make full width in mobile
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: const Color(0xFFFDF6E9),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: const [
              CircleAvatar(
                radius: 30,
                backgroundImage: AssetImage('assets/images/catering6.png'),
              ),
              SizedBox(width: 8),
              Text(
                'Rekha',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
            ],
          ),
          const SizedBox(height: 12),
          const Text(
            'The Quality And Detail Are Amazing. It Truly Brings Peace To My Puja Room.',
            style: TextStyle(fontSize: 14, height: 1.4),
          ),
          const SizedBox(height: 12),
          Row(
            children: [
              Row(
                children: const [
                  Icon(Icons.star, color: Colors.amber, size: 20),
                  Icon(Icons.star, color: Colors.amber, size: 20),
                  Icon(Icons.star, color: Colors.amber, size: 20),
                  Icon(Icons.star, color: Colors.amber, size: 20),
                  Icon(Icons.star_border, color: Colors.amber, size: 20),
                ],
              ),
              const SizedBox(width: 8),
              const Text(
                '(4.6/5)',
                style: TextStyle(fontSize: 13, color: Colors.black87),
              ),
            ],
          )
        ],
      ),
    );
  }
}
