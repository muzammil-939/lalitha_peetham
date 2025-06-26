import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:lalitha_peetham/screens/ayurvedha/ayurvedh_page_layout.dart';

class AyurvedhaPost extends StatefulWidget {
  const AyurvedhaPost({super.key});

  @override
  State<AyurvedhaPost> createState() => _AyurvedhaPostState();
}

class _AyurvedhaPostState extends State<AyurvedhaPost> {
  @override
  Widget build(BuildContext context) {
    return AyurvedhPageLayout(
      child: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.fromLTRB(200, 50, 200, 100),
          color: const Color(0xFFF5F5F5),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Breadcrumb
              Align(
                alignment: Alignment.topCenter,
                child: Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 18,
                    vertical: 12,
                  ),
                  decoration: BoxDecoration(
                    color: const Color(0xFFD4BB26),
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: const [
                      Icon(Icons.home, size: 16, color: Colors.black),
                      Text(" / ", style: TextStyle(color: Colors.black)),
                      Text(
                        "Ayurvedha Consultancy",
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(" // ", style: TextStyle(color: Colors.black)),
                      Text(
                        "Post Case Discussion",
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              const SizedBox(height: 60),

                Container(
              width: 80,
              height: 80,
              decoration: const BoxDecoration(
                color: Color(0xFFE8F5E8),
                shape: BoxShape.circle,
              ),
              child: const Icon(
                Icons.check,
                size: 40,
                color: Color(0xFF4CAF50),
              ),
            ),
            

              const SizedBox(height: 40),
              Center(
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFFC1B11F),
                    padding: const EdgeInsets.symmetric(
                      horizontal: 40,
                      vertical: 14,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(0),
                    ),
                  ),
                  onPressed: () {
                    
                  },
                  child: const Text(
                    "Post",
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1.2,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}