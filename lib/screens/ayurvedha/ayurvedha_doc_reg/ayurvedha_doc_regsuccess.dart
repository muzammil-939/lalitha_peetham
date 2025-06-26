import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:lalitha_peetham/screens/ayurvedha/ayurvedh_page_layout.dart';

class AyurvedhaDocRegsuccess extends StatefulWidget {
  const AyurvedhaDocRegsuccess({super.key});

  @override
  AyurvedhaDocRegsuccessState createState() => AyurvedhaDocRegsuccessState();
}

class AyurvedhaDocRegsuccessState extends State<AyurvedhaDocRegsuccess> {
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
            const SizedBox(height: 80),
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
      width: 600,
      height: 100,
      child: ElevatedButton(
        onPressed: () => context.go('/ayurvedha_doc_reg_2'),
        style: ElevatedButton.styleFrom(
          backgroundColor: const Color(0xFF34AD42),
          elevation: 0,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
        ),
        child: const Text(
          'Sucessfully Registered',
          style: TextStyle(
            color: Colors.white,
            fontSize: 22,
            fontWeight: FontWeight.w500,
            letterSpacing: 1.5,
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
}
