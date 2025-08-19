import 'package:flutter/material.dart';

class DonationPage extends StatelessWidget {
  const DonationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 100.0,vertical: 20),
      child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Donation Section
              Text(
                "DONATION SECTION",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.black87,
                  letterSpacing: 0.5,
                ),
              ),
              const SizedBox(height: 15),
      
              // Buttons
              Wrap(
                spacing: 10,
                children: [
                  _buildOutlineButton("GENERAL DONATION"),
                  _buildOutlineButton("TEMPLE FUND"),
                  _buildOutlineButton("CHARITY"),
                ],
              ),
              const SizedBox(height: 25),
      
              // Enter Amount
              Text(
                "ENTER AMOUNT",
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 14,
                  color: Colors.black87,
                ),
              ),
              const SizedBox(height: 8),
              _buildTextField("Enter Your First Name"),
              const SizedBox(height: 12),
              _buildFilledButton("DONATE NOW"),
              const SizedBox(height: 40),
      
              // Newsletter
              Text(
                "NEWSLETTER / REMINDER SIGNUP",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.black87,
                ),
              ),
              const SizedBox(height: 20),
              Text(
                "ENTER MAIL",
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 14,
                  color: Colors.black87,
                ),
              ),
              const SizedBox(height: 8),
              _buildTextField("Enter Your mail id"),
              const SizedBox(height: 12),
              _buildFilledButton("SUBSCRIBE"),
            ],
          ),
    
    );
  }

  // Outline Button
  static Widget _buildOutlineButton(String text) {
    return OutlinedButton(
      style: OutlinedButton.styleFrom(
        side: BorderSide(color: Color(0xFFC3B31F), width: 1.5),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(25),
        ),
        padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 10),
      ),
      onPressed: () {},
      child: Text(
        text,
        style: TextStyle(
          color: Colors.black87,
          fontSize: 13,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }

  // Text Field
  static Widget _buildTextField(String hint) {
    return TextField(
      
      decoration: InputDecoration(
        hintText: hint,
        hintStyle: TextStyle(fontSize: 14, color: Colors.grey[600]),
        border: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.grey.shade400),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.grey.shade600),
        ),
        contentPadding: const EdgeInsets.symmetric(horizontal: 12, vertical: 14),
      ),
    );
  }

  // Filled Button
  static Widget _buildFilledButton(String text) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: Color(0xFFB89E26),
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 14),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(4),
        ),
      ),
      onPressed: () {},
      child: Text(
        text,
        style: TextStyle(
          color: Colors.white,
          fontSize: 13,
          fontWeight: FontWeight.bold,
          letterSpacing: 1.2,
        ),
      ),
    );
  }
}
