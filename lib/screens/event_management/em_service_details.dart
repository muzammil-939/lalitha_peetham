import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:lalitha_peetham/screens/event_management/em_layout.dart';

class EmServiceDetails extends StatefulWidget {
  const EmServiceDetails({super.key});

  @override
  State<EmServiceDetails> createState() => _EmServiceDetailsState();
}

class _EmServiceDetailsState extends State<EmServiceDetails> {
  String selectedImage = 'assets/images/em1.jpg';

  @override
  Widget build(BuildContext context) {
    return EmLayout(
      child: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 150, vertical: 40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildBreadcrumb(),
            const SizedBox(height: 30),
            _buildHeaderCard(),
            const SizedBox(height: 40),
            _buildMainRowSection(),
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
          borderRadius: BorderRadius.circular(30),
        ),
        child: const Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(Icons.home, size: 16, color: Colors.black),
            SizedBox(width: 6),
            Text(' / /  Event Management / /  Service Details',
                style: TextStyle(color: Colors.black, fontWeight: FontWeight.w500)),
          ],
        ),
      ),
    );
  }

  Widget _buildHeaderCard() {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        border: Border.all(color: const Color(0xFFE7DFA5)),
        color: const Color(0xFFF8F1CB),
      ),
      child: Row(
        children: [
          const CircleAvatar(
            radius: 40,
            backgroundImage: AssetImage('assets/images/em6.jpg'),
          ),
          const SizedBox(width: 20),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text('Srivani.K', style: TextStyle(fontWeight: FontWeight.bold)),
                Text('Category: Wedding Service Set'),
                Text('Rating: 4.5/5'),
                Text('Reviews: 120+'),
                Text('Location: Coimbatore'),
                Text('Exp: 8yrs'),
              ],
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: const [
              Text('Stage Flower Decoration'),
              Text('Wedding Garland Sets'),
              Text('Fresh & Artificial Options'),
            ],
          ),
          const SizedBox(width: 10),
          const Icon(Icons.more_vert),
        ],
      ),
    );
  }
  

  Widget _buildMainRowSection() {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // LEFT - Thumbnails
        Column(
          children: List.generate(3, (index) {
            return Padding(
              padding: const EdgeInsets.only(bottom: 8),
              child: Container(
                width: 60,
                height: 60,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black12),
                  image: DecorationImage(
                    image: AssetImage('assets/images/em${index + 1}.jpg'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            );
          }),
        ),

        const SizedBox(width: 16),

        // CENTER - Dropdown + images
        Expanded(
          flex: 5,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text('SERVICE', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
              DropdownButtonFormField<String>(
                value: 'Stage Flower Decoration',
                items: const [
                  DropdownMenuItem(
                    value: 'Stage Flower Decoration',
                    child: Text('Stage Flower Decoration'),
                  ),
                ],
                onChanged: (val) {},
                decoration: const InputDecoration(border: OutlineInputBorder()),
              ),
              const SizedBox(height: 16),

              // Main image
              Image.asset(selectedImage, height: 350, fit: BoxFit.cover),
              const SizedBox(height: 16),

              // Wide image
              Image.asset('assets/images/em1.jpg', height: 200, fit: BoxFit.cover),
              const SizedBox(height: 12),

              // Circular thumbnails
              Row(
                children: List.generate(4, (index) {
                  return Padding(
                    padding: const EdgeInsets.only(right: 10),
                    child: CircleAvatar(
                      radius: 30,
                      backgroundImage: AssetImage('assets/images/em${index + 1}.jpg'),
                    ),
                  );
                }),
              ),
            ],
          ),
        ),

        const SizedBox(width: 30),

        // RIGHT - What We Offer + Similar Services
        SizedBox(
          width: 320,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildWhatWeOfferSection(),
              const SizedBox(height: 40),
              _buildSimilarServicesRow(),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildWhatWeOfferSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text('• Complete Stage & Backdrop Decoration'),
        const Text('• Designer Mandap & Floral Setup'),
        const Text('• Entrance Archway Decoration'),
        const Text('• Guest Chair & Table Arrangement'),
        const Text('• Decorative Lighting & Drapes'),
        const Text('• Welcome Board & Props Setup'),
        const Text('• Setup + Next Day Dismantling Service'),
        const SizedBox(height: 10),
        const Text('WHAT WE OFFER', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
        const SizedBox(height: 10),
        const Text('• Complete Stage & Backdrop Decoration'),
        const Text('• Designer Mandap & Floral Setup'),
        const Text('• Entrance Archway Decoration'),
        const Text('• Guest Chair & Table Arrangement'),
        const Text('• Decorative Lighting & Drapes'),
        const Text('• Welcome Board & Props Setup'),
        const Text('• Setup + Next Day Dismantling Service'),
        const SizedBox(height: 20),
        SizedBox(
          height: 50,
          width: 180,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(backgroundColor: const Color(0xFFD4BB26),
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(0))),
            onPressed: () {
              context.go('/em_booking_summary');
            },
            child: const Text('Confirm', style: TextStyle(color: Colors.white)),
          ),
        ),
      ],
    );
  }

  Widget _buildSimilarServicesRow() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text('SIMILAR SERVICES', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
        const SizedBox(height: 16),
        SizedBox(
          height: 320,
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            itemCount: 5,
            separatorBuilder: (context, index) => const SizedBox(width: 16),
            itemBuilder: (context, index) {
              return _buildSimilarServiceCard();
            },
          ),
        ),
      ],
    );
  }

  Widget _buildSimilarServiceCard() {
    return Container(
      width: 200,
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black12),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const CircleAvatar(
            radius: 30,
            backgroundImage: AssetImage('assets/images/user2.png'),
          ),
          const SizedBox(height: 10),
          const Text('Saravanan.K', style: TextStyle(fontWeight: FontWeight.bold)),
          const Text('Category: Wedding Service Set'),
          const Text('Stage Flower Decoration'),
          const Text('Fresh & Artificial Options'),
          const Text('Rating: 4.5/5'),
          const Text('Reviews: 120+'),
          const Text('Location: Coimbatore'),
          const Text('Exp: 8yrs'),
          const SizedBox(height: 10),
          SizedBox(
            width: 100,
            height: 35,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFFD4BB26),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(0))
              ),
              onPressed: () {},
              child: const Text('VISIT',style: TextStyle(color: Colors.white)),
            ),
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
          content: 'Booked For My Sister’s Wedding – The Team Arrived On Time And The Music Was Divine...',
          likes: 128,
        ),
        _buildReviewItem(
          image: 'assets/images/user2.png',
          name: 'Darlene Robertson',
          date: 'July 2, 2020 1:04 PM',
          stars: 5,
          content: 'The Sannai Melam Gave A Grand Welcome During Our Temple Function...',
          likes: 82,
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
              valueColor: const AlwaysStoppedAnimation<Color>(Colors.orange),
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
                const Icon(Icons.thumb_up_alt_outlined),
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
