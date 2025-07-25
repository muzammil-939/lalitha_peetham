import 'package:flutter/material.dart';


class RentPropertyCard extends StatelessWidget {
  final String title;
  final String price;
  final String image;
  final double rating;
  final String area;
  final String features;
  final String location;
  final String availability;
  final String ownerName;
  final String ownerType;
  final String similars;
  final VoidCallback onContact;
  final VoidCallback onViewPhone;

  const RentPropertyCard({
    required this.title,
    required this.price,
    required this.image,
    required this.rating,
    required this.area,
    required this.features,
    required this.location,
    required this.availability,
    required this.ownerName,
    required this.ownerType,
    required this.similars,
    required this.onContact,
    required this.onViewPhone,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      elevation: 2,
      margin: const EdgeInsets.symmetric(horizontal: 150.0, vertical: 20),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14)),
      child: Padding(
        padding: const EdgeInsets.all(14.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Property Image
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
            // Details Column
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Title & Price Row
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
                  Row(
                    children: [
                      // Owner Initial & Name
                      CircleAvatar(
                        radius: 18,
                        backgroundColor: const Color(0xFFD4BB26),
                        child: Text(
                          ownerName.isNotEmpty ? ownerName[0] : "",
                          style: const TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                        ),
                      ),
                      const SizedBox(width: 10),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(ownerName,
                              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 15)),
                          Text(ownerType, style: TextStyle(color: Colors.grey[700], fontSize: 13)),
                        ],
                      ),
                      const Spacer(),
                      _FooterButton(
                        label: "Contact Builder",
                        icon: Icons.mail_outline,
                        bgColor: Colors.white,
                        fgColor: Colors.black,
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
