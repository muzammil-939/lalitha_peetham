
import 'package:flutter/material.dart';

class SalePropertyCard extends StatelessWidget {
  final String title;
  final String price;
  final String image;
  final double rating;
  final String area;
  final String features;
  final String location;
  final String availability;
  final String builderName;
  final String similars;
  final VoidCallback onContact;
  final VoidCallback onViewPhone;

  const SalePropertyCard({
    required this.title,
    required this.price,
    required this.image,
    required this.rating,
    required this.area,
    required this.features,
    required this.location,
    required this.availability,
    required this.builderName,
    required this.similars,
    required this.onContact,
    required this.onViewPhone,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      margin: const EdgeInsets.symmetric(horizontal: 100, vertical: 10),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14)),
      child: Padding(
        padding: const EdgeInsets.all(14.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset(
                image,
                width: 150,
                height: 180,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(width: 18),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Title & Price
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Flexible(
                        child: Text(
                          title,
                          style: const TextStyle(fontWeight: FontWeight.w600, fontSize: 15),
                        ),
                      ),
                      Text(
                        price,
                        style: const TextStyle(
                          fontSize: 15.5,
                          color: Color(0xFFC15D20),
                          fontWeight: FontWeight.bold,
                        ),
                      )
                    ],
                  ),
                  const SizedBox(height: 5),
                  Row(
                    children: [
                      const Icon(Icons.star, size: 16, color: Colors.amber),
                      const SizedBox(width: 3),
                      Text('$rating',
                          style: const TextStyle(
                              fontWeight: FontWeight.w500, fontSize: 13)),
                      const SizedBox(width: 7),
                      Text(area, style: TextStyle(color: Colors.grey.shade700)),
                    ],
                  ),
                  const SizedBox(height: 4),
                  Text(features, style: const TextStyle(fontSize: 13.5, color: Colors.black87)),
                  const SizedBox(height: 4),
                  Row(
                    children: [
                      const Icon(Icons.location_on, size: 15, color: Colors.orange),
                      const SizedBox(width: 4),
                      Flexible(
                        child: Text(
                          location,
                          style: TextStyle(fontSize: 13, color: Colors.grey.shade700),
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 7),
                  Text(
                    availability,
                    style: const TextStyle(fontSize: 12, color: Colors.green, fontWeight: FontWeight.w500),
                  ),
                  const SizedBox(height: 10),
                  // Footer: Builder badge and actions
                  Row(
                    children: [
                      CircleAvatar(
                        radius: 14,
                        backgroundColor: Colors.grey.shade300,
                        child: const Icon(Icons.business, size: 14, color: Colors.black),
                      ),
                      const SizedBox(width: 8),
                      Text(
                        builderName,
                        style: const TextStyle(fontWeight: FontWeight.w600, fontSize: 13.5),
                      ),
                      const Text('  |  Builder', style: TextStyle(fontSize: 13)),
                      const Spacer(),
                      _FooterButton(
                        label: "Contact Builder",
                        icon: Icons.send_outlined,
                        bgColor: Colors.white,
                        fgColor: Colors.black87,
                        border: true,
                        onTap: onContact,
                      ),
                      const SizedBox(width: 8),
                      _FooterButton(
                        label: "View Phone Number",
                        icon: Icons.phone,
                        bgColor: const Color(0xFFC1B11F),
                        fgColor: Colors.black,
                        onTap: onViewPhone,
                      ),
                    ],
                  ),
                  const SizedBox(height: 7),
                  Row(
                    children: [
                      Text(
                        similars,
                        style: const TextStyle(fontSize: 12, color: Colors.black87, fontWeight: FontWeight.w500),
                      ),
                      Icon(Icons.arrow_right_alt, size: 18, color: Colors.grey.shade700),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
// Footer button used in both cards.
class _FooterButton extends StatelessWidget {
  final String label;
  final IconData icon;
  final Color bgColor;
  final Color fgColor;
  final bool border;
  final VoidCallback onTap;

  const _FooterButton({
    required this.label,
    required this.icon,
    required this.bgColor,
    required this.fgColor,
    this.border = false,
    required this.onTap,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton.icon(
      icon: Icon(icon, size: 17, color: fgColor),
      label: Text(label,
          style: TextStyle(fontSize: 12.5, color: fgColor, fontWeight: FontWeight.w600)),
      onPressed: onTap,
      style: TextButton.styleFrom(
        backgroundColor: bgColor,
        side: border ? BorderSide(color: Colors.grey.shade400) : BorderSide.none,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 7),
      ),
    );
  }
}