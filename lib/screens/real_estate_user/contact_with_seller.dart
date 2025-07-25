import 'package:flutter/material.dart';

// Use this widget where you want to show the dialog
class ContactWithSeller extends StatelessWidget {
  const ContactWithSeller({super.key});

  @override
  Widget build(BuildContext context) {
    return Dialog(
      backgroundColor: const Color(0xFFEFF0F1),   // matches the light gray BG in image
      elevation: 0,
      insetPadding: const EdgeInsets.all(32),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(4),   // sharper, like the image
      ),
      child: Container(
        // Card "inside" the dialog
        width: 700,
        height: 500,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(4),  // sharp, small radius like image
          border: const Border(
            left: BorderSide(color: Colors.black, width: 3),
            top: BorderSide(color: Colors.black, width: 3),
            
          ),
        ),
        
        padding: const EdgeInsets.fromLTRB(32, 32, 32, 32),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Heading and Close icon
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 2.0),
                    child: Text(
                      'Contact with the Seller Right Now',
                      style: const TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 18,
                        color: Colors.black87,
                        letterSpacing: 0.1,
                      ),
                    ),
                  ),
                ),
                InkWell(
                  borderRadius: BorderRadius.circular(15),
                  onTap: () => Navigator.of(context).pop(),
                  child: const Padding(
                    padding: EdgeInsets.all(2),
                    child: Icon(Icons.close, size: 22, color: Colors.black45),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 28),

            const Text(
              'Dear santhiya krishnan,Thanks for using roofandfloor.com.',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.w700,
                color: Colors.black87,
                letterSpacing: 0.1,
              ),
            ),
            const SizedBox(height: 20),

            const Text(
              "Your message will be sent to the builder or you\ncan call them directly and do not forget to mention\nthat you found this detail on roofandfloor.com.",
              style: TextStyle(
                fontSize: 15,
                color: Colors.black54,
                height: 1.45,
              ),
            ),
            const SizedBox(height: 32),

            // Details
            RichText(
              text: const TextSpan(
                style: TextStyle(
                  fontSize: 16, color: Colors.black87, height: 1.5
                ),
                children: [
                  TextSpan(
                    text: "Name: ",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  TextSpan(text: "Pruthvi Projects\n"),
                  TextSpan(
                    text: "Contact No: ",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  TextSpan(text: "9019654584"),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
