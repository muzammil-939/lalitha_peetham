import 'dart:async';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:lalitha_peetham/screens/home_screens/welcome_screen.dart';
import 'package:lalitha_peetham/screens/home_screens/welcome_screen_header.dart';
import 'package:lalitha_peetham/widgets/reusable_responsive_type_widget.dart';

class CreateAccoutPage extends StatefulWidget {
  const CreateAccoutPage({super.key});

  @override
  State<CreateAccoutPage> createState() => _CreateAccoutPageState();
}

class _CreateAccoutPageState extends State<CreateAccoutPage> {
  void _showOtpDialog(BuildContext context, String type) {
    int secondsRemaining = 30;
    bool enableResend = false;
    Timer? timer;

    TextEditingController otpController = TextEditingController();

    void startTimer() {
      timer = Timer.periodic(const Duration(seconds: 1), (t) {
        if (secondsRemaining > 0) {
          setState(() {
            secondsRemaining--;
          });
        } else {
          setState(() {
            enableResend = true;
          });
          t.cancel();
        }
      });
    }

    startTimer();

    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (ctx) {
        return StatefulBuilder(
          builder: (context, setState) {
            return AlertDialog(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12)),
              title: Text("Verify $type"),
              content: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text("Enter the OTP sent to your $type"),
                  const SizedBox(height: 12),
                  TextField(
                    controller: otpController,
                    keyboardType: TextInputType.number,
                    maxLength: 6,
                    decoration: InputDecoration(
                      hintText: "Enter OTP",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),

                  // Countdown or Resend
                  enableResend
                      ? Column(
                          children: [
                            TextButton(
                              onPressed: () {
                                setState(() {
                                  secondsRemaining = 30;
                                  enableResend = false;
                                });
                                startTimer();
                              },
                              child: const Text("Resend OTP"),
                            ),
                            TextButton(
                              onPressed: () {
                                Navigator.pop(ctx); // close popup
                                // logic to change number/email
                              },
                              child: Text("Change $type"),
                            ),
                          ],
                        )
                      : Text(
                          "Resend available in $secondsRemaining s",
                          style: const TextStyle(color: Colors.grey),
                        ),
                ],
              ),
              actions: [
                TextButton(
                  onPressed: () {
                    timer?.cancel();
                    Navigator.pop(ctx);
                  },
                  child: const Text("Cancel"),
                ),
                ElevatedButton(
                  onPressed: () {
                    // validate OTP logic
                    timer?.cancel();
                    Navigator.pop(ctx);
                  },
                  child: const Text("Verify"),
                ),
              ],
            );
          },
        );
      },
    ).then((_) {
      timer?.cancel();
    });
  }

 
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
              "Account Created Successfully!",
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
    context.go('/welcome_to_lalithapeetham'); 
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
           // const SizedBox(height: 20),
            buildCreateAccountSection(context)
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
                  "CREATE YOUR LALITHA PEETHAM ACCOUNT",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.black87,
                  ),
                ),
                SizedBox(height: 12),
                Text(
                  "Join our spiritual community to access personalized services, events, and guidance.",
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
                "CREATE YOUR LALITHA PEETHAM ACCOUNT",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.black87,
                ),
              ),
              SizedBox(height: 12),
              Text(
                "Join our spiritual community to access personalized services, events, and guidance.",
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

Widget buildCreateAccountSection(BuildContext context) {
  double screenWidth = MediaQuery.of(context).size.width;

  return Container(
    width: double.infinity,
    color: const Color(0xFFEAE2B1), // background color
    child: Center(
      child: Container(
        width: screenWidth > 600 ? 500 : screenWidth * 0.9, // responsive width
        margin: const EdgeInsets.symmetric(vertical: 40, horizontal: 16),
        padding: const EdgeInsets.all(24),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.05),
              blurRadius: 8,
              offset: const Offset(0, 4),
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text(
              "Create an account",
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: Colors.black87,
              ),
            ),
            const SizedBox(height: 24),

            // First & Second Name
            Row(
              children: [
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      labelText: "First Name",
                      hintText: "Sharma",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      labelText: "Second Name",
                      hintText: "Sharma",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16),

            // Email with Verified Button
            Row(
              children: [
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      labelText: "Email",
                      hintText: "Johndoe@gmail.com",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 12),
                GestureDetector(
                  onTap: () => _showOtpDialog(context, "Email"),
                  child: Container(
                    height: 48,
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    decoration: BoxDecoration(
                      color: Color(0xffD4BB26),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: const Center(
                      child: Text(
                        "Verified",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16),

            // Mobile with Verified Button
            Row(
              children: [
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      labelText: "Mobile",
                      hintText: "+91 7886911991",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 12),
                Container(
                  height: 48,
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  decoration: BoxDecoration(
                    color: Color(0xffD4BB26),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: const Center(
                    child: Text(
                      "Verified",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16),

            // Password
            TextField(
              obscureText: true,
              decoration: InputDecoration(
                labelText: "Password",
                hintText: "Enter password",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
            ),
            const SizedBox(height: 16),

            // Confirm Password
            TextField(
              obscureText: true,
              decoration: InputDecoration(
                labelText: "Confirm Password",
                hintText: "Re-enter password",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
            ),
            const SizedBox(height: 24),
            // Inside the Column (before Create Account button)
Row(
  children: [
    Checkbox(
      value: false, // you can control with a state variable
      onChanged: (value) {
        // handle checkbox toggle
      },
      activeColor: Colors.red, // checkbox color
    ),
    const Expanded(
      child: Text.rich(
        TextSpan(
          text: "I agree to all the ",
          style: TextStyle(color: Colors.black87, fontSize: 13),
          children: [
            TextSpan(
              text: "Terms ",
              style: TextStyle(
                color: Colors.red,
                fontWeight: FontWeight.bold,
              ),
            ),
            TextSpan(
              text: "and ",
              style: TextStyle(color: Colors.black87),
            ),
            TextSpan(
              text: "Privacy Policies",
              style: TextStyle(
                color: Colors.red,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    ),
  ],
),
const SizedBox(height: 16),

            // Create Account Button
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFFD4AF37), // golden yellow
                  padding: const EdgeInsets.symmetric(vertical: 14),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                onPressed: () {
                  _showSuccessDialog(context);
                },
                child: const Text(
                  "Create Account",
                  style: TextStyle(fontSize: 16, color: Colors.white),
                ),
              ),
            ),
            const SizedBox(height: 12),

            // Already have an account
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text("Already have an account? "),
                GestureDetector(
                  onTap: () {},
                  child: const Text(
                    "Login",
                    style: TextStyle(color: Colors.red),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16),

            const Text("Or Sign up with"),
            const SizedBox(height: 12),

            // Social Buttons
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                socialButton(Icons.facebook, Colors.blue),
                const SizedBox(width: 12),
                socialButton(Icons.g_mobiledata, Colors.red),
                const SizedBox(width: 12),
                socialButton(Icons.apple, Colors.black),
              ],
            ),
          ],
        ),
      ),
    ),
  );
}

// Helper widget for social buttons
Widget socialButton(IconData icon, Color color) {
  return Container(
    height: 40,
    width: 40,
    decoration: BoxDecoration(
      border: Border.all(color: Colors.grey.shade300),
      borderRadius: BorderRadius.circular(6),
    ),
    child: Icon(icon, color: color),
  );
}

 
}