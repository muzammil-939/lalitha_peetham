import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:lalitha_peetham/screens/flower_decoration/flower_deco_vendor/flower_deco_vendor_layout.dart';

class FlowerDecoBussinesdetails extends StatefulWidget {
  const FlowerDecoBussinesdetails({super.key});

  @override
  FlowerDecoBussinesdetailsState createState() =>
      FlowerDecoBussinesdetailsState();
}

class FlowerDecoBussinesdetailsState extends State<FlowerDecoBussinesdetails> {
  String selectedBrochureSize = '50,000 - 1,00000';
  String selectedServiceArea = 'Select Any Five';
  bool privacyPolicyChecked = true;
  bool termsConditionsChecked = false;

  @override
  Widget build(BuildContext context) {
    return FlowerDecoVendorLayout(
      child: Container(
        padding: const EdgeInsets.fromLTRB(200, 50, 200, 150),
        decoration: const BoxDecoration(color: Colors.white),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildBreadcrumb(),
            const SizedBox(height: 50),
            _buildFormContent(),
            const SizedBox(height: 40),
            _buildSubmitButton(),
          ],
        ),
      ),
    );
  }

  Widget _buildBreadcrumb() {
    return Center(
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 12),
        decoration: BoxDecoration(
          color: const Color(0xFFD4BB26),
          borderRadius: BorderRadius.circular(20),
        ),
        child: const Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(Icons.home, size: 16, color: Colors.black),
            Text(
              ' // Edit Business Details',
              style: TextStyle(
                color: Colors.black,
                fontSize: 14,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildFormContent() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'PORTFOLIO AND WORK SAMPLES',
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w600,
            color: Colors.black87,
          ),
        ),
        const SizedBox(height: 30),

        // Upload sections row
        Row(
          children: [
            Expanded(child: _buildUploadSection('UPLOAD DECORATION PHOTOS')),
            const SizedBox(width: 30),
            Expanded(child: _buildBrochureDropdown()),
          ],
        ),

        const SizedBox(height: 25),

        // Second upload section
        _buildUploadSectionLarge('UPLOAD DECORATION PHOTOS'),

        const SizedBox(height: 25),

        // Video upload section
        _buildVideoUploadSection(),

        const SizedBox(height: 25),

        // Logo upload section
        _buildLogoUploadSection(),

        const SizedBox(height: 30),

        // Services offered section
        _buildServicesSection(),

        const SizedBox(height: 30),

        // Service area section
        _buildServiceAreaSection(),

        const SizedBox(height: 25),

        // GST/ID Proof section
        _buildGSTSection(),

        const SizedBox(height: 30),

        // Terms and conditions
        _buildTermsSection(),
      ],
    );
  }

  Widget _buildUploadSection(String title) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: const TextStyle(
            fontSize: 13,
            fontWeight: FontWeight.w600,
            color: Colors.black87,
          ),
        ),
        const SizedBox(height: 8),
        Container(
          height: 50,
          decoration: BoxDecoration(
            border: Border.all(color: Colors.grey.shade300),
            borderRadius: BorderRadius.circular(4),
          ),
          child: Row(
            children: [
              const Expanded(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 12),
                  child: Text(
                    '5',
                    style: TextStyle(fontSize: 14, color: Colors.black54),
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: Colors.grey.shade100,
                  borderRadius: const BorderRadius.only(
                    topRight: Radius.circular(4),
                    bottomRight: Radius.circular(4),
                  ),
                ),
                child: const Icon(
                  Icons.cloud_upload_outlined,
                  size: 18,
                  color: Colors.grey,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildBrochureDropdown() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'UPLOAD BROCHURE / CATALOG (PDF)',
          style: TextStyle(
            fontSize: 13,
            fontWeight: FontWeight.w600,
            color: Colors.black87,
          ),
        ),
        const SizedBox(height: 8),
        Container(
          height: 50,
          decoration: BoxDecoration(
            border: Border.all(color: Colors.grey.shade300),
            borderRadius: BorderRadius.circular(4),
          ),
          child: DropdownButtonFormField<String>(
            value: selectedBrochureSize,
            decoration: const InputDecoration(
              border: InputBorder.none,
              contentPadding: EdgeInsets.symmetric(horizontal: 12),
            ),
            items:
                [
                  '50,000 - 1,00000',
                  '1,00000 - 2,00000',
                  '2,00000 - 5,00000',
                ].map((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
            onChanged: (String? newValue) {
              setState(() {
                selectedBrochureSize = newValue!;
              });
            },
          ),
        ),
      ],
    );
  }

  Widget _buildUploadSectionLarge(String title) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: const TextStyle(
            fontSize: 13,
            fontWeight: FontWeight.w600,
            color: Colors.black87,
          ),
        ),
        const SizedBox(height: 8),
        Container(
          height: 50,
          decoration: BoxDecoration(
            border: Border.all(color: Colors.grey.shade300),
            borderRadius: BorderRadius.circular(4),
          ),
          child: Row(
            children: [
              const Expanded(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 12),
                  child: Text(
                    'Upload',
                    style: TextStyle(fontSize: 14, color: Colors.black54),
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: Colors.grey.shade100,
                  borderRadius: const BorderRadius.only(
                    topRight: Radius.circular(4),
                    bottomRight: Radius.circular(4),
                  ),
                ),
                child: const Icon(
                  Icons.cloud_upload_outlined,
                  size: 18,
                  color: Colors.grey,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildVideoUploadSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'VIDEO LINK OF PAST WORK',
          style: TextStyle(
            fontSize: 13,
            fontWeight: FontWeight.w600,
            color: Colors.black87,
          ),
        ),
        const SizedBox(height: 8),
        Container(
          width: 120,
          height: 80,
          decoration: BoxDecoration(
            color: const Color(0xFFC1B11F),
            borderRadius: BorderRadius.circular(4),
          ),
          child: const Icon(
            Icons.cloud_upload_outlined,
            size: 30,
            color: Colors.black,
          ),
        ),
      ],
    );
  }

  Widget _buildLogoUploadSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Logo',
          style: TextStyle(
            fontSize: 13,
            fontWeight: FontWeight.w600,
            color: Colors.black87,
          ),
        ),
        const SizedBox(height: 8),
        Container(
          width: double.infinity,
          height: 80,
          decoration: BoxDecoration(
            border: Border.all(
              color: Colors.grey.shade300,
              style: BorderStyle.solid,
            ),
            borderRadius: BorderRadius.circular(4),
          ),
          child: const Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Upload Logo',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: Colors.black87,
                  ),
                ),
                SizedBox(height: 4),
                Text(
                  'Drag and drop or browse to upload your logo file. Recommended\nsize: 200×200px',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 11, color: Colors.grey),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildServicesSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'SERVICES OFFERED',
          style: TextStyle(
            fontSize: 13,
            fontWeight: FontWeight.w600,
            color: Colors.black87,
          ),
        ),
        const SizedBox(height: 8),
        Container(
          height: 50,
          decoration: BoxDecoration(
            border: Border.all(color: Colors.grey.shade300),
            borderRadius: BorderRadius.circular(4),
          ),
          child: Row(
            children: [
              const Expanded(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 12),
                  child: Text(
                    'Government Id Proof',
                    style: TextStyle(fontSize: 14, color: Colors.black54),
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.all(12),
                child: Container(
                  width: 30,
                  height: 30,
                  decoration: BoxDecoration(
                    color: const Color(0xFFC1B11F),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: const Icon(Icons.add, size: 16, color: Colors.black),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildServiceAreaSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'SERVICES AREA',
          style: TextStyle(
            fontSize: 13,
            fontWeight: FontWeight.w600,
            color: Colors.black87,
          ),
        ),
        const SizedBox(height: 8),
        Container(
          width: 300,
          height: 50,
          decoration: BoxDecoration(
            border: Border.all(color: Colors.grey.shade300),
            borderRadius: BorderRadius.circular(4),
          ),
          child: DropdownButtonFormField<String>(
            value: selectedServiceArea,
            decoration: const InputDecoration(
              border: InputBorder.none,
              contentPadding: EdgeInsets.symmetric(horizontal: 12),
            ),
            items:
                ['Select Any Five', 'Select Any Three', 'Select Any Seven'].map(
                  (String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  },
                ).toList(),
            onChanged: (String? newValue) {
              setState(() {
                selectedServiceArea = newValue!;
              });
            },
          ),
        ),
        const SizedBox(height: 15),
        Row(
          children: [
            _buildLocationChip('Marajguhalli'),
            const SizedBox(width: 10),
            _buildLocationChip('Whitefield'),
            const SizedBox(width: 10),
            _buildLocationChip('Sirogi Nagar'),
          ],
        ),
      ],
    );
  }

  Widget _buildLocationChip(String location) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey.shade400),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            location,
            style: const TextStyle(fontSize: 12, color: Colors.black87),
          ),
          const SizedBox(width: 8),
          Container(
            width: 16,
            height: 16,
            decoration: BoxDecoration(
              color: Colors.grey.shade400,
              borderRadius: BorderRadius.circular(8),
            ),
            child: const Icon(Icons.close, size: 10, color: Colors.white),
          ),
        ],
      ),
    );
  }

  Widget _buildGSTSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'GST/ID Proof (Optional)',
          style: TextStyle(
            fontSize: 13,
            fontWeight: FontWeight.w600,
            color: Colors.black87,
          ),
        ),
        const SizedBox(height: 8),
        Container(
          width: double.infinity,
          height: 80,
          decoration: BoxDecoration(
            border: Border.all(
              color: Colors.grey.shade300,
              style: BorderStyle.solid,
            ),
            borderRadius: BorderRadius.circular(4),
          ),
          child: const Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Upload Document',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: Colors.black87,
                  ),
                ),
                SizedBox(height: 4),
                Text(
                  'Drag and drop or browse to upload your GST or ID proof. Accepted\nformats: PDF, JPG, PNG',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 11, color: Colors.grey),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildTermsSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Checkbox(
              value: privacyPolicyChecked,
              onChanged: (bool? value) {
                setState(() {
                  privacyPolicyChecked = value!;
                });
              },
              activeColor: const Color(0xFFC1B11F),
            ),
            const Text(
              'I Read And Agree To ',
              style: TextStyle(fontSize: 12, color: Colors.black87),
            ),
            const Text(
              'Privacy Policy',
              style: TextStyle(
                fontSize: 12,
                color: Color(0xFFC1B11F),
                decoration: TextDecoration.underline,
              ),
            ),
          ],
        ),
        Row(
          children: [
            Checkbox(
              value: termsConditionsChecked,
              onChanged: (bool? value) {
                setState(() {
                  termsConditionsChecked = value!;
                });
              },
              activeColor: const Color(0xFFC1B11F),
            ),
            const Text(
              'I Read And Agree To ',
              style: TextStyle(fontSize: 12, color: Colors.black87),
            ),
            const Text(
              'Terms And Conditions',
              style: TextStyle(
                fontSize: 12,
                color: Color(0xFFC1B11F),
                decoration: TextDecoration.underline,
              ),
            ),
          ],
        ),
      ],
    );
  }

  Widget _buildSubmitButton() {
    return SizedBox(
      width: 160,
      height: 50,
      child: ElevatedButton(
        onPressed: () => context.go('/one_to_one_sessions'),
        style: ElevatedButton.styleFrom(
          backgroundColor: const Color(0xFFC1B11F),
          elevation: 0,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
        ),
        child: const Text(
          'SAVE CHANGES',
          style: TextStyle(
            color: Colors.white,
            fontSize: 13,
            fontWeight: FontWeight.w600,
            letterSpacing: 0.8,
          ),
        ),
      ),
    );
  }
}
