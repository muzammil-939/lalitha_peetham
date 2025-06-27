import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:lalitha_peetham/screens/ayurvedha/ayurvedh_page_layout.dart';

class AyurvedhaPostArticle extends StatefulWidget {
  const AyurvedhaPostArticle({super.key});

  @override
  State<AyurvedhaPostArticle> createState() => _AyurvedhaPostArticleState();
}

class _AyurvedhaPostArticleState extends State<AyurvedhaPostArticle> {
  final TextEditingController titleController = TextEditingController();
  final TextEditingController descriptionController = TextEditingController();
  String? selectedCategory;
  List<String> selectedTags = ['Covid', 'Ecg', 'Chest Pain'];
  String? viewOption = 'All Registered Doctors';

  @override
  Widget build(BuildContext context) {
    return AyurvedhPageLayout(
      child: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.fromLTRB(200, 50, 200, 100),
          color: const Color(0xFFF5F5F5),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Breadcrumb
              Align(
                alignment: Alignment.topCenter,
                child: Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 18,
                    vertical: 12,
                  ),
                  decoration: BoxDecoration(
                    color: const Color(0xFFD4BB26),
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: const [
                      Icon(Icons.home, size: 16, color: Colors.black),
                      Text(" / ", style: TextStyle(color: Colors.black)),
                      Text(
                        "Ayurvedha Consultancy",
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(" // ", style: TextStyle(color: Colors.black)),
                      Text(
                        "POSt ARTICLE",
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 40),
              const Text(
                "Post Article",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                  letterSpacing: 0.8,
                ),
              ),
              const SizedBox(height: 30),

              // Article Title
              const Text(
                "Article Title *",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  letterSpacing: 0.5,
                ),
              ),
              const SizedBox(height: 8),
              _buildTextArea(controller: titleController),

              const SizedBox(height: 25),
              
              // Medical Category
              const Text(
                "Medical Category *",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  letterSpacing: 0.5,
                ),
              ),
              const SizedBox(height: 8),
              _buildDropdown(),

              const SizedBox(height: 25),
              
              // Article Body
              const Text(
                "Article Body *",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  letterSpacing: 0.5,
                ),
              ),
              const SizedBox(height: 8),
              _buildTextArea(controller: descriptionController),

              const SizedBox(height: 25),
              
              // Upload Cover Image Section
              const Text(
                "Upload Cover Image",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  letterSpacing: 0.5,
                ),
              ),
              const SizedBox(height: 8),
              _buildUploadCoverImage(),

              const SizedBox(height: 25),
              
              // Tag Key Words
              const Text(
                "Tag Key Words",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  letterSpacing: 0.5,
                ),
              ),
              const SizedBox(height: 8),
              _buildDropdown(hint: "Select Any Five"),
              const SizedBox(height: 10),
              Wrap(
                spacing: 10,
                runSpacing: 10,
                children:
                    selectedTags.map((tag) => _buildTagChip(tag)).toList(),
              ),

              const SizedBox(height: 30),
              
              // Visibility Section
              const Text(
                "Visibility",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  letterSpacing: 0.5,
                ),
              ),
              const SizedBox(height: 12),
              _buildViewOptionTile("Public"),
              const SizedBox(height: 10),
              _buildViewOptionTile("Visible To Register Doctors Only"),
              const SizedBox(height: 10),
              _buildViewOptionTile("Save As Draft"),

              const SizedBox(height: 40),
              
              // Submit Button
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFFC1B11F),
                  padding: const EdgeInsets.symmetric(
                    horizontal: 65,
                    vertical: 18,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(0),
                  ),
                ),
                onPressed: () {
                  context.go('/article_submit');
                },
                child: const Text(
                  "SUBMIT",
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    letterSpacing: 1.2,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildTextArea({required TextEditingController controller}) {
    return Container(
      decoration: BoxDecoration(
        color: const Color(0xFFE8E0A8),
        border: Border.all(color: Colors.black54),
        borderRadius: BorderRadius.circular(6),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 12),
      child: TextField(
        controller: controller,
        maxLines: 5,
        decoration: const InputDecoration(
          border: InputBorder.none,
          hintText: "Type Here",
          hintStyle: TextStyle(color: Colors.black54),
        ),
      ),
    );
  }

  Widget _buildDropdown({String hint = "Select"}) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12),
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: Colors.black45),
        borderRadius: BorderRadius.circular(0),
      ),
      child: DropdownButtonHideUnderline(
        child: DropdownButton<String>(
          value: null,
          hint: Text(hint),
          isExpanded: true,
          icon: const Icon(Icons.keyboard_arrow_down),
          items: [
            'Cardiology',
            'Neurology',
            'General',
          ].map((e) => DropdownMenuItem(value: e, child: Text(e))).toList(),
          onChanged: (val) {},
        ),
      ),
    );
  }

  Widget _buildUploadCoverImage() {
    return GestureDetector(
      onTap: () {
        // Handle image upload functionality here
        print("Upload cover image tapped");
      },
      child: Container(
        width: 200,
        height: 150,
        decoration: BoxDecoration(
          color: const Color(0xFFD4BB26),
          borderRadius: BorderRadius.circular(0),
          border: Border.all(color: Colors.black45),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(
              Icons.cloud_upload_outlined,
              size: 40,
              color: Colors.black,
            ),
            const SizedBox(height: 8),
            const Text(
              "Select Profile",
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w500,
                fontSize: 14,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildTagChip(String tag) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black45),
        borderRadius: BorderRadius.circular(30),
        color: Colors.white,
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            tag,
            style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
          ),
          const SizedBox(width: 6),
          GestureDetector(
            onTap: () {
              setState(() {
                selectedTags.remove(tag);
              });
            },
            child: const Icon(Icons.close, size: 16),
          ),
        ],
      ),
    );
  }

  Widget _buildViewOptionTile(String option) {
    bool selected = viewOption == option;
    return GestureDetector(
      onTap: () {
        setState(() {
          viewOption = option;
        });
      },
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 14),
        decoration: BoxDecoration(
          border: Border.all(color: Colors.black45),
          borderRadius: BorderRadius.circular(30),
          color: selected ? const Color(0xFFE8E0A8) : Colors.white,
        ),
        child: Row(
          children: [
            Expanded(child: Text(option)),
            Container(
              width: 24,
              height: 24,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black),
                borderRadius: BorderRadius.circular(2),
              ),
              child: selected
                  ? const Icon(Icons.check, size: 18)
                  : const SizedBox.shrink(),
            ),
          ],
        ),
      ),
    );
  }
}