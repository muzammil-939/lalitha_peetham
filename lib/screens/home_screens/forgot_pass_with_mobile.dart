import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:lalitha_peetham/screens/home_screens/welcome_screen_header.dart';
import 'package:lalitha_peetham/widgets/reusable_responsive_type_widget.dart';

class ForgotPassWithMobile extends StatefulWidget {
  const ForgotPassWithMobile({super.key});

  @override
  State<ForgotPassWithMobile> createState() => _ForgotPassWithMobileState();
}

class _ForgotPassWithMobileState extends State<ForgotPassWithMobile> {
  final TextEditingController mobileController = TextEditingController();



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            const WelcomeScreenHeader(),
            buildForgotPasswordHeader(context),
            buildForgotPasswordSection(context),
          ],
        ),
      ),
    );
  }


Widget buildForgotPasswordHeader(BuildContext context) {
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
                  "FORGOT PASSWORD",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.black87,
                  ),
                ),
                SizedBox(height: 12),
                Text(
                  "Enter Your Registered Mobile Number To Reset Your Password.",
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
                "FORGOT PASSWORD",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.black87,
                ),
              ),
              SizedBox(height: 12),
              Text(
                "Enter Your Registered Mobile Number To Reset Your Password.",
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

  Widget buildForgotPasswordSection(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Container(
      width: double.infinity,
      color: const Color(0xFFEAE2B1),
      child: Center(
        child: Container(
          width: screenWidth > 600 ? 420 : screenWidth * 0.9,
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
              const Center(
                child: Text(
                  "Forgot Password",
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
                "Enter Registered Mobile Number",
                style: TextStyle(fontSize: 14, color: Colors.black87),
              ),
              const SizedBox(height: 6),
              TextField(
                controller: mobileController,
                keyboardType: TextInputType.phone,
                decoration: InputDecoration(
                  hintText: "+91 7868919191",
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
              const SizedBox(height: 20),

              // Send OTP button
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
                   context.go('/otp_verify_mobile');
                  },
                  child: const Text(
                    "Send OTP",
                    style: TextStyle(fontSize: 16, color: Colors.white),
                  ),
                ),
              ),
              const SizedBox(height: 18),

              // Other login options
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text("Try Another Way? "),
                      GestureDetector(
                        onTap: () {
                          context.go('/login_with_mail');
                        },
                        child: const Text(
                          "Login By Email",
                          style: TextStyle(color: Color(0xFFD4AF37)),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 8),
                  const Text("Or"),
                  const SizedBox(height: 8),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text("Don’t You Account ? "),
                      GestureDetector(
                        onTap: () {
                          context.go('/signup');
                        },
                        child: const Text(
                          "Sign Up",
                          style: TextStyle(color: Color(0xFFD4AF37)),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
