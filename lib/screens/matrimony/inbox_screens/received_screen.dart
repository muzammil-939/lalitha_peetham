import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:lalitha_peetham/screens/matrimony/inbox_screens/inbox_header_layout.dart';

class ReceivedScreen extends StatefulWidget {
  const ReceivedScreen({super.key});

  @override
  State<ReceivedScreen> createState() => _ReceivedScreenState();
}

class _ReceivedScreenState extends State<ReceivedScreen> {
  String selectedSort = 'Most Relevant';
  String selectedFilter = 'Blue Tick Members';

  @override
  Widget build(BuildContext context) {
    return InboxHeaderLayout(
     
      child: Row(
        children: [
          // Left Sidebar
          Container(
            width: 300,
            color: Colors.white,
            child: Column(
              children: [
                // Sort Section
                Container(
                  margin: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: const Color(0xFFD4AF37),
                    borderRadius: BorderRadius.circular(0),
                  ),
                  child: Column(
                    children: [
                      // Sort Header
                      Container(
                        width: double.infinity,
                        padding: const EdgeInsets.all(16),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(0),
                          border: Border.all(color: const Color(0xFFD4AF37), width: 3),
                        ),
                        child: const Text(
                          'SORT',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFFD4AF37),
                            letterSpacing: 2,
                          ),
                        ),
                      ),
                      // Sort Options
                      Padding(
                        padding: const EdgeInsets.all(16),
                        child: Column(
                          children: [
                            _buildRadioOption('Most Relevant', selectedSort, (value) {
                              setState(() {
                                selectedSort = value!;
                              });
                            }),
                            const SizedBox(height: 12),
                            _buildRadioOption('Newest First', selectedSort, (value) {
                              setState(() {
                                selectedSort = value!;
                              });
                            }),
                            const SizedBox(height: 12),
                            _buildRadioOption('Oldest First', selectedSort, (value) {
                              setState(() {
                                selectedSort = value!;
                              });
                            }),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                
                // Filter Section
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 20),
                  decoration: BoxDecoration(
                    color: const Color(0xFFD4AF37),
                    borderRadius: BorderRadius.circular(0),
                  ),
                  child: Column(
                    children: [
                      // Filter Header
                      Container(
                        width: double.infinity,
                        padding: const EdgeInsets.all(16),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(0),
                          border: Border.all(color: const Color(0xFFD4AF37), width: 3),
                        ),
                        child: const Text(
                          'FILTER',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFFD4AF37),
                            letterSpacing: 2,
                          ),
                        ),
                      ),
                      // Filter Options
                      Padding(
                        padding: const EdgeInsets.all(16),
                        child: Column(
                          children: [
                            _buildRadioOption('Blue Tick Members', selectedFilter, (value) {
                              setState(() {
                                selectedFilter = value!;
                              });
                            }),
                            const SizedBox(height: 12),
                            _buildRadioOption('Blue Tick Members', selectedFilter, (value) {
                              setState(() {
                                selectedFilter = value!;
                              });
                            }),
                            const SizedBox(height: 12),
                            _buildRadioOption('Super Connects', selectedFilter, (value) {
                              setState(() {
                                selectedFilter = value!;
                              });
                            }),
                            const SizedBox(height: 12),
                            _buildRadioOption('Premium Members', selectedFilter, (value) {
                              setState(() {
                                selectedFilter = value!;
                              });
                            }),
                            const SizedBox(height: 12),
                            _buildRadioOption('Members Online Now', selectedFilter, (value) {
                              setState(() {
                                selectedFilter = value!;
                              });
                            }),
                            const SizedBox(height: 12),
                            _buildRadioOption('Members With Photos', selectedFilter, (value) {
                              setState(() {
                                selectedFilter = value!;
                              });
                            }),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          
          // Main Content Area
          Expanded(
            child: Container(
              color: Colors.grey[100],
              padding: const EdgeInsets.all(20),
              child: Column(
                children: [
                  // Header Tabs
                  Row(
                    children: [
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                        decoration: const BoxDecoration(
                          color: Colors.white,
                          border: Border(
                            bottom: BorderSide(color: Colors.grey, width: 1),
                          ),
                        ),
                        child: const Text(
                          'All Request',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: Colors.black87,
                          ),
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                        decoration: const BoxDecoration(
                          color: Colors.grey,
                          border: Border(
                            bottom: BorderSide(color: Colors.grey, width: 1),
                          ),
                        ),
                        child: const Text(
                          'Filtered Out',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: Color(0xFFD4AF37),
                          ),
                        ),
                      ),
                    ],
                  ),
                  
                  const SizedBox(height: 20),
                  
                  // Profile Card
                  Container(
                    padding: const EdgeInsets.all(24),
                    decoration: BoxDecoration(
                      color: const Color(0xFFF5F3E0),
                      borderRadius: BorderRadius.circular(12),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.1),
                          spreadRadius: 1,
                          blurRadius: 5,
                          offset: const Offset(0, 2),
                        ),
                      ],
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            // Profile Image
                            Container(
                              width: 100,
                              height: 100,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border: Border.all(color: Colors.grey[300]!, width: 2),
                              ),
                              child: ClipOval(
                                child: Container(
                                  color: Colors.grey[300],
                                  child: const Icon(
                                    Icons.person,
                                    size: 50,
                                    color: Colors.grey,
                                  ),
                                ),
                              ),
                            ),
                            
                            const SizedBox(width: 24),
                            
                            // Profile Info
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      const Text(
                                        'SH78488320',
                                        style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold,
                                          color: Color(0xFFD4AF37),
                                        ),
                                      ),
                                      Text(
                                        'Few Hours Ago',
                                        style: TextStyle(
                                          fontSize: 14,
                                          color: Colors.grey[600],
                                        ),
                                      ),
                                    ],
                                  ),
                                  
                                  const SizedBox(height: 8),
                                  
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.circle,
                                        size: 12,
                                        color: Colors.green[400],
                                      ),
                                      const SizedBox(width: 8),
                                      Text(
                                        'Online 1h Ago',
                                        style: TextStyle(
                                          fontSize: 14,
                                          color: Colors.grey[600],
                                        ),
                                      ),
                                    ],
                                  ),
                                  
                                  const SizedBox(height: 16),
                                  
                                  const Text(
                                    '28 Yrs, 5\'3"',
                                    style: TextStyle(
                                      fontSize: 14,
                                      color: Colors.black87,
                                    ),
                                  ),
                                  
                                  const SizedBox(height: 4),
                                  
                                  Text(
                                    'Tamil, Agamudayar',
                                    style: TextStyle(
                                      fontSize: 14,
                                      color: Colors.grey[700],
                                    ),
                                  ),
                                  
                                  const SizedBox(height: 4),
                                  
                                  Text(
                                    'Chennai, Tamil Nadu',
                                    style: TextStyle(
                                      fontSize: 14,
                                      color: Colors.grey[700],
                                    ),
                                  ),
                                  
                                  const SizedBox(height: 4),
                                  
                                  Text(
                                    'B.Eng (Hons)',
                                    style: TextStyle(
                                      fontSize: 14,
                                      color: Colors.grey[700],
                                    ),
                                  ),
                                  
                                  const SizedBox(height: 4),
                                  
                                  Text(
                                    'Occupation: Company Secretary',
                                    style: TextStyle(
                                      fontSize: 14,
                                      color: Colors.grey[700],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        
                        const SizedBox(height: 24),
                        
                        // Message Box
                        DottedBorder(
                          borderType: BorderType.RRect,
                          radius: Radius.circular(4),
                          color: Color(0xFFD4AF37),
                          strokeWidth: 1,
                          dashPattern: [4, 3],
                          child: Container(
                            padding: const EdgeInsets.all(20),
                            width: 350,
                            color:Colors.white,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                RichText(
                                  text: TextSpan(
                                    style: TextStyle(
                                      fontSize: 14,
                                      color: Colors.grey[700],
                                      height: 1.5,
                                    ),
                                    children: const [
                                      TextSpan(
                                        text: 'SH78488320',
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Color(0xFFD4AF37),
                                        ),
                                      ),
                                      TextSpan(
                                        text: ' Has Sent You A Message. In The Interest Of Our Premium Members, We Allow Only Premium Users To Read Messages.',
                                      ),
                                    ],
                                  ),
                                ),
                                
                                const SizedBox(height: 16),
                                
                                Row(
                                  children: [
                                    Text(
                                      'UPGRADE NOW',
                                      style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.orange[700],
                                        letterSpacing: 1,
                                      ),
                                    ),
                                    const SizedBox(width: 8),
                                    Icon(
                                      Icons.arrow_forward_ios,
                                      size: 12,
                                      color: Colors.orange[700],
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                        
                        const SizedBox(height: 24),
                        
                        // Invitation Section
                        const Text(
                          'HE INVITED YOU TO CONNECT',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFFD4AF37),
                            letterSpacing: 1,
                          ),
                        ),
                        
                        const SizedBox(height: 16),
                        
                        // Action Buttons
                        Row(
                          children: [
                            // Accept Button
                            Container(
                              width: 60,
                              height: 60,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.orange[600],
                              ),
                              child: const Icon(
                                Icons.check,
                                color: Colors.white,
                                size: 30,
                              ),
                            ),
                            
                            const SizedBox(width: 16),
                            
                            const Text(
                              'Accept',
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.grey,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            
                            const SizedBox(width: 50),
                            
                            // Decline Button
                            Container(
                              width: 60,
                              height: 60,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.grey[400],
                              ),
                              child: const Icon(
                                Icons.close,
                                color: Colors.white,
                                size: 30,
                              ),
                            ),
                            
                            const SizedBox(width: 16),
                            
                            const Text(
                              'Decline',
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.grey,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildRadioOption(String title, String groupValue, ValueChanged<String?> onChanged) {
    return Row(
      children: [
        Radio<String>(
          value: title,
          groupValue: groupValue,
          onChanged: onChanged,
          activeColor: Colors.white,
          fillColor: WidgetStateProperty.all(Colors.white),
        ),
        Expanded(
          child: Text(
            title,
            style: const TextStyle(
              fontSize: 14,
              color: Colors.white,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ],
    );
  }
}