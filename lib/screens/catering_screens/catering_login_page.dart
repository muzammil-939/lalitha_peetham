import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:lalitha_peetham/screens/catering_screens/catering_layout.dart';

class CateringLoginPage extends StatefulWidget {
  const CateringLoginPage({super.key});

  @override
  State<CateringLoginPage> createState() => _CateringLoginPageState();
}

class _CateringLoginPageState extends State<CateringLoginPage> {
  @override
  Widget build(BuildContext context) {
    return CateringLayout(
      child: SingleChildScrollView(
        child: Column(
          children: [
            buildherosection(),
            buildLoginpage(context),
            SizedBox(height: 80,)

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



  Widget buildLoginpage(BuildContext context) {
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
          Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                SizedBox(height: 80,),
                const Text(
                  "Login To Continue! 🍲",
                  style: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.w600,
                    fontFamily: 'Serif',
                  ),
                ),
                const SizedBox(height: 80),
                Container(
                  width: 700,
                  padding: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: const Color(0xFFEDC14B),
                    borderRadius: BorderRadius.circular(6),
                  ),
                  child: Row(
                    children: [
                      // Left: Image
                      ClipRRect(
                        borderRadius: BorderRadius.circular(8),
                        child: Image.asset(
                          'assets/images/catering7.png',
                          width: 300,
                          height: 320,
                          fit: BoxFit.cover,
                        ),
                      ),
                      const SizedBox(width: 20),
                      // Right: Form
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                           
                            
                            const Text(
                              'Phone Number',
                              style: TextStyle(fontSize: 16),
                            ),
                            const SizedBox(height: 8),
                            TextField(
                              keyboardType: TextInputType.phone,
                              decoration: InputDecoration(
                                filled: true,
                                fillColor: Colors.grey[300],
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(6),
                                  borderSide: BorderSide.none,
                                ),
                              ),
                            ),
                            const SizedBox(height: 16),
                            SizedBox(
                              height: 45,
                              width: double.infinity,
                              child: ElevatedButton(
                                onPressed: () {
                                  context.go('/caterer_about_us');
                                },
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.white,
                                  foregroundColor: Colors.black,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(6),
                                  ),
                                ),
                                child: const Text("Log in"),
                              ),
                            ),
                            const SizedBox(height: 12),
                            const Center(child: Text("Or")),
                            const SizedBox(height: 12),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                socialIcon('assets/images/google.png'),
                                const SizedBox(width: 10),
                                socialIcon('assets/images/FB.png'),
                                const SizedBox(width: 10),
                                socialIcon('assets/images/twitter.png'),
                              ],
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      );
    
  }

  Widget socialIcon(String assetPath) {
    return Container(
      padding: const EdgeInsets.all(8),
      decoration: const BoxDecoration(
        color: Colors.white,
        shape: BoxShape.circle,
      ),
      child: Image.asset(
        assetPath,
        width: 24,
        height: 24,
      ),
    );
  }
}
