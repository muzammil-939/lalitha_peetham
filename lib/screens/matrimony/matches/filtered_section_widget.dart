import 'package:flutter/material.dart';

class FilterSection extends StatelessWidget {
  final String title;
  final List<String> options;
  final String selectedValue;
  final Function(String) onChanged;

  const FilterSection({
    super.key,
    required this.title,
    required this.options,
    required this.selectedValue,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(8.0),
      decoration: BoxDecoration(
        color: Color(0xFFD8C340), // Golden color
        borderRadius: BorderRadius.circular(0),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Header
          Container(
            width: double.infinity,
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
            child: Text(
              title,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 12,
                fontWeight: FontWeight.bold,
                letterSpacing: 0.5,
              ),
            ),
          ),

          // Options
          Container(
            color: const Color(0xFFCC901C),
            child: Column(
              children: options.map((option) {
                return RadioListTile<String>(
                  value: option,
                  groupValue: selectedValue,
                  onChanged: (value) {
                    if (value != null) {
                      onChanged(value);
                    }
                  },
                  title: Text(
                    option,
                    style: const TextStyle(
                      fontSize: 13,
                      color: Colors.white,
                    ),
                  ),
                  dense: true,
                  contentPadding: const EdgeInsets.symmetric(horizontal: 8),
                  activeColor: Colors.white,
                );
              }).toList(),
            ),
          ),
        ],
      ),
    );
  }
}
