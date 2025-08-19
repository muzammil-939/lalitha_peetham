import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:lalitha_peetham/screens/home_screens/welcome_screen_header.dart';
import 'package:lalitha_peetham/widgets/reusable_responsive_type_widget.dart';

class OtpVerifyWithEmail extends StatefulWidget {
  const OtpVerifyWithEmail({super.key});

  @override
  State<OtpVerifyWithEmail> createState() => _OtpVerifyWithEmailState();
}

class _OtpVerifyWithEmailState extends State<OtpVerifyWithEmail> {

    final List<TextEditingController> _controllers =
      List.generate(6, (_) => TextEditingController());
  final List<FocusNode> _focusNodes = List.generate(6, (_) => FocusNode());

  @override
  void dispose() {
    for (var c in _controllers) {
      c.dispose();
    }
    for (var f in _focusNodes) {
      f.dispose();
    }
    super.dispose();
  }

  void _onOtpEntered() {
    String otp = _controllers.map((c) => c.text).join();
    debugPrint("Entered OTP: $otp");

    if (otp.length == 6) {
      // ✅ Navigate or call API
      context.go('/');
    }
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
            buildOtpSection( context),
           // const SizedBox(height: 20),
          
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
                  "VERIFY YOUR EMAIL",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.black87,
                  ),
                ),
                SizedBox(height: 12),
                Text(
                  "We've Sent A 6-Digit Code To Your Email:\nSarah.Miller***@Email.Com. Please Enter It Below.",
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
                "VERIFY YOUR EMAIL",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.black87,
                ),
              ),
              SizedBox(height: 12),
              Text(
                "We've Sent A 6-Digit Code To Your Email:\nSarah.Miller***@Email.Com. Please Enter It Below.",
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
 Widget buildOtpSection(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;

    return Container(
      width: double.infinity,
      color: const Color(0xFFEAE2B1),
      padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 20),
      child: Column(
        children: [
          const Text(
            "Verify Your Email",
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 20),

          // OTP Input Fields
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(6, (index) {
              return Container(
                margin: const EdgeInsets.symmetric(horizontal: 6),
                width: 45,
                height: 50,
                child: TextField(
                  controller: _controllers[index],
                  focusNode: _focusNodes[index],
                  textAlign: TextAlign.center,
                  style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  keyboardType: TextInputType.number,
                  maxLength: 1,
                  decoration: InputDecoration(
                    counterText: "",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(6),
                    ),
                    filled: true,
                    fillColor: Colors.white,
                  ),
                  onChanged: (value) {
                    if (value.isNotEmpty && index < 5) {
                      _focusNodes[index + 1].requestFocus();
                    }
                    if (value.isEmpty && index > 0) {
                      _focusNodes[index - 1].requestFocus();
                    }
                    _onOtpEntered();
                  },
                ),
              );
            }),
          ),

          const SizedBox(height: 12),

          const Text(
            "Resend code (in 30s)",
            style: TextStyle(
              fontSize: 14,
              color: Colors.black54,
            ),
          ),
          const SizedBox(height: 30),

          // Verify Button
          SizedBox(
            width: screenWidth * 0.5,
            height: 45,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFFD4BB26),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(6),
                ),
              ),
              onPressed: _onOtpEntered,
              child: const Text(
                "Verify OTP",
                style: TextStyle(color: Colors.black, fontSize: 14),
              ),
            ),
          ),
          const SizedBox(height: 20),

          const Text.rich(
            TextSpan(
              text: "Didn’t get OTP? ",
              style: TextStyle(fontSize: 14, color: Colors.black87),
              children: [
                TextSpan(
                  text: "Edit Email Address",
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.orange,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
