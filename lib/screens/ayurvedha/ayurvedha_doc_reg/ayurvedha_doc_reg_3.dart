import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:lalitha_peetham/screens/ayurvedha/ayurvedh_page_layout.dart';

class AyurvedhaDocReg3 extends StatefulWidget {
  const AyurvedhaDocReg3({super.key});

  @override
  AyurvedhaDocReg3State createState() => AyurvedhaDocReg3State();
}

class AyurvedhaDocReg3State extends State<AyurvedhaDocReg3> {
  bool privacyPolicyChecked = true;
  bool termsConditionsChecked = false;
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return AyurvedhPageLayout(
      child: Container(
        padding: const EdgeInsets.fromLTRB(200, 50, 200, 150),
        decoration: const BoxDecoration(color: Colors.white),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildBreadcrumb(),
            const SizedBox(height: 50),
            _buildHeader(),
            const SizedBox(height: 30),
            _buildProgressIndicator(),
            const SizedBox(height: 40),
            _buildPasswordCreationContainer(),
            const SizedBox(height: 40),
            Center(child: _buildSubmitButton()),
          ],
        ),
      ),
    );
  }

  Widget _buildBreadcrumb() {
    return Center(
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 12),
        decoration: BoxDecoration(
          color: const Color(0xFFD4BB26),
          borderRadius: BorderRadius.circular(20),
        ),
        child: const Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(Icons.home, size: 16, color: Colors.black),
            Text(
              ' // AYURVEDA CONSULTANCY // Registor As A Doctor',
              style: TextStyle(
                color: Colors.black,
                fontSize: 14,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildHeader() {
    return const Text(
      'Create Account',
      style: TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.w600,
        letterSpacing: 1.2,
        color: Colors.black87,
      ),
    );
  }

  Widget _buildProgressIndicator() {
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          _buildProgressCircle('1', true),
          _buildProgressLine(true),
          _buildProgressCircle('2', true),
          _buildProgressLine(true),
          _buildProgressCircle('3', true),
        ],
      ),
    );
  }

  Widget _buildSubmitButton() {
    return SizedBox(
      width: 120,
      height: 45,
      child: ElevatedButton(
        onPressed: () => context.go('/ayurvedha_doc_regsuccess'),
        style: ElevatedButton.styleFrom(
          backgroundColor: const Color(0xFFB8A835),
          elevation: 0,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
        ),
        child: const Text(
          'SUBMIT',
          style: TextStyle(
            color: Colors.white,
            fontSize: 13,
            fontWeight: FontWeight.w600,
            letterSpacing: 0.8,
          ),
        ),
      ),
    );
  }

  Widget _buildProgressCircle(String number, bool isActive) {
    return Container(
      width: 40,
      height: 40,
      decoration: BoxDecoration(
        color: isActive ? const Color(0xFFB8A835) : const Color(0xFFE6D57A),
        shape: BoxShape.circle,
      ),
      child: Center(
        child: Text(
          number,
          style: TextStyle(
            color: isActive ? Colors.white : const Color(0xFFB8A835),
            fontSize: 16,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }

  Widget _buildProgressLine(bool isActive) {
    return Container(
      width: 60,
      height: 2,
      color: isActive ? const Color(0xFFB8A835) : const Color(0xFFE6D57A),
      margin: const EdgeInsets.symmetric(horizontal: 4),
    );
  }

  Widget _buildPasswordCreationContainer() {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(vertical: 40, horizontal: 150),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // CREATE PASSWORD section
          Text(
            'CREATE PASSWORD*',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w600,
              color: Color(0xFF333333),
              letterSpacing: 0.5,
            ),
          ),
          SizedBox(height: 16),

          // Password input field
          Container(
            decoration: BoxDecoration(
              border: Border.all(color: Color(0xFF8D8D8D), width: 1),
              color: Colors.white,
            ),
            child: TextField(
              controller: passwordController,
              obscureText: true,
              decoration: InputDecoration(
                hintText: 'Enter Password',
                hintStyle: TextStyle(color: Color(0xFF888888), fontSize: 14),
                border: InputBorder.none,
                contentPadding: EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 16,
                ),
              ),
            ),
          ),

          SizedBox(height: 48),

          // CONFIRM PASSWORD section
          Text(
            'CONFIRM PASSWORD',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w600,
              color: Color(0xFF333333),
              letterSpacing: 0.5,
            ),
          ),
          SizedBox(height: 16),

          // Confirm password input field
          Container(
            decoration: BoxDecoration(
              border: Border.all(color: Color(0xFF8D8D8D), width: 1),
              color: Colors.white,
            ),
            child: TextField(
              controller: confirmPasswordController,
              obscureText: true,
              decoration: InputDecoration(
                hintText: 'Confirm Password',
                hintStyle: TextStyle(color: Color(0xFF888888), fontSize: 14),
                border: InputBorder.none,
                contentPadding: EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 16,
                ),
              ),
            ),
          ),

          SizedBox(height: 64),

          // Privacy Policy checkbox
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              GestureDetector(
                onTap: () {
                  setState(() {
                    privacyPolicyChecked = !privacyPolicyChecked;
                  });
                },
                child: Container(
                  width: 20,
                  height: 20,
                  decoration: BoxDecoration(
                    border: Border.all(color: Color(0xFF333333), width: 2),
                    color:
                        privacyPolicyChecked ? Color(0xFF333333) : Colors.white,
                  ),
                  child:
                      privacyPolicyChecked
                          ? Icon(Icons.check, size: 14, color: Colors.white)
                          : null,
                ),
              ),
              SizedBox(width: 12),
              Expanded(
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      privacyPolicyChecked = !privacyPolicyChecked;
                    });
                  },
                  child: RichText(
                    text: TextSpan(
                      style: TextStyle(
                        fontSize: 14,
                        color: Color(0xFF333333),
                        height: 1.4,
                      ),
                      children: [
                        TextSpan(text: 'I Read And Agree To '),
                        TextSpan(
                          text: 'Privacy Policy',
                          style: TextStyle(
                            color: Color(0xFFD4AF37), // Golden color
                            decoration: TextDecoration.underline,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),

          SizedBox(height: 24),

          // Terms and Conditions checkbox
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 20,
                height: 20,
                decoration: BoxDecoration(
                  border: Border.all(color: Color(0xFF333333), width: 2),
                  color:
                      termsConditionsChecked ? Color(0xFF333333) : Colors.white,
                ),
                child:
                    termsConditionsChecked
                        ? Icon(Icons.check, size: 14, color: Colors.white)
                        : null,
              ),
              SizedBox(width: 12),
              Expanded(
                child: RichText(
                  text: TextSpan(
                    style: TextStyle(
                      fontSize: 14,
                      color: Color(0xFF333333),
                      height: 1.4,
                    ),
                    children: [
                      TextSpan(text: 'I Read And Agree '),
                      TextSpan(
                        text: 'To Terms And Condition',
                        style: TextStyle(
                          color: Color(0xFFD4AF37), // Golden color
                          decoration: TextDecoration.underline,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
