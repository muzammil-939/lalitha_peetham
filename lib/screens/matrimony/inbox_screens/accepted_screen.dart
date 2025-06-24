import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:lalitha_peetham/screens/matrimony/inbox_screens/inbox_header_layout.dart';

class AcceptedScreen extends StatefulWidget {
  const AcceptedScreen({super.key});

  @override
  State<AcceptedScreen> createState() => _AcceptedScreenState();
}

class _AcceptedScreenState extends State<AcceptedScreen> {
  String selectedSort = "Accepted By Me";

  @override
  Widget build(BuildContext context) {
    return InboxHeaderLayout(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 35),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Left sidebar - Sort section
            Container(
              width: 200,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(8),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.1),
                    blurRadius: 4,
                    offset: const Offset(0, 2),
                  ),
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  // Sort header
                  Container(
                    width: double.infinity,
                    padding: const EdgeInsets.all(16),
                    decoration: const BoxDecoration(
                      color: Color(0xFFD4AC0D),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(0),
                        topRight: Radius.circular(0),
                      ),
                      border: Border(
                        bottom: BorderSide(color: Color(0xFFB8860B), width: 2),
                      ),
                    ),
                    child: const Text(
                      'SORT',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        letterSpacing: 1.2,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  // Sort options
                  Container(
                    padding: const EdgeInsets.all(16),
                    decoration: const BoxDecoration(
                      color: Color(0xFFD4B846),
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(0),
                        bottomRight: Radius.circular(0),
                      ),
                    ),
                    child: Column(
                      children: [
                        _buildSortOption("Accepted By Me", true),
                        const SizedBox(height: 16),
                        _buildSortOption("Accepted By Him", false),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(width: 24),

            // Right content area
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Header with title and underline
                  const Text(
                    'Accepted By Me',
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.w600,
                      color: Color(0xFFD4AC0D),
                    ),
                  ),
                  const SizedBox(height: 8),
                  Container(
                    height: 2,
                    width: double.infinity,
                    color: const Color(0xFFD4AC0D),
                  ),
                  const SizedBox(height: 24),

                  // Profile card
                  Container(
                    padding: const EdgeInsets.all(24),
                    decoration: BoxDecoration(
                      color: const Color(0xFFF0E68C),
                      borderRadius: BorderRadius.circular(12),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.1),
                          blurRadius: 8,
                          offset: const Offset(0, 4),
                        ),
                      ],
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // Profile image - Fixed size and positioning
                        Container(
                          width: 200,
                          height: 230,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(color: Colors.white, width: 4),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withOpacity(0.2),
                                blurRadius: 8,
                                offset: const Offset(0, 4),
                              ),
                            ],
                          ),
                          child: const CircleAvatar(
                            radius: 66,
                            backgroundImage: NetworkImage(
                              'https://images.unsplash.com/photo-1507003211169-0a1dd7228f2d?w=300&h=300&fit=crop&crop=face',
                            ),
                          ),
                        ),
                        const SizedBox(width: 32),

                        // Profile details - Expanded to take available space
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              // ID with verification badge
                              Row(
                                children: [
                                  const Text(
                                    'SH78488320',
                                    style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                      color: Color(0xFFB8860B),
                                    ),
                                  ),
                                  const SizedBox(width: 8),
                                  Container(
                                    padding: const EdgeInsets.all(4),
                                    decoration: const BoxDecoration(
                                      color: Color(0xFFD4AC0D),
                                      shape: BoxShape.circle,
                                    ),
                                    child: const Icon(
                                      Icons.check,
                                      color: Colors.white,
                                      size: 16,
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(height: 12),

                              // Online status
                              Row(
                                children: [
                                  Icon(
                                    Icons.radio_button_unchecked,
                                    color: Colors.grey[600],
                                    size: 14,
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
                              const SizedBox(height: 20),

                              // Personal details with proper spacing
                              _buildDetailRow('28 Yrs, 5\'3"'),
                              _buildDetailRow('Tamil, Agamudayar'),
                              _buildDetailRow('Chennai, Tamil Nadu'),
                              _buildDetailRow('B.Eng (Hons)'),
                              _buildDetailRow('Occupation: Company Secretary'),

                              const SizedBox(height: 24),

                              // Upgrade section - Full width
                              DottedBorder(
                                color: const Color(0xFFD4AC0D),
                                strokeWidth: 1.5,
                                dashPattern: [8, 4],
                                borderType: BorderType.RRect,
                                radius: const Radius.circular(8),
                                child: Container(
                                  width: double.infinity,
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 16,
                                    vertical: 12,
                                  ),
                                  color: Colors.white,
                                  child: const Text(
                                    'Upgrade To Contact Him Directly',
                                    style: TextStyle(
                                      color: Color(0xFFD4AC0D),
                                      fontWeight: FontWeight.w600,
                                      fontSize: 15,
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                              ),
                              const SizedBox(height: 24),

                              // Action buttons - Improved layout
                              Column(
                                children: [
                                  _buildActionButton(
                                    'CALL',
                                    Icons.phone,
                                    const Color(0xFFD4AC0D),
                                  ),
                                  const SizedBox(height: 12),
                                  _buildActionButton(
                                    'WHATSAPP',
                                    Icons.chat,
                                    const Color(0xFFD4AC0D),
                                  ),
                                  const SizedBox(height: 12),
                                  _buildActionButton(
                                    'LALITHA CHAT',
                                    Icons.chat_bubble_outline,
                                    const Color(0xFFD4AC0D),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),

                        // Right side actions - Fixed positioning
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            // Dropdown menu
                            PopupMenuButton<String>(
                              icon: Container(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 12,
                                  vertical: 8,
                                ),
                                decoration: BoxDecoration(
                                  color: const Color(0xFFD4AC0D),
                                  borderRadius: BorderRadius.circular(6),
                                ),
                                child: const Icon(
                                  Icons.keyboard_arrow_down,
                                  color: Colors.white,
                                  size: 20,
                                ),
                              ),
                              offset: const Offset(0, 40),
                              itemBuilder: (context) => [
                                const PopupMenuItem(
                                  value: 'decline',
                                  child: Text('Decline'),
                                ),
                                const PopupMenuItem(
                                  value: 'block',
                                  child: Text('Block Profile'),
                                ),
                                const PopupMenuItem(
                                  value: 'report',
                                  child: Text('Report Profile'),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSortOption(String title, bool isSelected) {
    return Row(
      children: [
        Container(
          width: 20,
          height: 20,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(color: Colors.white, width: 2),
            color: isSelected ? Colors.white : Colors.transparent,
          ),
          child: isSelected
              ? const Icon(Icons.circle, size: 12, color: Color(0xFFD4AC0D))
              : null,
        ),
        const SizedBox(width: 12),
        Expanded(
          child: Text(
            title,
            style: const TextStyle(
              fontSize: 15,
              color: Colors.white,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildDetailRow(String text) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8),
      child: Text(
        text,
        style: TextStyle(
          fontSize: 15,
          color: Colors.grey[700],
          height: 1.4,
          fontWeight: FontWeight.w400,
        ),
      ),
    );
  }

  Widget _buildActionButton(String text, IconData icon, Color color) {
    return SizedBox(
      width: double.infinity,
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 14, horizontal: 20),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(8),
          boxShadow: [
            BoxShadow(
              color: color.withOpacity(0.3),
              blurRadius: 4,
              offset: const Offset(0, 2),
            ),
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              text,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 14,
                fontWeight: FontWeight.w600,
                letterSpacing: 0.8,
              ),
            ),
            const SizedBox(width: 12),
            Icon(icon, color: Colors.white, size: 18),
          ],
        ),
      ),
    );
  }
}