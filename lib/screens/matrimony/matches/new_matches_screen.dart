

import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:lalitha_peetham/screens/matrimony/matches/filtered_section_widget.dart';
import 'package:lalitha_peetham/screens/matrimony/matches/matches_header_layout.dart';

class NewMatchesScreen extends StatefulWidget {
  const NewMatchesScreen({super.key});

  @override
  State<NewMatchesScreen> createState() => _NewMatchesScreenState();
}

class _NewMatchesScreenState extends State<NewMatchesScreen> {
  String selectedRefineFilter = 'All';
  String selectedPhotoFilter = 'All';
  String selectedRecentlyJoined = 'All';
  String activeMembers = 'All';
  String annualIncome = 'All';
  String marritalStatus = 'All';

 @override
Widget build(BuildContext context) {
  return MatchesHeaderLayout(
    child: Padding(
     padding: const EdgeInsets.symmetric(horizontal: 150),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Sidebar (fixed)
          Container(
            width: 250,
            color: Colors.white,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
               FilterSection(
                  title: 'REFINE SEARCH',
                  options: ['All', 'Blue Tick Profile'],
                  selectedValue: selectedRefineFilter,
                  onChanged: (value) => setState(() => selectedRefineFilter = value),
                ),
                FilterSection(
                  title: 'PHOTO SETTINGS',
                  options: ['All', 'Visible To All', 'Protected Pho...(4)'],
                  selectedValue: selectedPhotoFilter,
                  onChanged: (value) => setState(() => selectedPhotoFilter = value),
                ),
                FilterSection(
                  title: 'RECENTLY JOINED',
                  options: ['All', 'With In A Day', 'With In A Week', 'With In A Month'],
                  selectedValue: selectedRecentlyJoined,
                  onChanged: (value) => setState(() => selectedRecentlyJoined = value),
                ),
                FilterSection(
                  title: 'ACTIVE MEMBERS',
                  options: ['All', 'With In A Day', 'With In A Week', 'With In A Month'],
                  selectedValue: activeMembers,
                  onChanged: (value) => setState(() => activeMembers = value),
                ),
               FilterSection(
                  title: 'ANNUAL INCOME',
                  options: ['All', '2 To 4 Lakh', '4 To 5 Lakh', '5 To 6 Lakh'],
                  selectedValue: annualIncome,
                  onChanged: (value) => setState(() => annualIncome = value),
                ),
                FilterSection(
                  title: 'MARRITAL STATUS',
                  options: ['All', 'Never Married', 'Divorced', 'Awaiting Divorce', 'Widowed'],
                  selectedValue: marritalStatus,
                  onChanged: (value) => setState(() => marritalStatus = value),
                ),
              ],
            ),
          ),
          SizedBox(width: 30,),
      
          // Main Scrollable Area (cards)
          Expanded(
            child: SingleChildScrollView(
              padding: const EdgeInsets.only(top: 20,),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Text(
                    'New Members Who Match Most Of Your Preferences',
                    style: TextStyle(fontSize: 16, color: Colors.grey, fontWeight: FontWeight.w500),
                  ),
                  const SizedBox(height: 20),
                  ListView.builder(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: 3,
                    itemBuilder: (context, index) => _buildProfileCard(),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    ),
  );
}

Widget _buildProfileCard() {
  return Container(
    margin: const EdgeInsets.symmetric(vertical: 10,),
    padding: const EdgeInsets.all(12),
    decoration: BoxDecoration(
      color: const Color(0xFFFFF9E4), // Light cream background
      borderRadius: BorderRadius.circular(8),
      border: Border.all(color: Colors.grey.shade300),
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Profile Image
            Container(
              width: 180,
              height: 200,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(6),
                image: const DecorationImage(
                  image: NetworkImage(
                      'https://images.unsplash.com/photo-1507003211169-0a1dd7228f2d?w=300&h=400&fit=crop'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(width: 12),
            // Profile Info
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'SH78488320',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFFB8860B), // golden brown
                    ),
                  ),
                  const SizedBox(height: 4),
                  Row(
                    children: const [
                      Icon(Icons.circle, size: 8, color: Colors.green),
                      SizedBox(width: 4),
                      Text('Online 1h Ago', style: TextStyle(fontSize: 11)),
                      SizedBox(width: 8),
                      Icon(Icons.favorite_border, size: 14, color: Colors.grey),
                      SizedBox(width: 2),
                      Text('You & Him', style: TextStyle(fontSize: 11, color: Colors.grey)),
                      SizedBox(width: 8),
                      Icon(Icons.star_border, size: 14, color: Colors.grey),
                      SizedBox(width: 2),
                      Text('Astro', style: TextStyle(fontSize: 11, color: Colors.grey)),
                    ],
                  ),
                  const SizedBox(height: 10),
                  const Text("28 Yrs, 5'3\"", style: TextStyle(fontSize: 13)),
                  const Text("Tamil, Agamudayar", style: TextStyle(fontSize: 13)),
                  const Text("Chennai, Tamil Nadu", style: TextStyle(fontSize: 13)),
                  const Text("B.Eng (Hons)", style: TextStyle(fontSize: 13)),
                  const Text("Occupation: Company Secretary", style: TextStyle(fontSize: 13)),
                ],
              ),
            ),
          ],
        ),
        const SizedBox(height: 12),

        // Description Box
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            DottedBorder(
            borderType: BorderType.RRect,
            radius: Radius.circular(4),
            color: Color(0xFFD4AF37),
            strokeWidth: 1,
            dashPattern: [4, 3],
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 30,horizontal: 35),
              width: 300,
              color: Colors.white,
              child: Text(
                'My Son Has Completed Bachelors In Medicine At Present. I Am Working As A Doctor In ESIC(HARYANA)... More',
                style: TextStyle(fontSize: 12, color: Colors.black87),
              ),
            ),
                  ),
          ],
        ),
        const SizedBox(height: 16),

        // Footer: Connect Button
        Center(
          child: Column(
            children: [
              const Text(
                'LIKED THIS PROFILE?',
                style: TextStyle(
                  fontSize: 11,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFFD4AF37),
                  letterSpacing: 0.5,
                ),
              ),
              const SizedBox(height: 8),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 8),
                decoration: BoxDecoration(
                  color: const Color(0xFFD4AF37),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: const Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(Icons.check, color: Colors.white, size: 16),
                    SizedBox(width: 6),
                    Text(
                      'Connect Now',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
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
  );
}

}
