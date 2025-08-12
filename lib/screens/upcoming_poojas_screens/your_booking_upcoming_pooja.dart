import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:lalitha_peetham/screens/upcoming_poojas_screens/upcoming_pooja_layout.dart';

class YourBookingUpcomingPooja extends StatefulWidget {
  const YourBookingUpcomingPooja({super.key});

  @override
  State<YourBookingUpcomingPooja> createState() =>
      _YourBookingUpcomingPoojaState();
}

class _YourBookingUpcomingPoojaState extends State<YourBookingUpcomingPooja> {
  final _formKey = GlobalKey<FormState>();

  // Checkbox states
  bool _panditBooking = true;
  bool _flowerDecoration = true;
  bool _sanaiMelam = true;
  bool _photoVideo = true;
  bool _poojaSamagri = false;
  bool _cateringVeg = false;
  bool _customRequests = false;

  @override
  Widget build(BuildContext context) {
    return UpcomingPoojaLayout(
      child: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Center(
          child: Container(
            constraints: const BoxConstraints(maxWidth: 600),
            padding: const EdgeInsets.all(24),
            decoration: BoxDecoration(
              color: const Color(0xFFFFF4D1), // Soft yellow background
              borderRadius: BorderRadius.circular(12),
            ),
            child: Form(
              key: _formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Title
                  const Text(
                    "Book Your Upcoming pooja",
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 20),

                  // Full Name
                  _buildTextField("Full Name", "Enter your fullname"),
                  const SizedBox(height: 15),

                  // Email Address
                  _buildTextField("Email Address", "Enter your email address"),
                  const SizedBox(height: 15),

                  // Phone Number + Add Button
                  Row(
                    children: [
                      Expanded(
                        child: _buildTextField(
                          "Phone Number",
                          "Enter your phone number",
                        ),
                      ),
                      const SizedBox(width: 10),
                      ElevatedButton.icon(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.amber,
                          padding: const EdgeInsets.symmetric(
                              vertical: 14, horizontal: 14),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(6),
                          ),
                        ),
                        onPressed: () {},
                        icon: const Icon(Icons.add,
                            size: 16, color: Colors.black),
                        label: const Text(
                          "Add",
                          style: TextStyle(color: Colors.black),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 15),

                  // Location / Type
                  _buildTextField("Location / Type", ""),
                  const SizedBox(height: 15),

                  // Address
                  _buildTextField("Address", ""),
                  const SizedBox(height: 15),

                  // Select Festival
                  _buildDropdown("Select Festival",
                      ["Festival 1", "Festival 2", "Festival 3"]),
                  const SizedBox(height: 15),

                  // Booking Date
                  _buildTextField("Booking Date", ""),
                  const SizedBox(height: 15),

                  // Preferred Time Slot
                  _buildDropdown(
                      "Preferred Time Slot", ["Morning", "Evening"]),
                  const SizedBox(height: 20),

                  // Service Requirements
                  const Text(
                    "Service Requirements",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 8),

                  _buildCheckbox("Pandit Booking", _panditBooking,
                      (val) => setState(() => _panditBooking = val)),
                  _buildCheckbox("Flower Decoration", _flowerDecoration,
                      (val) => setState(() => _flowerDecoration = val)),
                  _buildCheckbox("SanaiMelam / Band", _sanaiMelam,
                      (val) => setState(() => _sanaiMelam = val)),
                  _buildCheckbox("Photography / Videography", _photoVideo,
                      (val) => setState(() => _photoVideo = val)),
                  _buildCheckbox("Pooja Samagri", _poojaSamagri,
                      (val) => setState(() => _poojaSamagri = val)),
                  _buildCheckbox("Catering (Veg Only)", _cateringVeg,
                      (val) => setState(() => _cateringVeg = val)),
                  _buildCheckbox("Custom Requests", _customRequests,
                      (val) => setState(() => _customRequests = val)),

                  const SizedBox(height: 15),

                  // Amount
                  _buildDropdown("Amount", ["1000", "2000", "5000"]),
                  const SizedBox(height: 15),

                  // Additional Notes
                  _buildTextField("Additional Notes", "", maxLines: 3),
                  const SizedBox(height: 20),

                  // Continue Button
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xffFAC738),
                        padding: const EdgeInsets.symmetric(vertical: 14),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(6),
                        ),
                      ),
                      onPressed: () {
                        context.go('/booking_confirmation_screen');
                      },
                      child: const Text(
                        "Continue",
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildTextField(String label, String hint, {int maxLines = 1}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(label, style: const TextStyle(fontWeight: FontWeight.w500,color: Colors.black)),
        const SizedBox(height: 5),
        TextFormField(
          maxLines: maxLines,
          
          decoration: InputDecoration(
            fillColor: Color(0xFFFCFAF7),
            filled: true,
            hintText: hint,
            contentPadding:
                const EdgeInsets.symmetric(horizontal: 12, vertical: 14),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(6),
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildDropdown(String label, List<String> items) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(label, style: const TextStyle(fontWeight: FontWeight.w500)),
        const SizedBox(height: 5),
        DropdownButtonFormField<String>(
          decoration: InputDecoration(
             fillColor: Color(0xFFFCFAF7),
            filled: true,
            contentPadding:
                const EdgeInsets.symmetric(horizontal: 12, vertical: 14),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(6),
            ),
          ),
          items: items
              .map((item) => DropdownMenuItem(
                    value: item,
                    child: Text(item),
                  ))
              .toList(),
          onChanged: (value) {},
        ),
      ],
    );
  }

  Widget _buildCheckbox(
      String title, bool value, ValueChanged<bool> onChanged) {
    return Row(
      children: [
        Checkbox(
          value: value,
          activeColor: Colors.amber,
          onChanged: (v) => onChanged(v ?? false),
        ),
        Expanded(child: Text(title)),
      ],
    );
  }
}
