// login.dart
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../providers/firebase_phone_auth.dart';

class PhoneOtpLoginDialog extends ConsumerStatefulWidget {
  const PhoneOtpLoginDialog({super.key});

  @override
  ConsumerState<PhoneOtpLoginDialog> createState() =>
      _PhoneOtpLoginDialogState();
}

class _PhoneOtpLoginDialogState extends ConsumerState<PhoneOtpLoginDialog> {
  final _phoneController = TextEditingController();
  final _otpControllers = List.generate(6, (index) => TextEditingController());
  final _otpFocusNodes = List.generate(6, (index) => FocusNode());

  bool _isOtpSent = false;
  bool _isLoading = false;
  bool _rememberMe = false;
  int _resendTimer = 0;
  String? _verificationId;

  @override
  void dispose() {
    _phoneController.dispose();
    _otpControllers.forEach((c) => c.dispose());
    _otpFocusNodes.forEach((n) => n.dispose());
    super.dispose();
  }

  void _sendOtp() async {
    if (_phoneController.text.isEmpty || _phoneController.text.length != 10) {
      _showSnackBar(
        'Please enter a valid 10-digit phone number',
        isError: true,
      );
      return;
    }

    setState(() => _isLoading = true);

    final authNotifier = ref.read(authNotifierProvider.notifier);

    final result = await authNotifier.sendOTP(
      phoneNumber: _phoneController.text,
      onCodeSent: (verificationId) {
        setState(() {
          _isLoading = false;
          _isOtpSent = true;
          _verificationId = verificationId;
          _resendTimer = 60;
        });
        _startResendTimer();
        _showSnackBar('OTP sent to +91 ${_phoneController.text}');
      },
      onError: (error) {
        setState(() => _isLoading = false);
        _showSnackBar(error, isError: true);
      },
    );

    if (!result.isSuccess && result.error != null) {
      setState(() => _isLoading = false);
      _showSnackBar(result.error!, isError: true);
    }
  }

  void _startResendTimer() {
    if (_resendTimer > 0) {
      Future.delayed(Duration(seconds: 1), () {
        if (mounted && _resendTimer > 0) {
          setState(() => _resendTimer--);
          _startResendTimer();
        }
      });
    }
  }

  void _verifyOtp() async {
    String otp = _otpControllers.map((c) => c.text).join();
    if (otp.length != 6) {
      _showSnackBar('Please enter complete 6-digit OTP', isError: true);
      return;
    }

    setState(() => _isLoading = true);

    final authNotifier = ref.read(authNotifierProvider.notifier);
    final result = await authNotifier.verifyOTP(otp);

    setState(() => _isLoading = false);

    if (result.isSuccess) {
      _showSnackBar('Login successful!');
      // Close dialog and return success - user stays on homepage
      if (mounted) {
        Navigator.of(context).pop(true);
      }
    } else {
      _showSnackBar(result.error ?? 'Verification failed', isError: true);
      // Clear OTP fields on error
      _otpControllers.forEach((controller) => controller.clear());
      if (_otpFocusNodes.isNotEmpty) {
        _otpFocusNodes[0].requestFocus();
      }
    }
  }

  void _resendOtp() {
    if (_resendTimer == 0) {
      _sendOtp();
    }
  }

  void _showSnackBar(String message, {bool isError = false}) {
    if (mounted) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(message),
          backgroundColor: isError ? Colors.red : Colors.green,
          duration: Duration(seconds: 3),
        ),
      );
    }
  }

  Widget _buildTextField({
    required TextEditingController controller,
    String? hintText,
    int? maxLength,
    bool isPhone = false,
    FocusNode? focusNode,
    Function(String)? onChanged,
  }) {
    return TextField(
      controller: controller,
      focusNode: focusNode,
      keyboardType: isPhone ? TextInputType.phone : TextInputType.number,
      maxLength: maxLength,
      textAlign: isPhone ? TextAlign.start : TextAlign.center,
      inputFormatters: [FilteringTextInputFormatter.digitsOnly],
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: TextStyle(color: Colors.grey.shade400),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(6),
          borderSide: BorderSide(color: Colors.grey.shade300),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(6),
          borderSide: BorderSide(color: Colors.amber.shade600),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(6),
          borderSide: BorderSide(color: Colors.red.shade400),
        ),
        contentPadding: EdgeInsets.symmetric(horizontal: 12, vertical: 14),
        counterText: '',
      ),
      onChanged: onChanged,
    );
  }

  Widget _buildButton(String text, VoidCallback? onPressed) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: _isLoading ? null : onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.amber.shade600,
          disabledBackgroundColor: Colors.grey.shade300,
          padding: EdgeInsets.symmetric(vertical: 14),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
        ),
        child:
            _isLoading
                ? SizedBox(
                  height: 20,
                  width: 20,
                  child: CircularProgressIndicator(
                    color: Colors.white,
                    strokeWidth: 2,
                  ),
                )
                : Text(
                  text,
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                  ),
                ),
      ),
    );
  }

  Widget _buildSocialButton(
    IconData icon,
    Color color,
    VoidCallback onPressed,
  ) {
    return Container(
      width: 60,
      height: 40,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey.shade300),
        borderRadius: BorderRadius.circular(6),
      ),
      child: IconButton(
        onPressed: onPressed,
        icon:
            icon == Icons.facebook
                ? Icon(icon, color: color)
                : icon == Icons.apple
                ? Icon(icon, color: color)
                : Text(
                  'G',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: color,
                  ),
                ),
      ),
    );
  }

  Widget _buildPhoneNumberStep() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
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
          style: TextStyle(fontSize: 14, color: Colors.grey.shade600),
        ),
        SizedBox(height: 24),
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
                style: TextStyle(fontSize: 16, color: Colors.black87),
              ),
            ),
            SizedBox(width: 8),
            Expanded(
              child: _buildTextField(
                controller: _phoneController,
                hintText: '9876543210',
                maxLength: 10,
                isPhone: true,
              ),
            ),
          ],
        ),
        SizedBox(height: 24),
        _buildButton('SEND OTP', _sendOtp),
      ],
    );
  }

  Widget _buildOtpVerificationStep() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
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
          style: TextStyle(fontSize: 14, color: Colors.grey.shade600),
        ),
        SizedBox(height: 24),
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
          children: List.generate(
            6,
            (i) => Container(
              width: 45,
              child: _buildTextField(
                controller: _otpControllers[i],
                focusNode: _otpFocusNodes[i],
                maxLength: 1,
                onChanged: (value) {
                  if (value.isNotEmpty && i < 5) {
                    _otpFocusNodes[i + 1].requestFocus();
                  } else if (value.isEmpty && i > 0) {
                    _otpFocusNodes[i - 1].requestFocus();
                  }

                  // Auto-verify when all 6 digits are entered
                  if (i == 5 && value.isNotEmpty) {
                    String otp = _otpControllers.map((c) => c.text).join();
                    if (otp.length == 6) {
                      _verifyOtp();
                    }
                  }
                },
              ),
            ),
          ),
        ),
        SizedBox(height: 16),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Checkbox(
                  value: _rememberMe,
                  onChanged:
                      (value) => setState(() => _rememberMe = value ?? false),
                  activeColor: Colors.amber.shade600,
                ),
                Text(
                  'Remember me',
                  style: TextStyle(fontSize: 14, color: Colors.black87),
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
        _buildButton('VERIFY & LOGIN', _verifyOtp),
        SizedBox(height: 16),
        Center(
          child: TextButton(
            onPressed: () {
              setState(() {
                _isOtpSent = false;
                _resendTimer = 0;
                _otpControllers.forEach((c) => c.clear());
              });
            },
            child: Text(
              'Change Phone Number',
              style: TextStyle(fontSize: 14, color: Colors.amber.shade600),
            ),
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    // Listen to auth state changes but don't auto-close dialog
    // The dialog will only close when verification is successful
    ref.listen<AsyncValue<User?>>(authNotifierProvider, (previous, next) {
      // Only handle specific auth state changes if needed
      // We're not auto-closing here to maintain control
    });

    return Dialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
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
            if (!_isOtpSent) ...[
              SizedBox(height: 16),
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
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  _buildSocialButton(Icons.facebook, Colors.blue.shade600, () {
                    _showSnackBar('Facebook login not implemented yet');
                  }),
                  _buildSocialButton(
                    Icons.golf_course,
                    Colors.red.shade600,
                    () {
                      _showSnackBar('Google login not implemented yet');
                    },
                  ),
                  _buildSocialButton(Icons.apple, Colors.black, () {
                    _showSnackBar('Apple login not implemented yet');
                  }),
                ],
              ),
            ],
          ],
        ),
      ),
    );
  }
}
