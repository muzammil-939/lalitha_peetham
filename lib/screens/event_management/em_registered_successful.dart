import 'package:flutter/material.dart';
import 'package:lalitha_peetham/screens/event_management/em_layout.dart';

class EmRegisteredSuccessful extends StatefulWidget {
  const EmRegisteredSuccessful({super.key});

  @override
  State<EmRegisteredSuccessful> createState() => _EmRegisteredSuccessfulState();
}

class _EmRegisteredSuccessfulState extends State<EmRegisteredSuccessful> {
  @override
  Widget build(BuildContext context) {
    return EmLayout(
      child: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 150, vertical: 40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            _buildBreadcrumb(),
            const SizedBox(height: 80),
            _buildSuccessIcon(),
            const SizedBox(height: 40),
            _buildSuccessMessage(),
            const SizedBox(height: 40),
            _buildActivateButton(),
          ],
        ),
      ),
    );
  }

  Widget _buildBreadcrumb() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 12),
      decoration: BoxDecoration(
        color: const Color(0xFFD4BB26),
        borderRadius: BorderRadius.circular(20),
      ),
      child: const Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(Icons.home, size: 16, color: Colors.black),
          SizedBox(width: 6),
          Text(' // Register As A Vendor',
              style: TextStyle(color: Colors.black, fontWeight: FontWeight.w500)),
        ],
      ),
    );
  }

  Widget _buildSuccessIcon() {
    return Container(
      width: 80,
      height: 80,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(color: Colors.green, width: 3),
      ),
      child: const Icon(
        Icons.check,
        color: Colors.green,
        size: 40,
      ),
    );
  }

  Widget _buildSuccessMessage() {
    return Container(
      width: 450,
      height: 80,
      padding: const EdgeInsets.symmetric(vertical: 18),
      decoration: BoxDecoration(
        color: Color(0xff34AD42),
        borderRadius: BorderRadius.circular(0),
      ),
      child: const Text(
        'SUCCESSFULLY REGISTERED',
        textAlign: TextAlign.center,
        style: TextStyle(
          color: Colors.white,
          fontSize: 16,
          fontWeight: FontWeight.w600,
          letterSpacing: 1.2,
        ),
      ),
    );
  }

  Widget _buildActivateButton() {
    return SizedBox(
      width: 450,
      height: 80,
      child: ElevatedButton(
        onPressed: () {
          // Handle activate account action
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: const Color(0xFFD4BB26),
          foregroundColor: Colors.white,
          padding: const EdgeInsets.symmetric(vertical: 18),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(0),
          ),
          elevation: 0,
        ),
        child: const Text(
          'RESEARCH LOG FOR ACTIVATE YOUR ACCOUNT',
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w600,
            letterSpacing: 0.8,
          ),
        ),
      ),
    );
  }
}