import 'package:flutter/material.dart';
import 'package:lalitha_peetham/screens/ayurvedha/ayurvedh_page_layout.dart';

class BlogScreen extends StatefulWidget {
  const BlogScreen({super.key});

  @override
  State<BlogScreen> createState() => _BlogScreenState();
}

class _BlogScreenState extends State<BlogScreen> {
  @override
  Widget build(BuildContext context) {
    return AyurvedhPageLayout(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 150),
        child: Container(
          color: Colors.white,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 40,),
                Center(
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 18, vertical: 12),
                decoration: BoxDecoration(
                  color: Color(0xFFD4BB26),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(Icons.home, size: 16, color: Colors.black),
                    Text(
                      ' / ',
                      style: TextStyle(color: Colors.black, fontSize: 14),
                    ),
                    Text(
                      'AYURVEDA CONSULTANCY',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Text(
                      ' / ',
                      style: TextStyle(color: Colors.black, fontSize: 14),
                    ),
                    Text(
                      'BLOG',
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
            SizedBox(height: 40,),
                // Header Section
                Container(
                  width: double.infinity,
                  padding: EdgeInsets.all(16),
                  color: Colors.white,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'WORLD ASSEMBLY ON AYURVEDA, YOGA & NATUROPATHY',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.black87,
                          letterSpacing: 0.5,
                        ),
                      ),
                      SizedBox(height: 8),
                      Text(
                        '6 YEARS AGO',
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.black87,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                
                // Hero Image
                Container(
                  width: double.infinity,
                  height: 350,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/images/blog_image.png'), // Replace with your image path
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: Container(
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          Colors.transparent,
                          Colors.black.withOpacity(0.1),
                        ],
                      ),
                    ),
                  ),
                ),
                
                // Content Section
                Container(
                  width: double.infinity,
                  padding: EdgeInsets.all(16),
                  color: Colors.white,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // First paragraph
                      Text(
                        'World Assembly on Ayurveda, Yoga & Naturopathy (WAAYN) all set to be held from 7-10 November, 2019 has been receiving support from every corner. Keeping in mind the importance of promoting Ayurveda, Yoga & Naturopathy, industry bigwigs namely Dr. Veerendra Heggade (Dharmadhikari, Shri Kshetra Dharmasthala), Dr. Vasant Lad (Ayurvedic Physician & Professor, USA), Dr. Bhushan Patwardhan (Vice Chairman, University Grants Commission), Dr. P R Krishnakumar (Managing Director, The Arya Vaidya Pharmacy Ltd.) and Shri O P Tiwari (Secretary General, Kaivalyadham, Lonavla) have join hands with WAAYN as the Patrons.',
                        style: TextStyle(
                          fontSize: 16,
                          height: 1.6,
                          color: Colors.black87,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      
                      SizedBox(height: 16),
                      
                      // Quote paragraph
                      Text(
                        '"WAAYN will be the Mahakumbh of Ayurveda, Yoga and Naturopathy. People would recall it as the most organized and most thoughtful event, which will be the mother of all events," said Mr. Rakesh Kumar, Managing Director, India Exposition Mart Limited.',
                        style: TextStyle(
                          fontSize: 16,
                          height: 1.6,
                          color: Colors.black87,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      
                      SizedBox(height: 16),
                      
                      // Third paragraph
                      Text(
                        'WAAYN will lay a concrete foundation and set ambitious goals for the industry. Talking about WAAYN, Dr. HR Nagendra, Chancellor, S-VYASA, Bengaluru said, "The idea behind WAAYN is to reach to the masses and to ensure this interaction is under progress with leading medical fraternity (Modern Medicine and Holistic Health Industry), Research and Educational institutes, including the ministry of HFW and AYUSH to support, and actively take part in the event."',
                        style: TextStyle(
                          fontSize: 16,
                          height: 1.6,
                          color: Colors.black87,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      
                      SizedBox(height: 16),
                      
                      // Fourth paragraph
                      Text(
                        'WAAYN will connect the best of the natural health experts and academic institutions across the globe. The most intricate and extensive information, products and insights about Ayurveda, Yoga & Naturopathy will find global audience at WAAYN 2019.',
                        style: TextStyle(
                          fontSize: 16,
                          height: 1.6,
                          color: Colors.black87,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      
                      SizedBox(height: 16),
                      
                      // Final paragraph
                      Text(
                        'The event is being organized by India Exposition Mart Limited.',
                        style: TextStyle(
                          fontSize: 16,
                          height: 1.6,
                          color: Colors.black87,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      
                      SizedBox(height: 24),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}