import 'package:flutter/material.dart';
import 'package:lalitha_peetham/screens/matrimony/inbox_screens/inbox_header_layout.dart';

class DeletedScreen extends StatefulWidget {
  const DeletedScreen({super.key});

  @override
  State<DeletedScreen> createState() => _DeletedScreenState();
}

class _DeletedScreenState extends State<DeletedScreen> {
  int selectedSortOption = 0; // 0: All Request, 1: Viewed By Him, 2: Not Viewed By Him

  @override
  Widget build(BuildContext context) {
    return InboxHeaderLayout(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 35),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Left Side - Sort Options
            Container(
              width: 200,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: double.infinity,
                    padding: const EdgeInsets.symmetric(vertical: 12),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: const Color(0xFFD4A574), width: 2),
                    ),
                    child: const Text(
                      'SORT',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: const Color(0xFFCC901C),
                      ),
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: const Color(0xFFCC901C),
                      border: Border.all(color: const Color(0xFFCC901C), width: 2),
                    ),
                    child: Column(
                      children: [
                        _buildSortOption(0, 'All Request'),
                        _buildSortOption(1, 'Viewed By Him'),
                        _buildSortOption(2, 'Not Viewed By Him'),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            
            const SizedBox(width: 40),
            
            // Right Side - Deleted Invitations
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Deleted Invitations',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      color: Color(0xFFD4A574),
                    ),
                  ),
                  const SizedBox(height: 20),
                  
                  // Profile Cards
                  _buildProfileCard(
                    isDeclined: true,
                    showAcceptButton: true,
                  ),
                  const SizedBox(height: 20),
                  _buildProfileCard(
                    isDeclined: false,
                    showAcceptButton: false,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSortOption(int index, String title) {
    bool isSelected = selectedSortOption == index;
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedSortOption = index;
        });
      },
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
        child: Row(
          children: [
            Container(
              width: 16,
              height: 16,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(color: Colors.white, width: 2),
                color: isSelected ? Colors.white : Colors.transparent,
              ),
              child: isSelected
                  ? const Center(
                      child: CircleAvatar(
                        radius: 4,
                        backgroundColor: Color(0xFFE6D55A),
                      ),
                    )
                  : null,
            ),
            const SizedBox(width: 12),
            Text(
              title,
              style: const TextStyle(
                fontSize: 14,
                color: Colors.white,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildProfileCard({required bool isDeclined, required bool showAcceptButton}) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: const Color(0xFFF5F1E8),
        borderRadius: BorderRadius.circular(4),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 4,
            offset: const Offset(2, 2),
          ),
        ],
      ),
      child: Column(
        children: [
          Row(
            children: [
              // Profile Image
              Container(
                width: 80,
                height: 80,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(color: Colors.grey.shade300, width: 2),
                ),
                child: ClipOval(
                  child: Container(
                    color: Colors.grey.shade200,
                    child: const Icon(
                      Icons.person,
                      size: 40,
                      color: Colors.grey,
                    ),
                  ),
                ),
              ),
              
              const SizedBox(width: 20),
              
              // Profile Details
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
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: Color(0xFFD4A574),
                          ),
                        ),
                        Text(
                          'Few Hours Ago',
                          style: TextStyle(
                            fontSize: 12,
                            color: Colors.grey.shade600,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 4),
                    Row(
                      children: [
                        Container(
                          width: 8,
                          height: 8,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.grey.shade400,
                          ),
                        ),
                        const SizedBox(width: 8),
                        Text(
                          'Online 1h Ago',
                          style: TextStyle(
                            fontSize: 12,
                            color: Colors.grey.shade600,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 12),
                    const Text(
                      '28 Yrs, 5\'3"',
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.black87,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    const Text(
                      'Tamil, Agamudayar',
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.black87,
                      ),
                    ),
                    const Text(
                      'Chennai, Tamil Nadu',
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.black87,
                      ),
                    ),
                    const Text(
                      'B.Eng (Hons)',
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.black87,
                      ),
                    ),
                    const Text(
                      'Occupation: Company Secretary',
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.black87,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          
          const SizedBox(height: 20),
          
          // Action Button
          Container(
            width: 250,
            padding: const EdgeInsets.symmetric(vertical: 12),
            decoration: BoxDecoration(
              color: const Color(0xFFD2523C),
              borderRadius: BorderRadius.circular(4),
            ),
            child: Text(
              isDeclined ? 'You Declined His Interest' : 'He Cancelled His Invetation',
              textAlign: TextAlign.center,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 14,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          
          const SizedBox(height: 20),
          
          // Changed Your Mind Section
          const Text(
            'CHANGED YOUR MIND?',
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w600,
              color: Color(0xFFD4A574),
              letterSpacing: 1.2,
            ),
          ),
          
          if (showAcceptButton) ...[
            const SizedBox(height: 12),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 32,
                  height: 32,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: const Color(0xFF4CAF50),
                    border: Border.all(color: const Color(0xFF4CAF50), width: 2),
                  ),
                  child: const Icon(
                    Icons.check,
                    color: Colors.white,
                    size: 18,
                  ),
                ),
                const SizedBox(width: 12),
                const Text(
                  'Accept',
                  style: TextStyle(
                    fontSize: 14,
                    color: Color(0xFF4CAF50),
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          ],
        ],
      ),
    );
  }
}