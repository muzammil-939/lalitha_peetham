import 'package:flutter/material.dart';
import 'package:lalitha_peetham/screens/online_muhurthas/online_muhurthas_layout.dart';
import 'package:lalitha_peetham/widgets/reusable_responsive_type_widget.dart';
import 'online_muhurthas_more_wid.dart';

class OnlineMuhurthasCallRequest extends StatelessWidget {
  const OnlineMuhurthasCallRequest({super.key});

  @override
  Widget build(BuildContext context) {
    final isMobile = ResponsiveHelper.isMobile(context);
    final isTablet = ResponsiveHelper.isTablet(context);
    final isDesktop = ResponsiveHelper.isDesktop(context);

    double horizontalPadding = isMobile
        ? 16
        : isTablet
            ? 40
            : 150;

    double? containerHeight = isMobile
        ? null
        : 650;

    return OnlineMuhurthasLayout(
      child: SingleChildScrollView(
        child: Column(
          children: [
            OnlineMuhurthasMoreWid(activeTab: "Call Request"),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: horizontalPadding, vertical: 30),
              child: Container(
                width: double.infinity,
                height: containerHeight,
                color: Colors.white,
                child: isMobile
                    ? _buildMobileLayout(context)
                    : _buildDesktopTabletLayout(context, isTablet),
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// 🔹 MOBILE VIEW LAYOUT
  Widget _buildMobileLayout(BuildContext context) {
    return Column(
      children: [
        _videoSection(isMobile: true),
        SizedBox(height: 20),
        _consultationDetailsSection(context,isTablet: false),
      ],
    );
  }

  /// 🔹 TABLET & DESKTOP VIEW LAYOUT
  Widget _buildDesktopTabletLayout(BuildContext context, bool isTablet) {
    return Row(
      children: [
        // Left side: Video section
        Expanded(flex: 2, child: _videoSection(isMobile: false)),

        // Right side: Consultation details
        Expanded(flex: 1, child: _consultationDetailsSection(context,isTablet: true)),
      ],
    );
  }

  /// 🎥 VIDEO SECTION
  Widget _videoSection({required bool isMobile}) {
    return Padding(
      padding: const EdgeInsets.all(24.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Video Consultation',
            style: TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
          SizedBox(height: 32),
          AspectRatio(
            aspectRatio: isMobile ? 3 / 4 : 4 / 3,
            child: Container(
              decoration: BoxDecoration(
                color: Color(0xFFF5F5F5),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Stack(
                children: [
                  Center(
                    child: Container(
                      width: 200,
                      height: 400,
                      decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(16),
                          ),
                          child: Column(
                            children: [
                              // Status bar
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 12,
                                  vertical: 8,
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      children: List.generate(4, (_) {
                                        return Padding(
                                          padding: const EdgeInsets.only(right: 2.0),
                                          child: Container(
                                            width: 4,
                                            height: 4,
                                            decoration: BoxDecoration(
                                              color: Colors.black,
                                              shape: BoxShape.circle,
                                            ),
                                          ),
                                        );
                                      }),
                                    ),
                                    Row(
                                      children: [
                                        Icon(Icons.signal_cellular_4_bar, size: 12, color: Colors.black),
                                        SizedBox(width: 2),
                                        Icon(Icons.wifi, size: 12, color: Colors.black),
                                        SizedBox(width: 2),
                                        Icon(Icons.battery_full, size: 12, color: Colors.black),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                              // Video content
                              Expanded(
                                child: Container(
                                  margin: EdgeInsets.all(8),
                                  decoration: BoxDecoration(
                                    color: Color(0xFFE8E8E8),
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  child: Stack(
                                    children: [
                                      Center(
                                        child: Column(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          children: [
                                            Container(
                                              width: 80,
                                              height: 80,
                                              decoration: BoxDecoration(
                                                color: Colors.brown[200],
                                                shape: BoxShape.circle,
                                              ),
                                              child: Icon(Icons.person, size: 40, color: Colors.brown[600]),
                                            ),
                                            SizedBox(height: 8),
                                            Container(
                                              width: 60,
                                              height: 40,
                                              decoration: BoxDecoration(
                                                color: Colors.grey[300],
                                                borderRadius: BorderRadius.circular(8),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Center(
                                        child: Container(
                                          width: 60,
                                          height: 60,
                                          decoration: BoxDecoration(
                                            color: Colors.black.withOpacity(0.7),
                                            shape: BoxShape.circle,
                                          ),
                                          child: Icon(Icons.play_arrow, color: Colors.white, size: 30),
                                        ),
                                      ),
                                      Positioned(
                                        bottom: 20,
                                        left: 0,
                                        right: 0,
                                        child: Center(
                                          child: Container(
                                            width: 50,
                                            height: 50,
                                            decoration: BoxDecoration(
                                              color: Colors.green,
                                              shape: BoxShape.circle,
                                            ),
                                            child: Icon(Icons.call, color: Colors.white, size: 24),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 24),
          // Bottom Controls
          Wrap(
            spacing: 16,
            runSpacing: 12,
            children: [
              _controlButton('Mute'),
              _controlButton('Share Screen'),
              _controlButton('Unmute'),
              _controlButton('Chat'),
            ],
          ),
        ],
      ),
    );
  }

  Widget _controlButton(String label) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
      decoration: BoxDecoration(
        color: Color(0xFFF5E6A3),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Text(
        label,
        style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500, color: Colors.black87),
      ),
    );
  }

  /// 🧾 CONSULTATION DETAILS SECTION
  Widget _consultationDetailsSection(BuildContext context, {required bool isTablet}) {
  final double titleFontSize = isTablet ? 24 : 28;
  final double textFontSize = isTablet ? 13 : 14;
    return Container(
      color: Color(0xFFFAFAFA),
      padding: const EdgeInsets.all(24.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Consultation Details', style: TextStyle(fontSize: titleFontSize, fontWeight: FontWeight.bold)),
          SizedBox(height: 32),
          Row(
            children: [
              _labelValueColumn('Astrologer', ['Rohan', 'Sharma']),
              SizedBox(width: 60),
              _labelValueColumn('Topic', ['Career Guidance']),
            ],
          ),
          SizedBox(height: 32),
          Row(
            children: [
              _labelValueColumn('Duration', ['30', 'minutes']),
              SizedBox(width: 60),
              _labelValueColumn('Date', ['July 20, 2024']),
            ],
          ),
          SizedBox(height: 24),
          _labelValueColumn('Time', ['10:00 AM']),
          SizedBox(height: 40),
          Text('Timer', style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold)),
          SizedBox(height: 24),
          Row(
            children: ['00', '25', '30']
                .map((time) => Padding(
                      padding: const EdgeInsets.only(right: 12.0),
                      child: Container(
                        width: 60,
                        height: 60,
                        decoration: BoxDecoration(
                          color: Color(0xFFD4AF37),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Center(
                          child: Text(
                            time,
                            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ))
                .toList(),
          ),
          SizedBox(height: 12),
          Row(
            children: ['Hours', 'Minutes', 'Seconds']
                .map((label) => Padding(
                      padding: const EdgeInsets.only(right: 12.0),
                      child: SizedBox(
                        width: 60,
                        child: Center(
                          child: Text(label, style: TextStyle(fontSize: 12, color: Colors.black54)),
                        ),
                      ),
                    ))
                .toList(),
          ),
        ],
      ),
    );
  }

  Widget _labelValueColumn(String label, List<String> values) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(label, style: TextStyle(fontSize: 14, color: Colors.grey[600])),
        ...values.map((v) => Text(v, style: TextStyle(fontSize: 14, color: Colors.black87))),
      ],
    );
  }
}
