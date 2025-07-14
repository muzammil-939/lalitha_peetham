import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:go_router/go_router.dart';

class RsDashboard extends StatefulWidget {
  const RsDashboard({super.key});

  @override
  State<RsDashboard> createState() => _RsDashboardState();
}

class _RsDashboardState extends State<RsDashboard> {
  int _selectedIndex = 0;

  void _onNavItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
    debugPrint("Navigated to index \$index");
    
    // TODO: Implement individual navigation logic per index
  }
   @override
  void initState() {
    super.initState();
    _selectedIndex = 0; // default to Dashboard
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          _buildTopHeader(),
          Expanded(
            child: Row(
              children: [
                _buildSidebar(),
                Expanded(
                  child: SingleChildScrollView(
                    padding: const EdgeInsets.all(24.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        _buildHeader(),
                        const SizedBox(height: 20),
                        _buildStatCards(),
                        const SizedBox(height: 30),
                        _buildRecentActivity(),
                        const SizedBox(height: 30),
                        _buildPerformanceOverview(),
                        const SizedBox(height: 30),
                        _buildUpcomingBookings(),
                      ],
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget _buildTopHeader() {
    return Container(
      height: 80,
      color: const Color(0xFFD4BB26),
      padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 12.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.white,
              foregroundColor: Colors.black,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
            ),
            child: const Text("REAL ESTATE", style: TextStyle(fontWeight: FontWeight.bold)),
          ),
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.white,
              foregroundColor: Colors.black,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
            ),
            child: const Text("PROPERTY VENDOR", style: TextStyle(fontWeight: FontWeight.bold)),
          ),
        ],
      ),
    );
  }

  Widget _buildSidebar() {
    final List<Map<String, dynamic>> navItems = [
      {"icon": Icons.dashboard, "label": "Dashboard"},
      {"icon": Icons.house, "label": "Properties"},
      {"icon": Icons.mail, "label": "Enquiries"},
      {"icon": Icons.calendar_today, "label": "Bookings"},
      {"icon": Icons.message, "label": "Messages"},
      {"icon": Icons.person, "label": "Profile"},
      {"icon": Icons.payment, "label": "Payments"},
      {"icon": Icons.reviews, "label": "Reviews"},
      {"icon": Icons.bar_chart, "label": "Reports"},
    ];

    return SizedBox(
      width: 220,
      child: Column(
        children: [
          const SizedBox(height: 40),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Row(
              children: const [
                CircleAvatar(
                  radius: 20,
                  backgroundImage: AssetImage('assets/images/rs1.png'),
                ),
                SizedBox(width: 10),
                Expanded(
                  child: Text("Vendor Platform", style: TextStyle(fontWeight: FontWeight.bold)),
                ),
              ],
            ),
          ),
          const SizedBox(height: 20),
          Expanded(
            child: ListView.builder(
              padding: EdgeInsets.zero,
              itemCount: navItems.length,
              itemBuilder: (context, index) {
                return _buildNavItem(
                  navItems[index]["icon"],
                  navItems[index]["label"],
                  index == _selectedIndex,
                  () => _onNavItemTapped(index),
                );
              },
            ),
          ),
          IconButton(icon: const Icon(Icons.help_outline), onPressed: () {}),
          const SizedBox(height: 20),
        ],
      ),
    );
  }

  Widget _buildNavItem(IconData icon, String label, bool selected, VoidCallback onTap) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 6, horizontal: 16),
      decoration: BoxDecoration(
        color: selected ? const Color(0xFFC1B11F) : Colors.transparent,
        borderRadius: BorderRadius.circular(8),
      ),
      child: ListTile(
        leading: Icon(icon, color: Colors.black),
        title: Text(label, style: const TextStyle(color: Colors.black)),
        onTap: onTap,
      ),
    );
  }

  Widget _buildHeader() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Text("Dashboard", style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
        ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(backgroundColor: const Color(0xFFC1B11F)),
          child: const Text("Add New Property",style: TextStyle(color: Colors.black),),
        ),
      ],
    );
  }

  Widget _buildStatCards() {
    final List<Map<String, String>> stats = [
      {"title": "Total Properties Listed", "value": "120"},
      {"title": "Active Listings", "value": "95"},
      {"title": "Pending Listings", "value": "25"},
      {"title": "Total Enquiries", "value": "350"},
      {"title": "Revenue Earned", "value": "\$150,000"},
    ];

    return Row(
      children: stats.map((stat) {
        return Expanded(
          child: Container(
            margin: const EdgeInsets.only(right: 12),
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey.shade300),
              borderRadius: BorderRadius.circular(12),
            ),
            child: Column(
              children: [
                Text(stat["title"]!, style: const TextStyle(fontSize: 14)),
                const SizedBox(height: 8),
                Text(stat["value"]!, style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              ],
            ),
          ),
        );
      }).toList(),
    );
  }



  Widget _buildRecentActivity() {
    final data = [
      {"property": "Modern Apartment in Downtown", "status": "Active", "enquiries": 15, "bookings": 5, "date": "2023-11-15"},
      {"property": "Cozy House in Suburbia", "status": "Pending", "enquiries": 8, "bookings": 2, "date": "2023-11-12"},
      {"property": "Luxury Villa by the Sea", "status": "Active", "enquiries": 22, "bookings": 10, "date": "2023-11-10"},
      {"property": "Rustic Cabin in the Mountains", "status": "Active", "enquiries": 5, "bookings": 1, "date": "2023-11-08"},
      {"property": "Commercial Space in City Center", "status": "Pending", "enquiries": 12, "bookings": 3, "date": "2023-11-05"},
    ];

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text("Recent Activity", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
        const SizedBox(height: 12),
        DataTable(
           border: TableBorder.symmetric(outside: BorderSide(color:Colors.grey.shade300, )),
          columns: const [
            DataColumn(label: Text("Property")),
            DataColumn(label: Text("Status")),
            DataColumn(label: Text("Enquiries")),
            DataColumn(label: Text("Bookings")),
            DataColumn(label: Text("Last Updated")),
          ],
          rows: data.map((item) {
            return DataRow(cells: [
              DataCell(Text(item["property"].toString())),
              DataCell(Container(
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                decoration: BoxDecoration(
                  color: item["status"] == "Active" ? Colors.green : Colors.red,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Text(item["status"].toString(), style: const TextStyle(color: Colors.white)),
              )),
              DataCell(Text(item["enquiries"].toString())),
              DataCell(Text(item["bookings"].toString())),
              DataCell(Text(item["date"].toString())),
            ]);
          }).toList(),
        ),
      ],
    );
  }

  Widget _buildPerformanceOverview() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text("Performance Overview", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
        const SizedBox(height: 30),
        Row(
          children: [
            Expanded(child: _buildLineChartCard()),
            const SizedBox(width: 20),
            Expanded(child: _buildBarChartCard()),
          ],
        ),
      ],
    );
  }

  Widget _buildLineChartCard() {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey.shade300),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text("Enquiries Over Time +15%", style: TextStyle(fontWeight: FontWeight.bold)),
          const SizedBox(height: 10),
          SizedBox(
            height: 150,
            child: LineChart(
              LineChartData(
                titlesData: FlTitlesData(show: false),
                borderData: FlBorderData(show: false),
                lineBarsData: [
                  LineChartBarData(
                    spots: const [
                      FlSpot(0, 4),
                      FlSpot(1, 3),
                      FlSpot(2, 4.5),
                      FlSpot(3, 2.5),
                      FlSpot(4, 4),
                    ],
                    isCurved: true,
                    color: Color(0xffC1B11F),
                    barWidth: 2,
                    dotData: FlDotData(show: false),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

 Widget _buildBarChartCard() {
    final List<double> yValues = [4, 6, 3, 5, 7];

    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey.shade300),
        borderRadius: BorderRadius.circular(12)
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text("Bookings by Property Type +10%", style: TextStyle(fontWeight: FontWeight.bold)),
          const SizedBox(height: 10),
          SizedBox(
            height: 150,
            child: BarChart(
              BarChartData(
                titlesData: FlTitlesData(show: false),
                borderData: FlBorderData(show: false),
                barGroups: List.generate(yValues.length, (i) {
                  return BarChartGroupData(x: i, barRods: [
                    BarChartRodData(
                      toY: yValues[i],
                      width: 35,
                      color: const Color(0xffC1B11F),
                      borderRadius: BorderRadius.zero,
                    ),
                  ]);
                }),
              ),
            ),
          ),
        ],
      ),
    );
  }


  Widget _buildUpcomingBookings() {
    final bookings = [
      {"property": "Modern Apartment in Downtown", "client": "Olivia Bennett", "date": "2023-11-20", "time": "10:00 AM"},
      {"property": "Luxury Villa by the Sea", "client": "Ethan Harper", "date": "2023-11-22", "time": "2:00 PM"},
      {"property": "Cozy House in Suburbia", "client": "Chloe Foster", "date": "2023-11-25", "time": "11:00 AM"},
    ];

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text("Upcoming Bookings", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
        const SizedBox(height: 12),
        DataTable(
          border: TableBorder.symmetric(outside: BorderSide(color:Colors.grey.shade300, )),
          columns: const [
            DataColumn(label: Text("Property")),
            DataColumn(label: Text("Client")),
            DataColumn(label: Text("Date")),
            DataColumn(label: Text("Time")),
            DataColumn(label: Text("Status")),
          ],
          rows: bookings.map((item) {
            return DataRow(cells: [
              DataCell(Text(item["property"].toString())),
              DataCell(Text(item["client"].toString())),
              DataCell(Text(item["date"].toString())),
              DataCell(Text(item["time"].toString())),
              DataCell(Container(
                padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
                decoration: BoxDecoration(
                  color: const Color(0xFFD1B702),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: const Text("Scheduled", style: TextStyle(color: Colors.black)),
              )),
            ]);
          }).toList(),
        ),
      ],
    );
  }
}
