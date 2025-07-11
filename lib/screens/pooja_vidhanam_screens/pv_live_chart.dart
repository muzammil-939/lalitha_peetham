import 'package:flutter/material.dart';
import 'package:lalitha_peetham/screens/pooja_vidhanam_screens/pv_layout.dart';

class PvLiveChart extends StatefulWidget {
  const PvLiveChart({super.key});

  @override
  State<PvLiveChart> createState() => _PvLiveChartState();
}

class _PvLiveChartState extends State<PvLiveChart> {
  @override
  Widget build(BuildContext context) {
    return PvLayout(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 100.0,vertical: 50),
        child: SingleChildScrollView(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 50,),
              // Left Side (Video, Notes, Downloads)
              Expanded(
                flex: 3,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Video section
                    ClipRRect(
                      borderRadius: BorderRadius.circular(12),
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          Image.asset(
                            'assets/images/pv_live_chart.png', // Replace with your image asset
                            fit: BoxFit.cover,
                            width: 500,
                          ),
                          Container(
                            width: 48,
                            height: 48,
                            decoration: BoxDecoration(
                              color: Colors.black.withOpacity(0.6),
                              shape: BoxShape.circle,
                            ),
                            child: const Icon(Icons.play_arrow, color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 32),
                    // Class Notes
                    const Text("Class Notes", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                    const SizedBox(height: 8),
                    const Text(
                      "This class covers the basics of Pooja Vidhanam, including the significance of each step, the mantras to be chanted, and the materials required. We will also discuss common variations and regional differences in Pooja practices.",
                      style: TextStyle(height: 1.6),
                    ),
                    const SizedBox(height: 24),
                    // Downloads
                    const Text("Downloads", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                    const SizedBox(height: 12),
                    _buildDownloadTile("Pooja Vidhanam Guide.pdf"),
                    const SizedBox(height: 8),
                    _buildDownloadTile("Mantras Cheat Sheet.pdf"),
                  ],
                ),
              ),
              const SizedBox(width: 40),
              // Right Side (Live Chat)
              Expanded(
                flex: 2,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text("Live Chat", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                    const SizedBox(height: 16),
                    _buildChatBubble("Anjali Sharma", "Namaste! Excited for today’s class.", "assets/images/pv_live_chart2.png"),
                    const SizedBox(height: 12),
                    _buildChatBubble("Rohan Verma", "Hello everyone! Looking forward to learning more about Pooja Vidhanam.", "assets/images/pv_live_chart3.png"),
                    const SizedBox(height: 24),
                    
                    // Message input
                    Row(
                      children: [
                        Expanded(
                          child: Container(
                            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                            decoration: BoxDecoration(
                              color: const Color(0xFFD4BB26),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: const Text("Welcome,", style: TextStyle(color: Colors.white)),
                          ),
                        ),
                        const SizedBox(width: 8),
                        const CircleAvatar(
                          backgroundImage: AssetImage("assets/images/pv_live_chart4.png"),
                          radius: 18,
                        ),
                      ],
                    ),
                    const SizedBox(height: 12),
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      decoration: BoxDecoration(
                        color: const Color(0xFFE8EDF2),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: const TextField(
                        decoration: InputDecoration(
                          hintText: 'Ask a question...',
                          border: InputBorder.none,
                          suffixIcon: Icon(Icons.image, color: Colors.grey),
                        ),
                      ),
                    ),
                    const SizedBox(height: 12),
                    Center(
                      child: Container(
                        width: double.infinity,
                        padding: const EdgeInsets.symmetric(vertical: 12),
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color: const Color(0xFFE8EDF2),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: const Text(
                          "Join Later",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                    )
                  ],
                  
                ),
              ),
              SizedBox(height: 150,)
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildDownloadTile(String title) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 12),
      decoration: BoxDecoration(
        color: const Color(0xFFF2F7FC),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        children: [
          const Icon(Icons.insert_drive_file_outlined, color: Colors.black),
          const SizedBox(width: 10),
          Text(title, style: const TextStyle(fontSize: 14)),
        ],
      ),
    );
  }

  Widget _buildChatBubble(String name, String message, String avatarPath) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CircleAvatar(
          backgroundImage: AssetImage(avatarPath),
          radius: 18,
        ),
        const SizedBox(width: 8),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(name, style: const TextStyle(fontSize: 12, color: Colors.blue)),
              const SizedBox(height: 4),
              Container(
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: const Color(0xFFFAF0E5),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Text(message),
              )
            ],
          ),
        )
      ],
    );
  }
}
