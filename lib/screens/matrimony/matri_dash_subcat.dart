import 'package:flutter/material.dart';

class MatriDashSubcat extends StatelessWidget {
  const MatriDashSubcat({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Column(
      children: [
        // INVITATIONS Section
        _buildSection(
          'INVITATIONS',
          Row(
            children: List.generate(
              3,
              (index) => Padding(
                padding: EdgeInsets.only(right: index < 2 ? 20 : 0),
                child: _buildInvitationCard(),
              ),
            ),
          ),
        ),
        // PREMIUM MATCHES Section
        _buildSection(
          'PREMIUM MATCHES',
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: List.generate(
                4,
                (index) => Padding(
                  padding: EdgeInsets.only(right: index < 3 ? 20 : 0),
                  child: _buildPremiumCard(),
                ),
              ),
            ),
          ),
        ),
        // RECENT VISITORS and NEW MATCHES FOR YOU sections
        const SizedBox(height: 40),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // RECENT VISITORS Section
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        'RECENT VISITORS',
                        style: const TextStyle(
                          fontSize: 30,
                          color: Color(0xffD4BB26),
                          fontWeight: FontWeight.bold,
                          letterSpacing: 1,
                        ),
                      ),
                      const SizedBox(width: 8),
                      Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 8,
                          vertical: 2,
                        ),
                        decoration: BoxDecoration(
                          color: Color(0xffD4BB26),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Text(
                          '5',
                          style: const TextStyle(
                            fontSize: 12,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  _buildRecentVisitorsSection(),
                ],
              ),
            ),
            const SizedBox(width: 20),
            // NEW MATCHES FOR YOU Section
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        'NEW MATCHES FOR YOU',
                        style: const TextStyle(
                          fontSize: 30,
                          color: Color(0xffD4BB26),
                          fontWeight: FontWeight.bold,
                          letterSpacing: 1,
                        ),
                      ),
                      const SizedBox(width: 8),
                      Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 8,
                          vertical: 2,
                        ),
                        color: Color(0xffD4BB26),

                        child: Text(
                          '5',
                          style: const TextStyle(
                            fontSize: 12,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  _buildNewMatchesSection(),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }

  Widget _buildSection(String title, Widget content) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 40),
        _buildSectionTitle(title),
        const SizedBox(height: 20),
        content,
      ],
    );
  }

  Widget _buildRecentVisitorsSection() {
    return Container(
      color: Color(0xffEFE7C0),

      padding: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ...List.generate(
            4,
            (index) => Column(
              children: [
                _buildVisitorCard(),
                if (index < 3) // Add divider line except for last item
                  Container(
                    height: 1,
                    color: Color(0xffD4BB26),
                    margin: const EdgeInsets.symmetric(vertical: 8),
                  ),
              ],
            ),
          ),
          const SizedBox(height: 15),
          Center(
            child: ElevatedButton(
              onPressed: () => print('View All Recent Visitors pressed'),
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xffD4BB26),
                foregroundColor: Colors.white,
                padding: EdgeInsets.symmetric(horizontal: 60, vertical: 24),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(0),
                ),
                elevation: 0,
              ),
              child: Text(
                'VIEW ALL',
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                  letterSpacing: 0.5,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildNewMatchesSection() {
    return Container(
      color: Color(0xffEFE7C0),
      padding: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ...List.generate(
            4,
            (index) => Column(
              children: [
                _buildNewMatchCard(),
                if (index < 3) // Add divider line except for last item
                  Container(
                    height: 1,
                    color: Color(0xffD4BB26),
                    margin: const EdgeInsets.symmetric(vertical: 8),
                  ),
              ],
            ),
          ),
          const SizedBox(height: 15),
          Center(
            child: ElevatedButton(
              onPressed: () => print('View All New Matches pressed'),
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xffD4BB26),
                foregroundColor: Colors.white,
                padding: EdgeInsets.symmetric(horizontal: 60, vertical: 24),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(0),
                ),
                elevation: 0,
              ),
              child: Text(
                'VIEW ALL',
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                  letterSpacing: 0.5,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildVisitorCard() {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 15),
      child: Row(
        children: [
          CircleAvatar(
            radius: 25,
            backgroundImage: NetworkImage(
              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT5M575luUI1KzsdsAkJeGz9tZlTyy0jz_zAw&s',
            ),
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Yuvarajan L',
                  style: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    color: Colors.black,
                  ),
                ),
                const SizedBox(height: 2),
                Text(
                  "28 Yrs, 5'7\", Tamil",
                  style: const TextStyle(
                    fontSize: 12,
                    color: Color(0xFF666666),
                  ),
                ),
                const SizedBox(height: 2),
                Text(
                  'Chennai',
                  style: const TextStyle(
                    fontSize: 12,
                    color: Color(0xFF666666),
                  ),
                ),
                const SizedBox(height: 2),
                Text(
                  'Manager',
                  style: const TextStyle(
                    fontSize: 12,
                    color: Color(0xFF666666),
                  ),
                ),
              ],
            ),
          ),
          Column(
            children: [
              Container(
                width: 30,
                height: 30,
                decoration: BoxDecoration(
                  color: Color(0xffD4BB26),
                  shape: BoxShape.circle,
                ),
                child: Icon(Icons.check, color: Colors.white, size: 18),
              ),
              const SizedBox(height: 8),
              Text(
                'Connect Now',
                style: TextStyle(
                  fontSize: 10,
                  color: Colors.grey,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildNewMatchCard() {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 15),
      child: Row(
        children: [
          CircleAvatar(
            radius: 25,
            backgroundImage: NetworkImage(
              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT5M575luUI1KzsdsAkJeGz9tZlTyy0jz_zAw&s',
            ),
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Yuvarajan L',
                  style: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    color: Colors.black,
                  ),
                ),
                const SizedBox(height: 2),
                Text(
                  "28 Yrs, 5'7\", Tamil",
                  style: const TextStyle(
                    fontSize: 12,
                    color: Color(0xFF666666),
                  ),
                ),
                const SizedBox(height: 2),
                Text(
                  'Chennai',
                  style: const TextStyle(
                    fontSize: 12,
                    color: Color(0xFF666666),
                  ),
                ),
                const SizedBox(height: 2),
                Text(
                  'Manager',
                  style: const TextStyle(
                    fontSize: 12,
                    color: Color(0xFF666666),
                  ),
                ),
              ],
            ),
          ),
          Column(
            children: [
              Container(
                width: 30,
                height: 30,
                decoration: BoxDecoration(
                  color: Color(0xffD4BB26),
                  shape: BoxShape.circle,
                ),
                child: Icon(Icons.check, color: Colors.white, size: 18),
              ),
              const SizedBox(height: 8),
              Text(
                'Connect Now',
                style: TextStyle(
                  fontSize: 10,
                  color: Colors.grey,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildProfileCard({required Widget actionWidget}) {
    return Container(
      height: 500,
      width: 350,
      color: Color(0xffEFE7C0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          SizedBox(
            width: 150,
            height: 150,
            child: CircleAvatar(
              radius: 30,
              backgroundImage: NetworkImage(
                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT5M575luUI1KzsdsAkJeGz9tZlTyy0jz_zAw&s',
              ),
            ),
          ),
          Column(
            children: [
              Text(
                'yuvarajan l',
                style: const TextStyle(
                  fontSize: 16,
                  color: Color(0xFF000000),
                  height: 1.2,
                  letterSpacing: 2,
                ),
              ),
              SizedBox(height: 4),
              Text(
                "28 yrs, 5'7\", tamil",
                style: const TextStyle(
                  fontSize: 16,
                  color: Color(0xFF666666),
                  height: 1.2,
                  letterSpacing: 2,
                ),
              ),
              SizedBox(height: 2),
              Text(
                'upgrade',
                style: const TextStyle(
                  fontSize: 16,
                  color: Color(0xFFCC901C),
                  height: 1.2,
                  letterSpacing: 2,
                ),
              ),
            ],
          ),
          actionWidget,
        ],
      ),
    );
  }

  Widget _buildInvitationCard() {
    return _buildProfileCard(
      actionWidget: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          _buildCircleButton(
            icon: Icons.close,
            color: Colors.grey.shade600,
            borderColor: Colors.grey.withOpacity(0.6),
            onPressed: () => print('X button pressed'),
          ),
          _buildCircleButton(
            icon: Icons.check,
            color: Colors.orange,
            borderColor: Colors.orange,
            onPressed: () => print('Check button pressed'),
          ),
        ],
      ),
    );
  }

  Widget _buildPremiumCard() {
    return _buildProfileCard(
      actionWidget: ElevatedButton(
        onPressed: () => print('Connect Now pressed'),
        style: ElevatedButton.styleFrom(
          backgroundColor: Color(0xFFD4BB26),
          foregroundColor: Colors.white,
          padding: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(25),
          ),
          elevation: 2,
          shadowColor: Colors.black26,
        ),
        child: Text(
          'CONNECT NOW',
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w600,
            letterSpacing: 0.5,
          ),
        ),
      ),
    );
  }

  Widget _buildCircleButton({
    required IconData icon,
    required Color color,
    required Color borderColor,
    required VoidCallback onPressed,
  }) {
    return Container(
      width: 60,
      height: 60,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(color: borderColor, width: 3),
        color: Colors.transparent,
      ),
      child: IconButton(
        onPressed: onPressed,
        icon: Icon(icon, color: color, size: 30),
        splashRadius: 30,
      ),
    );
  }

  Widget _buildSectionTitle(String title) {
    return Text(
      title,
      style: const TextStyle(
        fontSize: 40,
        letterSpacing: 2,
        color: Color(0xffD4BB26),
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
