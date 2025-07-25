import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:lalitha_peetham/screens/online_vastu_property/vastupooja_layout.dart';
import 'package:lalitha_peetham/screens/palm_reading/palm_reading_layout.dart';
import 'package:lalitha_peetham/screens/pandit%20booking/pandit_booking_expert_card.dart';
import 'package:lalitha_peetham/screens/pandit%20booking/pandit_booking_faq_support_wid.dart';
import 'package:lalitha_peetham/screens/pandit%20booking/pandit_booking_layout.dart';
import 'package:lalitha_peetham/screens/pandit%20booking/pandith_contact_section.dart';

import '../palm_reading/palm_reading_expert_card.dart';
import '../photography/photography_faq_support_wid.dart';

class PanditBookingHome extends StatefulWidget {
  const PanditBookingHome({super.key});

  @override
  State<PanditBookingHome> createState() => _PanditBookingHomeState();
}

class _PanditBookingHomeState extends State<PanditBookingHome> {
  @override
  Widget build(BuildContext context) {
    return PanditBookingLayout(
      child: Column(
        children: [
          buildherosection(),
          SizedBox(height: 80),
          Container(
            width: double.infinity,

            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Search Bar
                    Container(
                      height: 50,
                      width: 350,
                      decoration: BoxDecoration(
                        color: Color(0xFFB8B8B8),
                        borderRadius: BorderRadius.circular(25),
                      ),
                      child: Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 20),
                            child: Text(
                              "Search pooja's",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                          Spacer(),
                          Padding(
                            padding: EdgeInsets.only(right: 15),
                            child: Icon(
                              Icons.search,
                              color: Colors.black,
                              size: 24,
                            ),
                          ),
                        ],
                      ),
                    ),

                    SizedBox(height: 50),

                    // Heading
                    Text(
                      "Explore a Curated Collection of Poojas for Every Special\nOccasion and Spiritual Need",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 32,
                        fontWeight: FontWeight.bold,
                        height: 1.2,
                      ),
                    ),

                    SizedBox(height: 50),
                  ],
                ),

                // First Row of Cards
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    _buildPoojaCard("Rudrabhishek Puja", 'null'),
                    SizedBox(width: 15),
                    _buildPoojaCard(
                      "Satyanarayan Puja",
                      '/pandit_booking_satyanarayana_pooja',
                    ),
                    SizedBox(width: 15),
                    _buildPoojaCard("Rahu Puja", 'null'),
                  ],
                ),

                SizedBox(height: 30),

                // Second Row of Cards
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    _buildPoojaCard(
                      "Ganesh Pooja",
                      '/pandit_booking_ganesh_pooja',
                    ),
                    SizedBox(width: 15),
                    _buildPoojaCard("Durga Pooja", 'null'),
                    SizedBox(width: 15),
                    _buildPoojaCard("Durga Pooja", 'null'),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(height: 100),
          PandithContactSection(),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 100),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                _buildPoojaCard("Rudrabhishek Puja", 'null'),
                SizedBox(width: 15),
                _buildPoojaCard(
                  "Satyanarayan Puja",
                  '/pandit_booking_satyanarayana_pooja',
                ),
                SizedBox(width: 15),
                _buildPoojaCard("Rahu Puja", 'null'),
              ],
            ),
          ),
          PanditBookingExpertCard(),
          SizedBox(height: 100),
        ],
      ),
    );
  }

  Widget _buildPoojaCard(String title, String path) {
    return Container(
      width: 250,
      height: 290,
      child: Column(
        children: [
          // Black image placeholder
          Container(
            width: 230,
            height: 180,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(8),
                topRight: Radius.circular(8),
              ),
              image: const DecorationImage(
                image: AssetImage('assets/images/pandith_booking_home_2.png'),
                fit: BoxFit.cover,
              ),
            ),
          ),

          // Yellow bottom section
          Container(
            width: 230,
            height: 110,
            decoration: BoxDecoration(
              color: Color(0xFFE4C74D), // Golden yellow color
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(8),
                bottomRight: Radius.circular(8),
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  title,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                  textAlign: TextAlign.center,
                ),

                SizedBox(height: 15),

                // Book Now Button
                GestureDetector(
                  onTap: () => context.go(path),
                  child: Container(
                    width: 150,
                    height: 35,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Center(
                      child: Text(
                        "Book Now",
                        style: TextStyle(
                          color: Colors.black,
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
              Text(
                "Menu",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
        Positioned(
          top: 120,
          child: Column(
            children: const [
              Text(
                "FIND THE PERFECT POOJA SERVICE TAILORED \nTO YOUR SPIRITUAL NEEDS",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 38,
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
              'assets/images/pandit_booking_home.png',
              height: 180,
              width: 280,
              fit: BoxFit.cover,
            ),
          ),
        ),
      ],
    );
  }
}
