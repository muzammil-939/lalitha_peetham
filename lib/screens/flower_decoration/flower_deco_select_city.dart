import 'package:flutter/material.dart';

class CitySearchDialog extends StatelessWidget {
  const CitySearchDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return Dialog(
      backgroundColor: Colors.transparent,
      insetPadding: const EdgeInsets.all(16),
      child: Container(
        width: MediaQuery.of(context).size.width * 0.85,
        constraints: const BoxConstraints(maxWidth: 500),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Header
              Center(
                child: RichText(
                  text: const TextSpan(
                    children: [
                      TextSpan(
                        text: 'SEARCH FROM OVER 2500 CITIES',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          letterSpacing: 0.5,
                        ),
                      ),
                      TextSpan(
                        text: ' - ALL INDIA',
                        style: TextStyle(
                          color: Color(0xFFD4BB26),
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          letterSpacing: 0.5,
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              const SizedBox(height: 20),

              // Search Field
              Container(
                height: 45,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey.shade300),
                  borderRadius: BorderRadius.circular(4),
                ),
                child: const TextField(
                  decoration: InputDecoration(
                    hintText: 'Type To Find Your City',
                    hintStyle: TextStyle(color: Colors.grey, fontSize: 14),
                    border: InputBorder.none,
                    contentPadding: EdgeInsets.symmetric(
                      horizontal: 16,
                      vertical: 12,
                    ),
                  ),
                ),
              ),

              const SizedBox(height: 24),

              // Popular Cities Section
              const Text(
                'POPULAR CITIES',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: Colors.black,
                  letterSpacing: 0.5,
                ),
              ),

              const SizedBox(height: 16),

              // Popular Cities Grid
              _buildCityGrid([
                ['New Delhi', 'Mumbai', 'Gurgaon', 'Noida'],
                ['Bangalore', 'Ahmedabad', 'Navi Mumbai', 'Kolkata'],
                ['Chennai', 'Pune', 'Greater Noida', 'Thane'],
              ]),

              const SizedBox(height: 24),

              // Other Cities Section
              const Text(
                'OTHER CITIES',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: Colors.black,
                  letterSpacing: 0.5,
                ),
              ),

              const SizedBox(height: 16),

              // Other Cities Grid
              _buildCityGrid([
                ['New Delhi', 'Bhiwadi', 'Bhubaneswar', 'Bhopal'],
                ['Bangalore', 'Coimbatore', 'Dehradun', 'Faridabad'],
                ['Chennai', 'Haridwar', 'Hyderabad', 'Indore'],
                ['', 'Kochi', '', ''],
              ], highlightBangalore: true),

              const SizedBox(height: 24),

              // Done Button
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  SizedBox(
                    width: 200,
                    height: 48,
                    child: ElevatedButton(
                      onPressed: () => Navigator.of(context).pop(),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFFC1B11F),
                        foregroundColor: Colors.black,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(4),
                        ),
                        elevation: 0,
                      ),
                      child: const Text(
                        'DONE',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          letterSpacing: 1.0,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildCityGrid(
    List<List<String>> rows, {
    bool highlightBangalore = false,
  }) {
    return Column(
      children:
          rows.map((row) {
            return Padding(
              padding: const EdgeInsets.only(bottom: 12),
              child: Row(
                children:
                    row.map((city) {
                      if (city.isEmpty) {
                        return const Expanded(child: SizedBox());
                      }

                      bool isHighlighted =
                          highlightBangalore && city == 'Bangalore';

                      return Expanded(
                        child: GestureDetector(
                          onTap: () {
                            // Handle city selection
                          },
                          child: Text(
                            city,
                            style: TextStyle(
                              fontSize: 14,
                              color:
                                  isHighlighted
                                      ? const Color(0xFFD4BB26)
                                      : Colors.grey.shade600,
                              fontWeight:
                                  isHighlighted
                                      ? FontWeight.w500
                                      : FontWeight.w400,
                            ),
                          ),
                        ),
                      );
                    }).toList(),
              ),
            );
          }).toList(),
    );
  }
}
