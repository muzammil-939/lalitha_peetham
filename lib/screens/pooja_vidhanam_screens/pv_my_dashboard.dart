import 'package:flutter/material.dart';
import 'package:lalitha_peetham/screens/pooja_vidhanam_screens/pv_layout.dart';

class PvMyDashboard extends StatefulWidget {
  const PvMyDashboard({super.key});

  @override
  State<PvMyDashboard> createState() => _PvMyDashboardState();
}

class _PvMyDashboardState extends State<PvMyDashboard> {

  @override
  Widget build(BuildContext context) {
    return PvLayout(
      child: DefaultTabController(
        length: 6,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 50,),
            // Dashboard Title
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 100.0),
              child: Text(
                'My Dashboard',
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: Colors.black87,
                ),
              ),
            ),
            SizedBox(height: 30,),
            // Tab Bar
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 30.0),
              child: TabBar(
                isScrollable: true,
                indicatorColor: const Color(0xFFE5E8EB),
                indicatorWeight: 2.0,
                labelColor:  Colors.black,
                unselectedLabelColor: Colors.grey[600],
                labelStyle: const TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 14,
                ),
                unselectedLabelStyle: const TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 14,
                ),
                tabs: const [
                  Tab(text: 'My Courses'),
                  Tab(text: 'Upcoming Classes'),
                  Tab(text: 'Watch Recordings'),
                  Tab(text: 'Downloads'),
                  Tab(text: 'Ask a Guru'),
                  Tab(text: 'Certificates'),
                ],
              ),
            ),
            
            // Tab Bar View
            SizedBox(
              height: 500,
              child: TabBarView(
                children: [
                  // My Courses Tab
                  _buildMyCoursesTab(),
                  
                  // Upcoming Classes Tab
                  _buildUpcomingClassesTab(),
                  
                  // Watch Recordings Tab
                  _buildWatchRecordingsTab(),
                  
                  // Downloads Tab
                  _buildDownloadsTab(),
                  
                  // Ask a Guru Tab
                  _buildAskGuruTab(),
                  
                  // Certificates Tab
                  _buildCertificatesTab(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

Widget _buildMyCoursesTab() {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 100.0),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 30),
        const Text(
          'My Courses',
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
            color: Colors.black87,
          ),
        ),
        const SizedBox(height: 50),
        Center(
          child: Column(
            children: [
              // Larger box image
              Image.asset(
                'assets/images/pv_contact1.png',
                width: 360,
                height: 200,
                fit: BoxFit.cover,
              ),
              const SizedBox(height: 30),
              const Text(
                'No courses yet',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black87,
                ),
              ),
              const SizedBox(height: 10),
              const Text(
                'Explore our courses and start learning today.',
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.black54,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 30),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFFEBEDF2),
                  foregroundColor: Colors.black,
                  padding: const EdgeInsets.symmetric(horizontal: 34, vertical: 16),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                onPressed: () {
                  // Handle navigation to course list
                },
                child: const Text(
                  'Explore Courses',
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 16,
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


  Widget _buildUpcomingClassesTab() {
    return const Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.calendar_today_outlined,
            size: 80,
            color: Colors.grey,
          ),
          SizedBox(height: 16),
          Text(
            'No upcoming classes',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Colors.black87,
            ),
          ),
          SizedBox(height: 8),
          Text(
            'Check back later for scheduled classes.',
            style: TextStyle(
              fontSize: 14,
              color: Colors.black54,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildWatchRecordingsTab() {
    return const Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.play_circle_outline,
            size: 80,
            color: Colors.grey,
          ),
          SizedBox(height: 16),
          Text(
            'No recordings available',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Colors.black87,
            ),
          ),
          SizedBox(height: 8),
          Text(
            'Recordings will appear here after classes.',
            style: TextStyle(
              fontSize: 14,
              color: Colors.black54,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildDownloadsTab() {
    return const Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.download_outlined,
            size: 80,
            color: Colors.grey,
          ),
          SizedBox(height: 16),
          Text(
            'No downloads yet',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Colors.black87,
            ),
          ),
          SizedBox(height: 8),
          Text(
            'Your downloaded content will appear here.',
            style: TextStyle(
              fontSize: 14,
              color: Colors.black54,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildAskGuruTab() {
    return const Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.question_answer_outlined,
            size: 80,
            color: Colors.grey,
          ),
          SizedBox(height: 16),
          Text(
            'Ask a Guru',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Colors.black87,
            ),
          ),
          SizedBox(height: 8),
          Text(
            'Get guidance from our spiritual teachers.',
            style: TextStyle(
              fontSize: 14,
              color: Colors.black54,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildCertificatesTab() {
    return const Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.card_membership_outlined,
            size: 80,
            color: Colors.grey,
          ),
          SizedBox(height: 16),
          Text(
            'No certificates yet',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Colors.black87,
            ),
          ),
          SizedBox(height: 8),
          Text(
            'Complete courses to earn certificates.',
            style: TextStyle(
              fontSize: 14,
              color: Colors.black54,
            ),
          ),
        ],
      ),
    );
  }
}