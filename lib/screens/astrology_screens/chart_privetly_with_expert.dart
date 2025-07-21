import 'package:flutter/material.dart';
import 'package:lalitha_peetham/screens/astrology_screens/astrologers_cards.dart';
import 'package:lalitha_peetham/screens/astrology_screens/expert_astrologers.dart';
import 'package:lalitha_peetham/screens/astrology_screens/simillar_astrologers.dart';
import 'package:lalitha_peetham/screens/online_vastu_property/astrologer_contact_section.dart';
import 'package:lalitha_peetham/screens/online_vastu_property/related_astrology.dart';
import 'package:lalitha_peetham/screens/online_vastu_property/vastu_expert_card.dart';
import 'package:lalitha_peetham/screens/online_vastu_property/vastupooja_layout.dart';

class ChartPrivetlyWithExpert extends StatefulWidget {
  const ChartPrivetlyWithExpert({super.key});

  @override
  State<ChartPrivetlyWithExpert> createState() => _ChartPrivetlyWithExpertState();
}

class _ChartPrivetlyWithExpertState extends State<ChartPrivetlyWithExpert> {
  @override
  Widget build(BuildContext context) {
    return VastupoojaLayout(
      child: SingleChildScrollView(
        child: Column(
          children: [
            buildherosection() ,
            //SizedBox(height: 40,),
            ExpertAstrologers(), 
            SizedBox(height: 80,),
            AstrologerContactSection(),
            SizedBox(height: 80,),
            SimillarAstrologers(),
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
                "Chat Privately with Expert Astrologers\n— Secure & Confidential",
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
              'assets/images/vastupooja18.png',
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




