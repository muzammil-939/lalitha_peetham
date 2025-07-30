import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:lalitha_peetham/widgets/reusable_responsive_type_widget.dart';

class NiyapoojaContactWidget extends StatelessWidget {
  const NiyapoojaContactWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return 
    Stack(
    children: [
    // 1️⃣ Bottom-most background
    // Positioned(
    //   top: 0,
    //   left: 0,
    //   child: SizedBox(
    //     width: 1500,
    //     child: Image.asset(
    //       'assets/images/vastupooja6.png', // your main background
    //       fit: BoxFit.cover,
    //     ),
    //   ),
    // ),

    // // 2️⃣ Additional image ABOVE the container (like yellow swoosh)
    // Positioned(
    //   top: 100, // adjust based on actual design
    //   left: 0,
    //   right: 0,
    //   child: Image.asset(
    //     'assets/images/vastupooja5.png', // your overlay asset
    //     fit: BoxFit.contain,
    //     height: 200,
    //   ),
    // ),
    ResponsiveWrapper(
      child: Center(
        child: Container(
          color: const Color(0xFFF0C948), // Approx yellow shade
          width: 800,
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
                      ' Looking for a trusted Pandit? Book\noffline now – Click here!',
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
                        context.go('/nityapooja_offline_contact_page');
                      },
                      icon: const Icon(Icons.phone_in_talk, size: 18),
                      label: const Text(
                        "Contact",
                        style: TextStyle(letterSpacing: 1.2),
                      ),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xFF4A382D),
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
      ),
    )
    ]
    );
  }
}
