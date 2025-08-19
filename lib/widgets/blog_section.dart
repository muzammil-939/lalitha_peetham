import 'package:flutter/material.dart';
import 'package:lalitha_peetham/widgets/reusable_responsive_type_widget.dart';

class BlogSection extends StatelessWidget {
  const BlogSection({super.key});

  @override
  Widget build(BuildContext context) {
    final isMobile = ResponsiveHelper.isMobile(context);
    final isTablet = ResponsiveHelper.isTablet(context);

    return  Padding(
      padding:  EdgeInsets.symmetric(horizontal: isMobile ? 16 : isTablet ? 40 : 100.0),
      child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "BLOG",
                style: TextStyle(
                  fontSize:  isMobile ? 20 : isTablet ? 26 : 30,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1.2,
                  color: Colors.black87,
                ),
              ),
              SizedBox(height: isMobile ? 12 : 20),
             // Blog Cards
          isMobile
              ? Column(
                  children: [
                    _buildBlogCard(
                      context,
                      imagepath: "assets/images/blog_image2.png",
                      title: "GANESH CHATURTHI SPECIAL",
                      description:
                          "Know the right muhurtha for Ganesh Chaturthi and how to celebrate it.",
                    ),
                    const SizedBox(height: 20),
                    _buildBlogCard(
                      context,
                      imagepath: "assets/images/blog_image3.png",
                      title: "YOUR CAREER IN 2025",
                      description:
                          "Planetary movements and their impact on your career in 2025.",
                    ),
                    const SizedBox(height: 20),
                    _buildBlogCard(
                      context,
                      imagepath: "assets/images/blog_image4.png",
                      title: "CHOOSING THE RIGHT GEM",
                      description:
                          "A beginner's guide to selecting the perfect gemstone for your needs.",
                    ),
                  ],
                )
              : Wrap(
                spacing: 20, // gap between cards horizontally
                  runSpacing: 20, // gap between rows
                  alignment: WrapAlignment.center,
                children: [
                   _buildBlogCard(
                     context,
                     imagepath: "assets/images/blog_image2.png",
                     title: "GANESH CHATURTHI SPECIAL",
                     description:
                         "Know the right muhurtha for Ganesh Chaturthi and how to celebrate it.",
                   ),
                   _buildBlogCard(
                     context,
                     imagepath: "assets/images/blog_image3.png",
                     title: "YOUR CAREER IN 2025",
                     description:
                         "Planetary movements and their impact on your career in 2025.",
                   ),
                   _buildBlogCard(
                     context,
                     imagepath: "assets/images/blog_image4.png",
                     title: "CHOOSING THE RIGHT GEM",
                     description:
                         "A beginner's guide to selecting the perfect gemstone for your needs.",
                   ),
                ]
              ),

          SizedBox(height: isMobile ? 12 : 20),

          // Dots Indicator
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _dot(true, Colors.amber),
              _dot(false, Colors.black38),
              _dot(false, Colors.black38),
              _dot(false, Colors.black38),
            ],
          ),
        ],
      ),
    );
  }


  static Widget _buildBlogCard(
    BuildContext context, {
    required String imagepath,
    required String title,
    required String description,
  }) {
    final isMobile = ResponsiveHelper.isMobile(context);
    final isTablet = ResponsiveHelper.isTablet(context);

    return SizedBox(
      width: isMobile ? double.infinity : (isTablet ? 200 : 320),
      
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Image.asset(
              imagepath,
              height: isMobile ? 180 : (isTablet ? 160 : 250),
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(height: isMobile ? 8 : 10),
          Text(
            title,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: isMobile ? 12 : 13,
              letterSpacing: 0.8,
            ),
          ),
          SizedBox(height: isMobile ? 4 : 6),
          Text(
            description,
            style: TextStyle(
              fontSize: isMobile ? 12 : 14,
              color: Colors.black87,
              height: 1.4,
            ),
          ),
          SizedBox(height: isMobile ? 8 : 12),
          OutlinedButton(
            onPressed: () {},
            style: OutlinedButton.styleFrom(
              side: const BorderSide(color: Color(0xFFCCB526), width: 1.5),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30),
              ),
              padding: EdgeInsets.symmetric(
                horizontal: isMobile ? 20 : 30,
                vertical: isMobile ? 8 : 10,
              ),
            ),
            child: Text(
              "Read",
              style: TextStyle(
                fontSize: isMobile ? 12 : 14,
                color: Colors.black,
                letterSpacing: 1.2,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ],
      ),
    );
  }

  static Widget _dot(bool isActive, Color color) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 4),
      width: isActive ? 14 : 10,
      height: isActive ? 14 : 10,
      decoration: BoxDecoration(
        color: color,
        shape: BoxShape.circle,
      ),
    );
  }
}
