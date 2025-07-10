import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'flower_deco_layout.dart';

class FlowerDecoHome extends StatelessWidget {
  const FlowerDecoHome({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return FlowerDecoLayout(
      child: Container(
        height: screenHeight * 1.8,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/flower_deco_bg.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: SizedBox(
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              _buildBreadcrumb(),
              Container(
                height: screenHeight * 1.08,
                width: 420,
                margin: EdgeInsets.symmetric(vertical: 100),
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(4),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.1),
                      blurRadius: 10,
                      offset: Offset(0, 5),
                    ),
                  ],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    // Header
                    Container(
                      padding: EdgeInsets.symmetric(
                        vertical: 15,
                        horizontal: 20,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'WE PROVIDE BEST DECORATION',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              color: Colors.black87,
                            ),
                          ),
                          Icon(
                            Icons.keyboard_arrow_down,
                            color: Colors.black54,
                            size: 20,
                          ),
                        ],
                      ),
                    ),

                    SizedBox(height: 20),

                    // Name Field
                    Container(
                      padding: EdgeInsets.symmetric(
                        vertical: 18,
                        horizontal: 20,
                      ),
                      decoration: BoxDecoration(
                        color: Color(0xFFEEE6BC),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Text(
                        'Enter Name*',
                        style: TextStyle(fontSize: 16, color: Colors.black87),
                      ),
                    ),

                    SizedBox(height: 15),

                    // Mobile Number Field
                    Container(
                      padding: EdgeInsets.symmetric(
                        vertical: 18,
                        horizontal: 20,
                      ),
                      decoration: BoxDecoration(
                        color: Color(0xFFEEE6BC),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Text(
                        'Enter Mobile Number*',
                        style: TextStyle(fontSize: 16, color: Colors.black87),
                      ),
                    ),

                    SizedBox(height: 15),

                    // Email Field
                    Container(
                      padding: EdgeInsets.symmetric(
                        vertical: 18,
                        horizontal: 20,
                      ),
                      decoration: BoxDecoration(
                        color: Color(0xFFEEE6BC),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Text(
                        'Enter Mail ID*',
                        style: TextStyle(fontSize: 16, color: Colors.black87),
                      ),
                    ),

                    SizedBox(height: 15),

                    // Event Date Dropdown
                    Container(
                      padding: EdgeInsets.symmetric(
                        vertical: 18,
                        horizontal: 20,
                      ),
                      decoration: BoxDecoration(
                        color: Color(0xFFEEE6BC),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Pick Event Date',
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.black87,
                            ),
                          ),
                          Icon(
                            Icons.keyboard_arrow_down,
                            color: Colors.black54,
                            size: 20,
                          ),
                        ],
                      ),
                    ),

                    SizedBox(height: 15),

                    // Decoration Type Dropdown
                    Container(
                      padding: EdgeInsets.symmetric(
                        vertical: 18,
                        horizontal: 20,
                      ),
                      decoration: BoxDecoration(
                        color: Color(0xFFEEE6BC),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Decoration Type',
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.black87,
                            ),
                          ),
                          Icon(
                            Icons.keyboard_arrow_down,
                            color: Colors.black54,
                            size: 20,
                          ),
                        ],
                      ),
                    ),

                    SizedBox(height: 15),

                    // Select Event Dropdown
                    Container(
                      padding: EdgeInsets.symmetric(
                        vertical: 18,
                        horizontal: 20,
                      ),
                      decoration: BoxDecoration(
                        color: Color(0xFFEEE6BC),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Select Event',
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.black87,
                            ),
                          ),
                          Icon(
                            Icons.keyboard_arrow_down,
                            color: Colors.black54,
                            size: 20,
                          ),
                        ],
                      ),
                    ),

                    SizedBox(height: 15),

                    // Description Text Area
                    Container(
                      height: 120,
                      padding: EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        color: Color(0xFFEEE6BC),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          'Describe Few Words |',
                          style: TextStyle(fontSize: 16, color: Colors.black87),
                        ),
                      ),
                    ),

                    SizedBox(height: 25),

                    // Submit Button
                    GestureDetector(
                      onTap: () => context.go('/flower_deco_event'),
                      child: Container(
                        width: double.infinity,
                        padding: EdgeInsets.symmetric(vertical: 18),
                        decoration: BoxDecoration(
                          color: Color(0xFFD4AF37),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Center(
                          child: Text(
                            'Submit',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              color: Colors.black87,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildBreadcrumb() {
    return Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 50),
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 22, vertical: 12),
          decoration: BoxDecoration(
            color: const Color(0xFFD4BB26),
            borderRadius: BorderRadius.circular(20),
          ),
          child: const Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(Icons.home, size: 16, color: Colors.black),
              Text(
                ' // Flower Decoration',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
