import 'package:flutter/material.dart';

class WeddingPhotographyUI extends StatefulWidget {
  @override
  _WeddingPhotographyUIState createState() => _WeddingPhotographyUIState();
}

class _WeddingPhotographyUIState extends State<WeddingPhotographyUI> {
  int currentImageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Main carousel container
        Container(
          height: 450,
          margin: EdgeInsets.only(top: 100, right: 150, left: 150),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.1),
                blurRadius: 8,
                offset: Offset(0, 4),
              ),
            ],
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Stack(
              children: [
                // Main wedding image
                Container(
                  width: double.infinity,
                  height: double.infinity,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(
                        'assets/images/wedding.png',
                      ), // Replace with your image
                      fit: BoxFit.cover,
                    ),
                  ),
                ),

                // Left navigation arrow
                Positioned(
                  left: 16,
                  top: 0,
                  bottom: 0,
                  child: Center(
                    child: GestureDetector(
                      onTap: () {
                        // Previous image logic
                      },
                      child: Container(
                        width: 40,
                        height: 40,
                        decoration: BoxDecoration(
                          color: Colors.white.withOpacity(0.8),
                          shape: BoxShape.circle,
                        ),
                        child: Icon(
                          Icons.chevron_left,
                          color: Colors.black54,
                          size: 24,
                        ),
                      ),
                    ),
                  ),
                ),

                // Right navigation arrow
                Positioned(
                  right: 16,
                  top: 0,
                  bottom: 0,
                  child: Center(
                    child: GestureDetector(
                      onTap: () {
                        // Next image logic
                      },
                      child: Container(
                        width: 40,
                        height: 40,
                        decoration: BoxDecoration(
                          color: Colors.white.withOpacity(0.8),
                          shape: BoxShape.circle,
                        ),
                        child: Icon(
                          Icons.chevron_right,
                          color: Colors.black54,
                          size: 24,
                        ),
                      ),
                    ),
                  ),
                ),

                // Dots indicator
                Positioned(
                  bottom: 20,
                  left: 0,
                  right: 0,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: 8,
                        height: 8,
                        margin: EdgeInsets.symmetric(horizontal: 3),
                        decoration: BoxDecoration(
                          color: Colors.white.withOpacity(0.5),
                          shape: BoxShape.circle,
                        ),
                      ),
                      Container(
                        width: 8,
                        height: 8,
                        margin: EdgeInsets.symmetric(horizontal: 3),
                        decoration: BoxDecoration(
                          color: Colors.grey[600],
                          shape: BoxShape.circle,
                        ),
                      ),
                      Container(
                        width: 8,
                        height: 8,
                        margin: EdgeInsets.symmetric(horizontal: 3),
                        decoration: BoxDecoration(
                          color: Colors.white.withOpacity(0.5),
                          shape: BoxShape.circle,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),

        // Photographer cards section
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 150, vertical: 100),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 500,
                width: 400,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(8),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.1),
                      blurRadius: 4,
                      offset: Offset(0, 2),
                    ),
                  ],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Photographer image
                    Container(
                      height: 300,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.vertical(
                          top: Radius.circular(8),
                        ),
                        image: DecorationImage(
                          image: AssetImage(
                            'assets/images/photographers.png',
                          ), // Replace with your image
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),

                    // Card content
                    Container(
                      height: 200,
                      padding: EdgeInsets.all(16),
                      decoration: BoxDecoration(
                        color: Colors.grey[200],
                        borderRadius: BorderRadius.vertical(
                          bottom: Radius.circular(8),
                        ),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // Studio name
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Icon(
                                Icons.camera_alt,
                                size: 16,
                                color: Colors.grey[600],
                              ),
                              SizedBox(width: 6),
                              Expanded(
                                child: Text(
                                  'Studio Name: Sree Vision Photography & Studio',
                                  style: TextStyle(
                                    fontSize: 13,
                                    color: Colors.black87,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 8),

                          // Photographer name
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Icon(
                                Icons.person,
                                size: 16,
                                color: Colors.grey[600],
                              ),
                              SizedBox(width: 6),
                              Expanded(
                                child: Text(
                                  'Photographer: Ramesh G.',
                                  style: TextStyle(
                                    fontSize: 13,
                                    color: Colors.black87,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 8),

                          // Email
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Icon(
                                Icons.email,
                                size: 16,
                                color: Colors.blue[600],
                              ),
                              SizedBox(width: 6),
                              Expanded(
                                child: Text(
                                  'Email: sreevisionstudio@gmail.com',
                                  style: TextStyle(
                                    fontSize: 13,
                                    color: Colors.blue[600],
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 20),

                          // Book now button
                          Center(
                            child: SizedBox(
                              width: 220,
                              child: ElevatedButton(
                                onPressed: () {
                                  // Book now logic
                                },
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.amber[300],
                                  foregroundColor: Colors.black87,
                                  padding: EdgeInsets.symmetric(vertical: 24),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(6),
                                  ),
                                  elevation: 0,
                                ),
                                child: Text(
                                  'Book now',
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w600,
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

              SizedBox(width: 50),

              Container(
                height: 500,
                width: 400,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(8),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.1),
                      blurRadius: 4,
                      offset: Offset(0, 2),
                    ),
                  ],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Photographer image
                    Container(
                      height: 300,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.vertical(
                          top: Radius.circular(8),
                        ),
                        image: DecorationImage(
                          image: AssetImage(
                            'assets/images/photographers.png',
                          ), // Replace with your image
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),

                    // Card content
                    Container(
                      height: 200,
                      padding: EdgeInsets.all(16),
                      decoration: BoxDecoration(
                        color: Colors.grey[200],
                        borderRadius: BorderRadius.vertical(
                          bottom: Radius.circular(8),
                        ),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // Studio name
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Icon(
                                Icons.camera_alt,
                                size: 16,
                                color: Colors.grey[600],
                              ),
                              SizedBox(width: 6),
                              Expanded(
                                child: Text(
                                  'Studio Name: Sree Vision Photography & Studio',
                                  style: TextStyle(
                                    fontSize: 13,
                                    color: Colors.black87,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 8),

                          // Photographer name
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Icon(
                                Icons.person,
                                size: 16,
                                color: Colors.grey[600],
                              ),
                              SizedBox(width: 6),
                              Expanded(
                                child: Text(
                                  'Photographer: Ramesh G.',
                                  style: TextStyle(
                                    fontSize: 13,
                                    color: Colors.black87,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 8),

                          // Email
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Icon(
                                Icons.email,
                                size: 16,
                                color: Colors.blue[600],
                              ),
                              SizedBox(width: 6),
                              Expanded(
                                child: Text(
                                  'Email: sreevisionstudio@gmail.com',
                                  style: TextStyle(
                                    fontSize: 13,
                                    color: Colors.blue[600],
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 20),

                          // Book now button
                          Center(
                            child: SizedBox(
                              width: 220,
                              child: ElevatedButton(
                                onPressed: () {
                                  // Book now logic
                                },
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.amber[300],
                                  foregroundColor: Colors.black87,
                                  padding: EdgeInsets.symmetric(vertical: 24),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(6),
                                  ),
                                  elevation: 0,
                                ),
                                child: Text(
                                  'Book now',
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w600,
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
            ],
          ),
        ),
      ],
    );
  }
}
