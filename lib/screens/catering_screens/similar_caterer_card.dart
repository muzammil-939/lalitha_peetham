import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SimilarCatererCard extends StatefulWidget {
  const SimilarCatererCard({super.key});

  @override
  State<SimilarCatererCard> createState() => _SimilarCatererCardState();
}

class _SimilarCatererCardState extends State<SimilarCatererCard> {
   final List<Map<String, String>> caterers = [
    {
      "image": "assets/images/catering2.png",
      "name": "Shree Bhog Caterers",
      "contact": "Mr. Ramesh Verma",
      "phone": "+91 98765 43210",
      "email": "shreebhog@gmail.com",
      "location": "Hyderabad, Telangana",
      "gst": "36ABCDE1234FZ5",
      "experience": "8+ years"
    },
    {
      "image": "assets/images/catering2.png",
      "name": "Royal Feast",
      "contact": "Ms. Anjali Mehta",
      "phone": "+91 91234 56789",
      "email": "royalfeast@gmail.com",
      "location": "Secunderabad, Telangana",
      "gst": "36ABCDE9876GZ1",
      "experience": "10+ years"
    }
    
   ];

  @override
  
Widget build(BuildContext context) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 100, vertical: 40),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "Our caterers",
          style: TextStyle(
            fontSize: 35,
            fontWeight: FontWeight.bold,
            color: Colors.black, // make sure it's readable
          ),
        ),
        const SizedBox(height: 40),
  
        Wrap(
          spacing: 20,
          runSpacing: 24,
          children: caterers
              .map((data) => buildCatererCard(data))
              .toList(),
        ),
      ],
    ),
  );
}



   Widget buildCatererCard(Map<String, String> data) {
  return SizedBox(
    width: 350, // ensures only 2 cards fit per row
    height: 450,
    child: Container(
      decoration: BoxDecoration(
        color:  Colors.white,
        borderRadius: BorderRadius.circular(0),
        boxShadow: const [
          BoxShadow(
            color: Colors.black26,
            blurRadius: 4,
            offset: Offset(0, 4),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.vertical(top: Radius.circular(0)),
            child: Image.asset(
              data["image"]!,
              height: 180,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(height: 8),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Name: ${data['name']}"),
                Text("Contact Person: ${data['contact']}"),
                Text("Phone: ${data['phone']}"),
                Text("Email: ${data['email']}"),
                Text("Location: ${data['location']}"),
                Text("GST: ${data['gst']}"),
                Text("Experience: ${data['experience']}"),
                const SizedBox(height: 15),
              ],
            ),
          ),
          Center(
            child: ElevatedButton(
              onPressed: () => context.go(''),
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xFFF5C761),
                foregroundColor: Colors.black,
                padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
                textStyle: const TextStyle(fontSize: 12),
              ),
              child: const Text("Book Now"),
            ),
          ),
          const SizedBox(height: 12),
        ],
      ),
    ),
  );
}
  }
