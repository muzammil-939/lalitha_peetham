import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:lalitha_peetham/screens/SANNAI_MELAM_SCREENS/sannai_melam_layout.dart';
import 'package:intl/intl.dart';

class SannaiServiceHighlights extends StatefulWidget {
  const SannaiServiceHighlights({super.key});

  @override
  State<SannaiServiceHighlights> createState() => _SannaiServiceHighlightsState();
}

class _SannaiServiceHighlightsState extends State<SannaiServiceHighlights> {
  String selectedHour = '2 Hour';
  String selectedArtist = '4';
  String selectedTimeSlot = '6.30 Am To 8.30 Am';
  String selectedImage = 'assets/images/sannai_melam_image1.png';

  @override
  Widget build(BuildContext context) {
    return SannaiMelamLayout(
      child: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 150, vertical: 40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildBreadcrumb(),
            const SizedBox(height: 40),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _buildImageSection(),
                const SizedBox(width: 40),
                Expanded(child: _buildDetailsSection()),
              ],
            ),
            const SizedBox(height: 40),
            _buildRatingsAndReviews(),
          ],
        ),
      ),
    );
  }

  Widget _buildBreadcrumb() {
    return Center(
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 12),
        decoration: BoxDecoration(
          color: const Color(0xFFD4BB26),
          borderRadius: BorderRadius.circular(20),
        ),
        child: const Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(Icons.home, size: 16, color: Colors.black),
            SizedBox(width: 6),
            Text(' // Sannai Melam Online Booking // Service Highlights',
                style: TextStyle(color: Colors.black, fontWeight: FontWeight.w500)),
          ],
        ),
      ),
    );
  }

  Widget _buildImageSection() {
    return Column(
      children: [
        Row(
          children: [
            Column(
              children: [
                for (int i = 1; i <= 4; i++)
                  Padding(
                    padding: const EdgeInsets.only(bottom: 8),
                    child: GestureDetector(
                      onTap: () => setState(() => selectedImage = 'assets/images/sannai_melam_image1.png'),
                      child: SizedBox(
                        width: 60,
                        height: 60,
                        child: Image.asset('assets/images/sannai_melam_image1.png', fit: BoxFit.cover),
                      ),
                    ),
                  ),
              ],
            ),
            const SizedBox(width: 10),
            SizedBox(
              width: 350,
              height: 350,
              child: Image.asset(selectedImage, fit: BoxFit.cover),
            ),
          ],
        ),
        const SizedBox(height: 20),
        SizedBox(
          width: 350,
          child: Stack(
            alignment: Alignment.center,
            children: [
              Image.asset('assets/images/sannai_melam_image1.png'),
              const Icon(Icons.play_circle_fill, size: 60, color: Colors.white),
            ],
          ),
        ),
        const SizedBox(height: 20),
        SizedBox(
          height: 50,
          width: 180,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(backgroundColor: const Color(0xFFD4BB26),
             shape: RoundedRectangleBorder(
               borderRadius: BorderRadius.circular(0),
              ),),
            onPressed: () {
              context.go('/sannai_melam_booknow');
            },
            child: Text('Book Now', style: TextStyle(color: Colors.white)),
          ),
        ),
      ],
    );
  }

  Widget _buildDetailsSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text('SRI SAKTHI SANNAI MELAM', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
        const SizedBox(height: 8),
        const Text('RAMESH.S(HEAD)', style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600)),
        const SizedBox(height: 8),
        const Row(
          children: [
            Text('42,000', style: TextStyle(decoration: TextDecoration.lineThrough)),
            SizedBox(width: 8),
            Text('₹30,000/hr', style: TextStyle(fontSize: 20, color: Colors.orange)),
          ],
        ),
        const SizedBox(height: 10),
        const Text('4.8 Rating (210+ Rating)'),
        const Text('Telugu'),
        const Text('Exp: 9 Years'),
        const Text('Team Strength: 15 Years'),
        const SizedBox(height: 20),
        _buildDropdown('Select Hour', ['2 Hour', '3 Hour'], selectedHour, (val) => setState(() => selectedHour = val!)),
        _buildDropdown('Number of Artist', ['2', '3', '4', '5'], selectedArtist, (val) => setState(() => selectedArtist = val!)),
        _buildTextField('Price', '12000'),
        _buildDropdown('Time Slot', ['6.30 Am To 8.30 Am', '9.00 Am To 11.00 Am'], selectedTimeSlot, (val) => setState(() => selectedTimeSlot = val!)),
        const SizedBox(height: 10),
        SizedBox(
          height: 50,
          width: 180,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(backgroundColor: Colors.green,
             shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(0),
              ),),
          
            onPressed: () {},
            child: Text('Available', style: TextStyle(color: Colors.white,),),
          ),
        ),
      ],
    );
  }

  Widget _buildDropdown(String label, List<String> items, String value, ValueChanged<String?> onChanged) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            label.toUpperCase(),
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
          DropdownButtonFormField<String>(
            decoration: InputDecoration(
              
              border: OutlineInputBorder(borderRadius: BorderRadius.circular(0)),
            ),
            value: value,
            items: items.map((e) => DropdownMenuItem(value: e, child: Text(e))).toList(),
            onChanged: onChanged,
          ),
        ],
      ),
    );
  }

  Widget _buildTextField(String label, String value) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            label.toUpperCase(),
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
          TextFormField(
            initialValue: value,
            decoration: InputDecoration(
              
              border: OutlineInputBorder(borderRadius: BorderRadius.circular(0)),
            ),
            readOnly: true,
          ),
        ],
      ),
    );
  }

  Widget _buildRatingsAndReviews() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text('RATINGS & REVIEWS', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
        const Row(
          children: [
            Icon(Icons.star, color: Colors.amber, size: 20),
            Icon(Icons.star, color: Colors.amber, size: 20),
            Icon(Icons.star, color: Colors.amber, size: 20),
            Icon(Icons.star, color: Colors.amber, size: 20),
            Icon(Icons.star_half, color: Colors.amber, size: 20),
            SizedBox(width: 8),
            Text('24541 Orders'),
          ],
        ),
          const SizedBox(height: 12),
        _buildRatingBar(5, 2823),
        _buildRatingBar(4, 38),
        _buildRatingBar(3, 4),
        _buildRatingBar(2, 0),
        _buildRatingBar(1, 0),
        const SizedBox(height: 20),
        _buildReviewItem(
          image: 'assets/images/user1.png',
          name: 'Darrell Steward',
          date: 'July 2, 2020 03:29 PM',
          stars: 4.5,
          content: 'Booked For My Sister’s Wedding – The Team Arrived On Time And The Music Was Divine. It Really Gave That Traditional Tamil Touch We Wanted. Highly Recommended!',
          likes: 128,
        ),
        _buildReviewItem(
          image: 'assets/images/user2.png',
          name: 'Darlene Robertson',
          date: 'July 2, 2020 1:04 PM',
          stars: 5,
          content: 'The Sannai Melam Gave A Grand Welcome During Our Temple Function. Very Professional And Well-Coordinated Group. Guests Were Impressed!',
          likes: 82,
        ),
        _buildReviewItem(
          image: 'assets/images/user3.png',
          name: 'Kathryn Murphy',
          date: 'June 26, 2020 10:03 PM',
          stars: 5,
          content: 'Good Experience Overall. Slight Delay In Arrival But The Performance Made Up For It. Booking Was Simple And Smooth',
          likes: 9,
        ),
      ],
    );
  }
    Widget _buildRatingBar(int star, int count) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 2),
      child: Row(
        children: [
          Text('$star.0', style: const TextStyle(fontSize: 12)),
          const SizedBox(width: 4),
          Expanded(
            child: LinearProgressIndicator(
              value: count / 2823,
              backgroundColor: Colors.grey.shade300,
              valueColor: AlwaysStoppedAnimation<Color>(Colors.orange),
            ),
          ),
          const SizedBox(width: 8),
          Text('$count'),
        ],
      ),
    );
  }

  Widget _buildReviewItem({
    required String image,
    required String name,
    required String date,
    required double stars,
    required String content,
    required int likes,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: List.generate(5, (index) {
            return Icon(
              index < stars.floor()
                  ? Icons.star
                  : (index < stars ? Icons.star_half : Icons.star_border),
              size: 18,
              color: Colors.amber,
            );
          }),
        ),
        const SizedBox(height: 10),
        Text(content),
        const SizedBox(height: 8),
        Text(date, style: TextStyle(color: Colors.grey.shade600, fontSize: 12)),
        const SizedBox(height: 10),
        Row(
          children: [
            CircleAvatar(radius: 18, backgroundImage: AssetImage(image)),
            const SizedBox(width: 8),
            Text(name, style: const TextStyle(fontWeight: FontWeight.bold)),
            const Spacer(),
            Row(
              children: [
                Icon(Icons.thumb_up_alt_outlined),
                const SizedBox(width: 4),
                Text('$likes'),
                const SizedBox(width: 16),
                const Icon(Icons.thumb_down_alt_outlined),
              ],
            )
          ],
        ),
        const SizedBox(height: 20),
        const Divider(height: 1, thickness: 1, color: Colors.black12),
        const SizedBox(height: 20),
      ],
    );
  }
}
//  Widget _buildRatingsAndReviews() {
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         const Text('RATINGS & REVIEWS', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
//         const SizedBox(height: 12),
//         const Row(
//           children: [
//             Icon(Icons.star, color: Colors.amber, size: 20),
//             Icon(Icons.star, color: Colors.amber, size: 20),
//             Icon(Icons.star, color: Colors.amber, size: 20),
//             Icon(Icons.star, color: Colors.amber, size: 20),
//             Icon(Icons.star_half, color: Colors.amber, size: 20),
//             SizedBox(width: 8),
//             Text('24541 Orders'),
//           ],
//         ),
//         const SizedBox(height: 12),
//         _buildRatingBar(5, 2823),
//         _buildRatingBar(4, 38),
//         _buildRatingBar(3, 4),
//         _buildRatingBar(2, 0),
//         _buildRatingBar(1, 0),
//         const SizedBox(height: 20),
//         _buildReview('Darrell Steward', 'Booked For My Sister’s Wedding – The Team Arrived On Time And The Music Was Divine. It Really Gave That Traditional Tamil Touch We Wanted. Highly Recommended!', 128),
//         _buildReview('Darlene Robertson', 'The Sannai Melam Gave A Grand Welcome During Our Temple Function. Very Professional And Well-Coordinated Group. Guests Were Impressed!', 92),
//         _buildReview('Kathryn Murphy', 'Good Experience Overall. Slight Delay In Arrival. But The Performance Made Up For It. Booking Was Simple And Smooth', 9),
//       ],
//     );
//   }

//   Widget _buildRatingBar(int star, int count) {
//     return Padding(
//       padding: const EdgeInsets.symmetric(vertical: 2),
//       child: Row(
//         children: [
//           Text('$star.0', style: const TextStyle(fontSize: 12)),
//           const SizedBox(width: 4),
//           Expanded(
//             child: LinearProgressIndicator(
//               value: count / 2823,
//               backgroundColor: Colors.grey.shade300,
//               valueColor: AlwaysStoppedAnimation<Color>(Colors.orange),
//             ),
//           ),
//           const SizedBox(width: 8),
//           Text('$count'),
//         ],
//       ),
//     );
//   }

//   Widget _buildReview(String name, String review, int likes) {
//     return Padding(
//       padding: const EdgeInsets.symmetric(vertical: 10),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Text(review),
//           const SizedBox(height: 4),
//           Row(
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             children: [
//               Text('- $name'),
//               Row(
//                 children: [
//                   Icon(Icons.thumb_up_alt_outlined, size: 16),
//                   const SizedBox(width: 4),
//                   Text('$likes'),
//                 ],
//               )
//             ],
//           ),
//         ],
//       ),
//     );
//   }