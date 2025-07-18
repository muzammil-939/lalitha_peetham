import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:lalitha_peetham/screens/photography/photography_faq_wid.dart';
import 'package:lalitha_peetham/screens/photography/photography_hero_img2.dart';
import 'package:lalitha_peetham/screens/photography/photography_layout.dart';

class PhotographyPortfolio extends StatelessWidget {
  const PhotographyPortfolio({super.key});

  @override
  Widget build(BuildContext context) {
    return PhotographyLayout(
      child: Column(
        children: [
          PhotographyHeroImg2(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 150, vertical: 100),
            child: Container(
              width: double.infinity,
              decoration: BoxDecoration(color: Color(0xFF6B8E4B)),
              padding: EdgeInsets.all(80),
              child: Container(
                width: double.infinity,
                padding: const EdgeInsets.all(24.0),
                decoration: BoxDecoration(
                  color: const Color(0xFF6B8E4E), // Olive green background
                  borderRadius: BorderRadius.circular(12.0),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Portfolio description text
                    Padding(
                      padding: const EdgeInsets.only(bottom: 40.0),
                      child: Text(
                        'Our portfolio showcases real emotions, timeless\nmemories, and beautiful stories told through our lens.',
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                          height: 1.6,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),

                    // Portfolio grid - 3 rows x 2 columns
                    GridView.builder(
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        crossAxisSpacing: 24.0,
                        mainAxisSpacing: 24.0,
                        childAspectRatio: 1.4, // Rectangular aspect ratio
                      ),
                      itemCount: 6,
                      itemBuilder: (context, index) {
                        return Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(8.0),
                            child: Image.asset(
                              'assets/images/flower_deco_product_6.png',
                              fit: BoxFit.cover,
                            ),
                          ),
                        );
                      },
                    ),

                    // View more button
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 40.0),
                          child: Center(
                            child: ElevatedButton(
                              onPressed: () {
                                // Handle view more action
                              },
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Color(
                                  0xFFE5B649,
                                ), // Golden yellow
                                foregroundColor: Colors.black,
                                padding: EdgeInsets.symmetric(
                                  horizontal: 34.0,
                                  vertical: 20.0,
                                ),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                                elevation: 0,
                              ),
                              child: Text(
                                'View more',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          PhotographyFaqWid(),
        ],
      ),
    );
  }
}
