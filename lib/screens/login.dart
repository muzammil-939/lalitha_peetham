import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class PhoneOtpLoginDialog extends StatefulWidget {
  @override
  _PhoneOtpLoginDialogState createState() => _PhoneOtpLoginDialogState();
}

class _PhoneOtpLoginDialogState extends State<PhoneOtpLoginDialog> {
  final TextEditingController _phoneController = TextEditingController();
  final List<TextEditingController> _otpControllers = List.generate(6, (index) => TextEditingController());
  final List<FocusNode> _otpFocusNodes = List.generate(6, (index) => FocusNode());

  bool _isOtpSent = false;
  bool _isLoading = false;
  bool _rememberMe = false;
  int _resendTimer = 0;

  @override
  void dispose() {
    _phoneController.dispose();
    for (var controller in _otpControllers) {
      controller.dispose();
    }
    for (var node in _otpFocusNodes) {
      node.dispose();
    }
    super.dispose();
  }

  void _sendOtp() async {
    if (_phoneController.text.isEmpty || _phoneController.text.length < 10) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Please enter a valid phone number')),
      );
      return;
    }

    setState(() {
      _isLoading = true;
    });

    // Simulate API call
    await Future.delayed(Duration(seconds: 2));

    setState(() {
      _isLoading = false;
      _isOtpSent = true;
      _resendTimer = 30;
    });

    // Start countdown timer
    _startResendTimer();

    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text('OTP sent to +91 ${_phoneController.text}')),
    );
  }

  void _startResendTimer() {
    Future.delayed(Duration(seconds: 1), () {
      if (_resendTimer > 0 && mounted) {
        setState(() {
          _resendTimer--;
        });
        _startResendTimer();
      }
    });
  }

  void _verifyOtp() async {
    String otp = _otpControllers.map((controller) => controller.text).join();

    if (otp.length != 6) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Please enter complete 6-digit OTP')),
      );
      return;
    }

    setState(() {
      _isLoading = true;
    });

    // Simulate API call
    await Future.delayed(Duration(seconds: 2));

    setState(() {
      _isLoading = false;
    });

    // Handle successful login
    Navigator.of(context).pop(true); // Return true to indicate successful login
  }

  void _resendOtp() {
    if (_resendTimer == 0) {
      _sendOtp();
    }
  }

  Widget _buildPhoneNumberStep() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Header
        Text(
          'Login with Phone',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Colors.black87,
          ),
        ),
        SizedBox(height: 8),
        Text(
          'Enter your phone number to receive OTP',
          style: TextStyle(
            fontSize: 14,
            color: Colors.grey.shade600,
          ),
        ),
        SizedBox(height: 24),

        // Phone Number Field
        Text(
          'Phone Number',
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w500,
            color: Colors.black87,
          ),
        ),
        SizedBox(height: 8),
        Row(
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: 12, vertical: 14),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey.shade300),
                borderRadius: BorderRadius.circular(6),
              ),
              child: Text(
                '+91',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.black87,
                ),
              ),
            ),
            SizedBox(width: 8),
            Expanded(
              child: TextField(
                controller: _phoneController,
                keyboardType: TextInputType.phone,
                maxLength: 10,
                inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                decoration: InputDecoration(
                  hintText: '9876543210',
                  hintStyle: TextStyle(color: Colors.grey.shade400),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(6),
                    borderSide: BorderSide(color: Colors.grey.shade300),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(6),
                    borderSide: BorderSide(color: Colors.amber.shade600),
                  ),
                  contentPadding: EdgeInsets.symmetric(horizontal: 12, vertical: 14),
                  counterText: '',
                ),
              ),
            ),
          ],
        ),
        SizedBox(height: 24),

        // Send OTP Button
        Container(
          width: double.infinity,
          child: ElevatedButton(
            onPressed: _isLoading ? null : _sendOtp,
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.amber.shade600,
              padding: EdgeInsets.symmetric(vertical: 14),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(6),
              ),
            ),
            child: _isLoading
                ? SizedBox(
              height: 20,
              width: 20,
              child: CircularProgressIndicator(
                color: Colors.white,
                strokeWidth: 2,
              ),
            )
                : Text(
              'SEND OTP',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 14,
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildOtpVerificationStep() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Header
        Text(
          'Verify OTP',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Colors.black87,
          ),
        ),
        SizedBox(height: 8),
        Text(
          'Enter the 6-digit OTP sent to +91 ${_phoneController.text}',
          style: TextStyle(
            fontSize: 14,
            color: Colors.grey.shade600,
          ),
        ),
        SizedBox(height: 24),

        // OTP Input Fields
        Text(
          'Enter OTP',
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w500,
            color: Colors.black87,
          ),
        ),
        SizedBox(height: 8),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: List.generate(6, (index) {
            return Container(
              width: 45,
              child: TextField(
                controller: _otpControllers[index],
                focusNode: _otpFocusNodes[index],
                keyboardType: TextInputType.number,
                textAlign: TextAlign.center,
                maxLength: 1,
                inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                decoration: InputDecoration(
                  counterText: '',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(6),
                    borderSide: BorderSide(color: Colors.grey.shade300),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(6),
                    borderSide: BorderSide(color: Colors.amber.shade600),
                  ),
                  contentPadding: EdgeInsets.symmetric(vertical: 14),
                ),
                onChanged: (value) {
                  if (value.isNotEmpty && index < 5) {
                    _otpFocusNodes[index + 1].requestFocus();
                  } else if (value.isEmpty && index > 0) {
                    _otpFocusNodes[index - 1].requestFocus();
                  }
                },
              ),
            );
          }),
        ),
        SizedBox(height: 16),

        // Resend OTP
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Checkbox(
                  value: _rememberMe,
                  onChanged: (value) {
                    setState(() {
                      _rememberMe = value ?? false;
                    });
                  },
                  activeColor: Colors.amber.shade600,
                ),
                Text(
                  'Remember me',
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.black87,
                  ),
                ),
              ],
            ),
            TextButton(
              onPressed: _resendTimer == 0 ? _resendOtp : null,
              child: Text(
                _resendTimer > 0 ? 'Resend in ${_resendTimer}s' : 'Resend OTP',
                style: TextStyle(
                  fontSize: 14,
                  color: _resendTimer > 0 ? Colors.grey : Colors.amber.shade600,
                ),
              ),
            ),
          ],
        ),
        SizedBox(height: 20),

        // Verify Button
        Container(
          width: double.infinity,
          child: ElevatedButton(
            onPressed: _isLoading ? null : _verifyOtp,
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.amber.shade600,
              padding: EdgeInsets.symmetric(vertical: 14),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(6),
              ),
            ),
            child: _isLoading
                ? SizedBox(
              height: 20,
              width: 20,
              child: CircularProgressIndicator(
                color: Colors.white,
                strokeWidth: 2,
              ),
            )
                : Text(
              'VERIFY & LOGIN',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 14,
              ),
            ),
          ),
        ),
        SizedBox(height: 16),

        // Back to phone number
        Center(
          child: TextButton(
            onPressed: () {
              setState(() {
                _isOtpSent = false;
                for (var controller in _otpControllers) {
                  controller.clear();
                }
              });
            },
            child: Text(
              'Change Phone Number',
              style: TextStyle(
                fontSize: 14,
                color: Colors.amber.shade600,
              ),
            ),
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      elevation: 8,
      child: Container(
        width: 400,
        padding: EdgeInsets.all(32),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _isOtpSent ? _buildOtpVerificationStep() : _buildPhoneNumberStep(),
            SizedBox(height: 16),

            // Or login with (only show on phone number step)
            if (!_isOtpSent) ...[
              Row(
                children: [
                  Expanded(child: Divider(color: Colors.grey.shade300)),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16),
                    child: Text(
                      'Or login with',
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.grey.shade600,
                      ),
                    ),
                  ),
                  Expanded(child: Divider(color: Colors.grey.shade300)),
                ],
              ),
              SizedBox(height: 16),

              // Social Login Buttons
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  // Facebook
                  Container(
                    width: 60,
                    height: 40,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey.shade300),
                      borderRadius: BorderRadius.circular(6),
                    ),
                    child: IconButton(
                      onPressed: () {
                        // Handle Facebook login
                      },
                      icon: Icon(
                        Icons.facebook,
                        color: Colors.blue.shade600,
                      ),
                    ),
                  ),
                  // Google
                  Container(
                    width: 60,
                    height: 40,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey.shade300),
                      borderRadius: BorderRadius.circular(6),
                    ),
                    child: IconButton(
                      onPressed: () {
                        // Handle Google login
                      },
                      icon: Text(
                        'G',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.red.shade600,
                        ),
                      ),
                    ),
                  ),
                  // Apple
                  Container(
                    width: 60,
                    height: 40,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey.shade300),
                      borderRadius: BorderRadius.circular(6),
                    ),
                    child: IconButton(
                      onPressed: () {
                        // Handle Apple login
                      },
                      icon: Icon(
                        Icons.apple,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ],
        ),
      ),
    );
  }
}