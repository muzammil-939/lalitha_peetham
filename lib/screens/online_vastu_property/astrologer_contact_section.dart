import 'package:flutter/material.dart';

class AstrologerContactSection extends StatelessWidget {
  const AstrologerContactSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        color: const Color(0xFFF0C948), // Approx yellow shade
        width: 650,
        height: 280,
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 36),
        child: Stack(
          children: [
            
            // Centered Text and Button
            Align(
              alignment: Alignment.center,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Text(
                    'Connect With An Astrologer On Call\nOr Chat For More Personalised\nDetailed Predictions.',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                      height: 1.6,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  const SizedBox(height: 20),
                  ElevatedButton.icon(
                    onPressed: () {
                      // Add your navigation or call logic
                    },
                    icon: const Icon(Icons.phone_in_talk, size: 18),
                    label: const Text(
                      "Talk To Astrologer",
                      style: TextStyle(letterSpacing: 1.2),
                    ),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.black,
                      foregroundColor: Colors.white,
                      padding:
                          const EdgeInsets.symmetric(horizontal: 22, vertical: 12),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(6),
                      ),
                    ),
                  ),
                ],
              ),
            ),
      
            // Circular phone icon at right
            Positioned(
              right: 16,
              top: 0,
              bottom: 0,
              child: Center(
                child: Container(
                  width: 42,
                  height: 42,
                  decoration: const BoxDecoration(
                    color: Colors.white24,
                    shape: BoxShape.circle,
                  ),
                  child: const Icon(Icons.phone, color: Colors.black),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
