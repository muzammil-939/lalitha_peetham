import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:lalitha_peetham/screens/home_screens/welcome_screen_header.dart';
import 'package:lalitha_peetham/widgets/reusable_responsive_type_widget.dart';

class AdminLoginWithMail extends StatefulWidget {
  const AdminLoginWithMail({super.key});

  @override
  State<AdminLoginWithMail> createState() => _AdminLoginWithMailState();
}

class _AdminLoginWithMailState extends State<AdminLoginWithMail> {

  void _showSuccessDialog(BuildContext context) {
  showDialog(
    context: context,
    barrierDismissible: false, // prevent closing manually
    builder: (ctx) {
      return AlertDialog(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: const [
            Icon(Icons.check_circle, color: Colors.green, size: 60),
            SizedBox(height: 16),
            Text(
              " Admin Login Successful!",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      );
    },
  );

  // Wait 2 seconds → close dialog → then navigate
  Future.delayed(const Duration(seconds: 2), () async {
    Navigator.pop(context); // close the popup
    await Future.delayed(const Duration(milliseconds: 200));
    context.go('/admin_panchangam');
  });
}
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
           WelcomeScreenHeader(),
            buildChooseYourRole(context),
            buildLoginSection(context),
         
          
          ],
        ),
      )
      
    );
  }

    
Widget buildChooseYourRole(BuildContext context) {
  double screenWidth = ResponsiveHelper.screenWidth(context);
  double screenHeight = ResponsiveHelper.screenHeight(context);

  // 📱 For Mobile: Use Column instead of Stack
  if (ResponsiveHelper.isMobile(context)) {
    return Container(
      width: double.infinity,
      color: Colors.white,
      child: Column(
        children: [
          // Image
          Image.asset(
            "assets/images/welcome_image.png",
            width: double.infinity,
            height: screenHeight * 0.25,
            fit: BoxFit.cover,
          ),
          const SizedBox(height: 16),

          // Text
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: const [
                Text(
                   "LOGIN WITH MAIL ID",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.black87,
                  ),
                ),
                SizedBox(height: 12),
                Text(
                  "Quick and secure access using your  mail id",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.black87,
                    height: 1.5,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  // 💻 For Tablet/Desktop: Use Stack with Positioned text
  return Stack(
    children: [
      Image.asset(
        "assets/images/welcome_image.png",
        width: double.infinity,
        height: screenHeight * 0.8,
        fit: BoxFit.cover,
      ),
      Positioned(
        left: 50,
        top: 80,
        child: SizedBox(
          width: 500,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text(
                "LOGIN WITH MAIL ID",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.black87,
                ),
              ),
              SizedBox(height: 12),
              Text(
                "Quick and secure access using your  mail id",
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.black87,
                  height: 1.5,
                ),
              ),
            ],
          ),
        ),
      ),
    ],
  );
}

Widget buildLoginSection(BuildContext context) {
  double screenWidth = MediaQuery.of(context).size.width;

  return Container(
    width: double.infinity,
    color: const Color(0xFFEAE2B1), // background color
    child: Center(
      child: Container(
        width: screenWidth > 600 ? 420 : screenWidth * 0.9, // responsive width
        margin: const EdgeInsets.symmetric(vertical: 40, horizontal: 16),
        padding: const EdgeInsets.all(28),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.08),
              blurRadius: 10,
              offset: const Offset(0, 4),
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Title
            const Center(
              child: Text(
                "Login to your account",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black87,
                ),
              ),
            ),
            const SizedBox(height: 24),

            // Mobile Number
            const Text(
              "Email",
              style: TextStyle(fontSize: 14, color: Colors.black87),
            ),
            const SizedBox(height: 6),
            TextField(
              keyboardType: TextInputType.phone,
              decoration: InputDecoration(
                hintText: "lalithapeetham@gmail.com",
                contentPadding: const EdgeInsets.symmetric(horizontal: 12, vertical: 14),
                enabledBorder: OutlineInputBorder(
                  borderSide: const BorderSide(color: Colors.black26),
                  borderRadius: BorderRadius.circular(6),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: const BorderSide(color: Color(0xFFD4AF37), width: 2),
                  borderRadius: BorderRadius.circular(6),
                ),
              ),
            ),
            const SizedBox(height: 16),

            // Password + Forgot
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Password", style: TextStyle(fontSize: 14, color: Colors.black87)),
                
              ],
            ),
            const SizedBox(height: 6),
            TextField(
              obscureText: true,
              decoration: InputDecoration(
                hintText: "Enter your password",
                suffixIcon: Icon(Icons.visibility_outlined, size: 20),
                contentPadding: const EdgeInsets.symmetric(horizontal: 12, vertical: 14),
                enabledBorder: OutlineInputBorder(
                  borderSide: const BorderSide(color: Colors.black26),
                  borderRadius: BorderRadius.circular(6),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: const BorderSide(color: Color(0xFFD4AF37), width: 2),
                  borderRadius: BorderRadius.circular(6),
                ),
              ),
            ),
            const SizedBox(height: 24),

            // Login button
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFFD4AF37),
                  padding: const EdgeInsets.symmetric(vertical: 14),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(6),
                  ),
                ),
                onPressed: () {
                  _showSuccessDialog(context);
                },
                child: const Text(
                  "Login now",
                  style: TextStyle(fontSize: 16, color: Colors.white),
                ),
              ),
            ),
            const SizedBox(height: 18),

           
          ],
        ),
      ),
    ),
  );
}

}