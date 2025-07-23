import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:lalitha_peetham/screens/catering_screens/catering_faq_widget.dart';
import 'package:lalitha_peetham/screens/catering_screens/catering_layout.dart';
import 'package:lalitha_peetham/screens/catering_screens/contact_caterer_widget.dart';

class CatererMenueDetailsPage extends StatefulWidget {
  const CatererMenueDetailsPage({super.key});

  @override
  State<CatererMenueDetailsPage> createState() => _CatererMenueDetailsPageState();
}

class _CatererMenueDetailsPageState extends State<CatererMenueDetailsPage> {
  @override
  Widget build(BuildContext context) {
    return CateringLayout(
      child: SingleChildScrollView(
        child: Column(
          children: [
            buildherosection(),
            FoodCartScreen(),
            SizedBox(height: 80,),
             ContactCatererWidget(),
             SizedBox(height: 80,),
             SimilarFoodCartScreen(),
             SizedBox(height: 80,),
             CateringFaqWidget(),
             SizedBox(height: 80,),

          ],
        ),
      ),
    );
  }

 Widget buildherosection() {
    return Stack(
      alignment: Alignment.center,
      children: [
        Image.asset(
          'assets/images/vastupooja1.png',
          width: double.infinity,
          height: 600,
          fit: BoxFit.cover,
        ),
        Positioned(
          top: 40,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Icon(Icons.menu, color: Colors.white),
              SizedBox(width: 6),
              Text("Menu", style: TextStyle(color: Colors.white, fontSize: 25, fontWeight: FontWeight.bold)),
            ],
          ),
        ),
        Positioned(
          top: 120,
          child: Column(
            children: const [
              
              Text(
                "Find the Perfect Caterer for Your\nOccasion",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 45,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
        Positioned(
          bottom: 20,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(0),
            child: Image.asset(
              'assets/images/catering1.png',
              height: 180,
              width: 280,
              fit: BoxFit.cover,
            ),
          ),
        )
      ],
    );
  }
}


class FoodCartScreen extends StatelessWidget {
  const FoodCartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        // 🌄 Background Decorations
        Positioned(
          top: 0,
          left: 0,
          child: SizedBox(
            height: 450,
            width: 1500,
            child: Image.asset(
              'assets/images/vastupooja4.png',
              fit: BoxFit.cover,
            ),
          ),
        ),
        Positioned(
          top: 40,
          right: 40,
          child: Image.asset(
            'assets/images/vastupooja11.png',
            width: 60,
            height: 60,
          ),
        ),

        // 📦 Page Content
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 150.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 60),

              // 🍛 Food Cards
              buildFoodCard(
                context,
                imagePath: 'assets/images/catering9.png',
                alignmentLeft: true,
              ),
              const SizedBox(height: 20),
              buildFoodCard(
                context,
                imagePath: 'assets/images/catering10.png',
                alignmentLeft: false,
              ),
              const SizedBox(height: 20),
                buildFoodCard(
                context,
                imagePath: 'assets/images/catering9.png',
                alignmentLeft: true,
              ),
              const SizedBox(height: 20),
              buildFoodCard(
                context,
                imagePath: 'assets/images/catering10.png',
                alignmentLeft: false,
              ),
            ],
            
          ),
        ),
       
      ],
      
    );
  }



  // 🍲 Food Card Builder
  Widget buildFoodCard(BuildContext context,
      {required String imagePath, required bool alignmentLeft}) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
      decoration: BoxDecoration(
        color: const Color(0xFFEDC14B),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: alignmentLeft
            ? [
                ClipOval(
                  child: Image.asset(
                    imagePath,
                    height: 120,
                    width: 120,
                    fit: BoxFit.cover,
                  ),
                ),
                const SizedBox(width: 20),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        "is simply dummy",
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 16,
                          fontFamily: 'Georgia',
                        ),
                      ),
                      SizedBox(height: 6),
                      Text(
                        "is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard",
                        style: TextStyle(
                          fontSize: 14,
                          fontFamily: 'Georgia',
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(width: 20),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    foregroundColor: Colors.black,
                  
                    padding:
                        EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                    elevation: 2,
                    textStyle: TextStyle(fontFamily: 'Georgia'),
                  ),
                  onPressed: () {
                    
                  },
                  child: const Text("View details"),
                ),
              ]
            : [
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    foregroundColor: Colors.black,
                    padding:
                        EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                    elevation: 2,
                    textStyle: TextStyle(fontFamily: 'Georgia'),
                  ),
                  onPressed: () {},
                  child: const Text("View details"),
                ),
                const SizedBox(width: 20),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: const [
                      Text(
                        "is simply dummy",
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 16,
                          fontFamily: 'Georgia',
                        ),
                      ),
                      SizedBox(height: 6),
                      Text(
                        "is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard",
                        style: TextStyle(
                          fontSize: 14,
                          fontFamily: 'Georgia',
                        ),
                        textAlign: TextAlign.right,
                      ),
                    ],
                  ),
                ),
                const SizedBox(width: 20),
                ClipOval(
                  child: Image.asset(
                    imagePath,
                    height: 120,
                    width: 120,
                    fit: BoxFit.cover,
                  ),
                ),
              ],
      ),
    );
  }
}

class SimilarFoodCartScreen extends StatelessWidget {
  const SimilarFoodCartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
       
        // 📦 Page Content
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 150.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 40),
              // 🍛 Food Cards
              buildSimilarFoodCard(
                context,
                imagePath: 'assets/images/catering9.png',
                alignmentLeft: true,
              ),
              const SizedBox(height: 20),
              buildSimilarFoodCard(
                context,
                imagePath: 'assets/images/catering10.png',
                alignmentLeft: false,
              ),
            ],
          ),
        )
      ],
    );
  }

  // 🍲 Food Card Builder
  Widget buildSimilarFoodCard(BuildContext context,
      {required String imagePath, required bool alignmentLeft}) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
      decoration: BoxDecoration(
        color: const Color(0xFFEDC14B),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: alignmentLeft
            ? [
                ClipOval(
                  child: Image.asset(
                    imagePath,
                    height: 120,
                    width: 120,
                    fit: BoxFit.cover,
                  ),
                ),
                const SizedBox(width: 20),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        "is simply dummy",
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 16,
                          fontFamily: 'Georgia',
                        ),
                      ),
                      SizedBox(height: 6),
                      Text(
                        "is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard",
                        style: TextStyle(
                          fontSize: 14,
                          fontFamily: 'Georgia',
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(width: 20),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    foregroundColor: Colors.black,
                  
                    padding:
                        EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                    elevation: 2,
                    textStyle: TextStyle(fontFamily: 'Georgia'),
                  ),
                  onPressed: () {
                    context.go('');
                  },
                  child: const Text("View details"),
                ),
              ]
            : [
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    foregroundColor: Colors.black,
                    padding:
                        EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                    elevation: 2,
                    textStyle: TextStyle(fontFamily: 'Georgia'),
                  ),
                  onPressed: () {},
                  child: const Text("View details"),
                ),
                const SizedBox(width: 20),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: const [
                      Text(
                        "is simply dummy",
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 16,
                          fontFamily: 'Georgia',
                        ),
                      ),
                      SizedBox(height: 6),
                      Text(
                        "is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard",
                        style: TextStyle(
                          fontSize: 14,
                          fontFamily: 'Georgia',
                        ),
                        textAlign: TextAlign.right,
                      ),
                    ],
                  ),
                ),
                const SizedBox(width: 20),
                ClipOval(
                  child: Image.asset(
                    imagePath,
                    height: 120,
                    width: 120,
                    fit: BoxFit.cover,
                  ),
                ),
              ],
      ),
    );
  }
}

