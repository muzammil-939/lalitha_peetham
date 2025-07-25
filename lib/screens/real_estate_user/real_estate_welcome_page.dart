import 'package:flutter/material.dart';
import 'package:lalitha_peetham/screens/flower_decoration/flower_help.dart';
import 'package:lalitha_peetham/screens/real_estate_user/contact_with_seller.dart';
import 'package:lalitha_peetham/screens/real_estate_user/real_estate_layout.dart';
import 'package:lalitha_peetham/screens/real_estate_user/real_estate_rent_property_card.dart';
import 'package:lalitha_peetham/screens/real_estate_user/real_estate_saleproperty.dart';

class RealEstateWelcomePage extends StatefulWidget {
  const RealEstateWelcomePage({super.key});

  @override
  State<RealEstateWelcomePage> createState() => _RealEstateWelcomePageState();
}

class _RealEstateWelcomePageState extends State<RealEstateWelcomePage> {
  String buyOrRent = "Buy";
  String propertyType = "Property Type";
  String budget = "Budget";
  String ownership = "Ownership";

  int selectedFilter = 0;

  final filterLabels = [
  'Sale Property (200)',
  'Rent Properties (200)',
  '86 PG/ Co Living',
  '1108 Projects',
  '2100 Dealers',
];

    final List<Map<String, dynamic>> saleProperties = [
    {
      'title': '2 Bhk 890 Sq.Ft Flats / Apartments For Sale In Phase 2, Electronic City, Bangalore.',
      'price': '₹ 47.58 lakh',
      'image': 'assets/images/real_estate1.png',
      'rating': 4.8,
      'area': '890 Sq.Ft',
      'features': '2 Guests | 1 Bedroom | 2 Bathroom',
      'location': 'Phase-2, Electronic City',
      'availability': 'This Spacious 2 Bhk Flat/ Apartment Is Available For Sale',
      'builder': 'DS Projects',
      'similars': '18 Similar Listings By Ds Projects In This Area.'
    },
    {
      'title': '3 Bhk 1200 Sq.Ft Villa For Sale In Whitefield, Bangalore.',
      'price': '₹ 82.00 lakh',
      'image': 'assets/images/real_estate1.png',
      'rating': 4.7,
      'area': '1200 Sq.Ft',
      'features': '4 Guests | 3 Bedroom | 3 Bathroom',
      'location': 'Whitefield',
      'availability': 'Luxury Villa Available For Immediate Sale',
      'builder': 'Trinity Homes',
      'similars': '12 Similar Listings By Trinity Homes In This Area.'
    },
     {
      'title': '3 Bhk 1200 Sq.Ft Villa For Sale In Whitefield, Bangalore.',
      'price': '₹ 82.00 lakh',
      'image': 'assets/images/real_estate1.png',
      'rating': 4.7,
      'area': '1200 Sq.Ft',
      'features': '4 Guests | 3 Bedroom | 3 Bathroom',
      'location': 'Whitefield',
      'availability': 'Luxury Villa Available For Immediate Sale',
      'builder': 'Trinity Homes',
      'similars': '12 Similar Listings By Trinity Homes In This Area.'
    },
    {
      'title': '3 Bhk 1200 Sq.Ft Villa For Sale In Whitefield, Bangalore.',
      'price': '₹ 82.00 lakh',
      'image': 'assets/images/real_estate1.png',
      'rating': 4.7,
      'area': '1200 Sq.Ft',
      'features': '4 Guests | 3 Bedroom | 3 Bathroom',
      'location': 'Whitefield',
      'availability': 'Luxury Villa Available For Immediate Sale',
      'builder': 'Trinity Homes',
      'similars': '12 Similar Listings By Trinity Homes In This Area.'
    },
    // ...add more...
  ];

 final List<Map<String, dynamic>> rentProperties = [
  {
    'title': '2 Bhk 1890 Sq.Ft Independent House For Rent In Kundalahalli, Bangalore',
    'price': '₹ 47.58 lakh',
    'image': 'assets/images/real_estate1.png',
    'rating': 4.8,
    'area': '1890 Sq.Ft',
    'features': '2 Guests | 2 Bedroom | 2 Bathroom | Semi Furnished | East Face',
    'location': 'Kundalahalli, Bangalore',
    'availability': 'This Spacious 2 Bhk Independent House Is Available For Rent',
    'builder': 'Suresh', // You can remove this if you don't use it in RentPropertyCard
    'similars': 'Similar spacious flats/apartments are available for rent...',
    'ownerName': 'Suresh',
    'ownerType': 'Owner',
  },
  {
    'title': '2 Bhk 1890 Sq.Ft Independent House For Rent In Kundalahalli, Bangalore',
    'price': '₹ 47.58 lakh',
    'image': 'assets/images/real_estate1.png',
    'rating': 4.8,
    'area': '1890 Sq.Ft',
    'features': '2 Guests | 2 Bedroom | 2 Bathroom | Semi Furnished | East Face',
    'location': 'Kundalahalli, Bangalore',
    'availability': 'This Spacious 2 Bhk Independent House Is Available For Rent',
    'builder': 'Suresh',
    'similars': 'Similar spacious flats/apartments are available for rent...',
    'ownerName': 'Suresh',
    'ownerType': 'Owner',
  },

    {
    'title': '2 Bhk 1890 Sq.Ft Independent House For Rent In Kundalahalli, Bangalore',
    'price': '₹ 47.58 lakh',
    'image': 'assets/images/real_estate1.png',
    'rating': 4.8,
    'area': '1890 Sq.Ft',
    'features': '2 Guests | 2 Bedroom | 2 Bathroom | Semi Furnished | East Face',
    'location': 'Kundalahalli, Bangalore',
    'availability': 'This Spacious 2 Bhk Independent House Is Available For Rent',
    'builder': 'Suresh',
    'similars': 'Similar spacious flats/apartments are available for rent...',
    'ownerName': 'Suresh',
    'ownerType': 'Owner',
  }
];

  // Repeat structure for as many as you have! (imitate your screenshot cards)



@override
Widget build(BuildContext context) {
  const Color creamColor = Color(0xFFEFE7C0);        // for top section
  const Color primaryYellow = Color(0xFFD4BB26);     // for filter bar

  return RealEstateLayout(
    child: SingleChildScrollView(
      
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          

          // ------ TOP CREAM SECTION ------
          Container(
            width: double.infinity,
            color: creamColor,
            padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Top Search Row
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Search bar with Buy dropdown inside
                    Expanded(
                      flex: 3,
                      child: Container(
                        height: 40,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(color: Colors.grey.shade400),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Row(
                          children: [
                            // "Buy" Dropdown
                            DropdownButtonHideUnderline(
                              child: DropdownButton<String>(
                                value: buyOrRent,
                                icon: const Icon(Icons.arrow_drop_down),
                                items: ['Buy', 'Rent']
                                    .map((val) => DropdownMenuItem<String>(
                                          value: val,
                                          child: Padding(
                                            padding: const EdgeInsets.symmetric(horizontal: 10),
                                            child: Text(val, style: const TextStyle(fontSize: 13.5)),
                                          ),
                                        ))
                                    .toList(),
                                onChanged: (val) => setState(() => buyOrRent = val!),
                              ),
                            ),
                            // Vertical Divider
                            Container(
                              height: 22,
                              width: 1,
                              color: Colors.grey.shade300,
                              margin: const EdgeInsets.symmetric(horizontal: 4),
                            ),
                            // Search Input
                            Expanded(
                              child: TextField(
                                textAlign: TextAlign.start,
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintText: 'Enter Locality',
                                  isDense: true,
                                  contentPadding: const EdgeInsets.symmetric(vertical: 8, horizontal: 6),
                                  suffixIcon: Icon(Icons.search, size: 21, color: Colors.grey.shade600),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(width: 8),
                    Expanded(
                      flex: 2,
                      child: _DropdownSimple(
                        value: propertyType,
                        items: ['Property Type', 'Flats', 'Plots', 'Villa'],
                        onChanged: (val) => setState(() => propertyType = val!),
                      ),
                    ),
                    const SizedBox(width: 8),
                    Expanded(
                      flex: 2,
                      child: _DropdownSimple(
                        value: budget,
                        items: ['Budget', '<50L', '50L-1Cr', '1Cr+'],
                        onChanged: (val) => setState(() => budget = val!),
                      ),
                    ),
                    const SizedBox(width: 8),
                    Expanded(
                      flex: 2,
                      child: _DropdownSimple(
                        value: ownership,
                        items: ['Ownership', 'Freehold', 'Leasehold'],
                        onChanged: (val) => setState(() => ownership = val!),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                // Breadcrumbs
                Row(
                  children: [
                    Text('Real Estate', style: TextStyle(color: Colors.grey[700], fontSize: 13)),
                    Text(' / ', style: TextStyle(color: Colors.grey[600])),
                    Text('Bangalore Property', style: TextStyle(color: Colors.grey[700], fontSize: 13)),
                    Text(' / ', style: TextStyle(color: Colors.grey[600])),
                    Text(
                      'Property For Sale In Bangalore',
                      style: TextStyle(color: Colors.grey[800], fontWeight: FontWeight.w600, fontSize: 13),
                    ),
                  ],
                ),
              ],
            ),
          ),
          // ------ END TOP CREAM SECTION ------

       
          // ------ FILTER BAR YELLOW ------
          Container(
            width: double.infinity,
            padding: const EdgeInsets.symmetric(vertical: 7, horizontal: 10),
            decoration: BoxDecoration(
              color: primaryYellow,
              borderRadius: BorderRadius.circular(0),
            ),
            child:Row(
              children: List.generate(filterLabels.length, (index) {
                return GestureDetector(
                  onTap: () => setState(() => selectedFilter = index),
                  child: Padding(
                    padding: const EdgeInsets.only(right: 18.0),
                    child: _FilterChip(
                      filterLabels[index],
                      selected: selectedFilter == index,
                    ),
                  ),
                );
              }),
            )
          ),
          // ------ END FILTER BAR ------

          const SizedBox(height: 20),

          // Headings, description, listings...
        if (selectedFilter == 0) ...[
            // Only show the below for 'Sale Property (200)' selection
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 100.0),
              child: Text(
                '33644 Results | Properties For Sale In Bangalore',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 28),
              ),
            ),
            const SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 100.0),
              child: Text(
                'Check out 33644+ properties for sale in Bangalore. Realestateindia.com offers you selection of 100% verified 1/2/3/4 BHK semi-furnished and fully-furnished properties for sale in Bangalore at reasonable price. With 11603+ Flats / Apartments, 10887+ Residential Land / Plots, 5428+ Independent House, ... Luxury property near me in posh localities of Bangalore posted by owner for sale. Explore Now!!',
                style: TextStyle(fontSize: 16, color: Colors.black87, height: 1.8),
              ),
            ),
            const SizedBox(height: 22),

                  // Property cards list as before:
                  ListView.builder(
                    physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: saleProperties.length,
                    itemBuilder: (context, index) {
                      final p = saleProperties[index];
                      return SalePropertyCard(
                  title: p['title'],
                  price: p['price'],
                  image: p['image'],
                  rating: p['rating'],
                  area: p['area'],
                  features: p['features'],
                  location: p['location'],
                  availability: p['availability'],
                  builderName: p['builder'],
                  similars: p['similars'],
                  onContact: () {
  showDialog(
    context: context,
    builder: (context) => ContactWithSeller(),
  );
},

                  onViewPhone: () {
                    // Handle view phone number action
                  },
                );

                    },
                  ),
                ],

                // Rent Properties Section
                if (selectedFilter == 1) ...[
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 100.0),
                    child: Text(
                      '383 Results | House For Rent In Bangalore',
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 28),
                    ),
                  ),
                  
                  const SizedBox(height: 22),

                  // Property cards for RENT
                  ListView.builder(
                    physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: rentProperties.length,
                    itemBuilder: (context, index) {
                      final p = rentProperties[index];
                    return RentPropertyCard(
                  title: p['title'],
                  price: p['price'],
                  image: p['image'],
                  rating: p['rating'],
                  area: p['area'],
                  features: p['features'],
                  location: p['location'],
                  availability: p['availability'],
                  ownerName: p['ownerName'],
                  ownerType: p['ownerType'],
                  similars: p['similars'],
                  onContact: () {
                    // Your callback here, e.g. open chat/contact modal
                  },
                  onViewPhone: () {
                    
                    // Your callback here, e.g. show phone number
                  },
                );

                    },
                  ),
                ],


                        ],
                      ),
                    ),
                  );
                }

                }

// Dropdown Widget for the top bar
class _DropdownSimple extends StatelessWidget {
  final String value;
  final List<String> items;
  final void Function(String?) onChanged;

  const _DropdownSimple(
      {required this.value, required this.items, required this.onChanged});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 38,
      padding: const EdgeInsets.symmetric(horizontal: 4),
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: Colors.grey.shade400),
        borderRadius: BorderRadius.circular(4),
      ),
      child: DropdownButton<String>(
        isExpanded: false,
        value: value,
        icon: const Icon(Icons.arrow_drop_down, size: 22),
        underline: SizedBox(),
        items: items
            .map((val) => DropdownMenuItem<String>(
                  value: val,
                  child: Text(val, style: TextStyle(fontSize: 13.5)),
                ))
            .toList(),
        onChanged: onChanged,
      ),
    );
  }
}

// Filter Chip Widget
class _FilterChip extends StatelessWidget {
  final String label;
  final bool selected;
  const _FilterChip(this.label, {this.selected = false});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 4, horizontal: 28),
      decoration: BoxDecoration(
        color: selected ? Color(0xFFFBF8DB) : Colors.white,
        border: Border.all(
          color: selected ? Colors.black : Colors.grey.shade400,
          width: selected ? 2 : 1,
        ),
        borderRadius: BorderRadius.circular(4),
      ),
      child: Text(
        label,
        style: TextStyle(
          fontSize: 12.5,
          fontWeight: FontWeight.w600,
          color: selected ? Colors.black : Colors.black87,
        ),
      ),
    );
  }
}


// // --- Edit: Property Card Widget for List ---
// class _PropertyCard extends StatelessWidget {
//   const _PropertyCard({
//     required this.title,
//     required this.price,
//     required this.image,
//     required this.rating,
//     required this.area,
//     required this.features,
//     required this.location,
//     required this.availability,
//     required this.builder,
//     required this.similars,
//     Key? key,
//   }) : super(key: key);

//   final String title, price, image, area, features, location, availability, builder, similars;
//   final double rating;

//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.symmetric(horizontal: 100.0, vertical: 10),
//       child: Card(
//         color: Colors.white,
//         elevation: 2,
//         shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14)),
//         child: Padding(
//           padding: const EdgeInsets.all(14.0),
//           child: Row(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               // Image
//               ClipRRect(
//                 borderRadius: BorderRadius.circular(10),
//                 child: Image.asset(
//                   image,
//                   width: 150,
//                   height: 180,
//                   fit: BoxFit.cover,
//                 ),
//               ),
//               const SizedBox(width: 18),

//               // Details Column
//               Expanded(
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     // Title & Price Row
//                     Row(
//                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                       children: [
//                         Flexible(
//                           child: Text(
//                             title,
//                             style: TextStyle(fontWeight: FontWeight.w600, fontSize: 15),
//                           ),
//                         ),
//                         Text(
//                           price,
//                           style: TextStyle(
//                             fontSize: 15.5,
//                             color: Color(0xFFC15D20),
//                             fontWeight: FontWeight.bold,
//                           ),
//                         )
//                       ],
//                     ),
//                     SizedBox(height: 5),
//                     Row(
//                       children: [
//                         Icon(Icons.star, size: 16, color: Colors.amber),
//                         SizedBox(width: 3),
//                         Text('$rating', style: TextStyle(fontWeight: FontWeight.w500, fontSize: 13)),
//                         SizedBox(width: 7),
//                         Text(area, style: TextStyle(color: Colors.grey.shade700)),
//                       ],
//                     ),
//                     SizedBox(height: 4),
//                     Text(features, style: TextStyle(fontSize: 13.5, color: Colors.black87)),
//                     SizedBox(height: 4),
//                     Row(
//                       children: [
//                         Icon(Icons.location_on, size: 15, color: Colors.orange),
//                         SizedBox(width: 4),
//                         Flexible(
//                           child: Text(
//                             location,
//                             style: TextStyle(fontSize: 13, color: Colors.grey.shade700),
//                             overflow: TextOverflow.ellipsis,
//                           ),
//                         ),
//                       ],
//                     ),
//                     SizedBox(height: 7),
//                     Text(
//                       availability,
//                       style: TextStyle(fontSize: 12, color: Colors.green, fontWeight: FontWeight.w500),
//                     ),
//                     SizedBox(height: 10),
//                     // Footer: Builder and buttons
//                     Row(
//                       children: [
//                         CircleAvatar(
//                           radius: 14,
//                           backgroundColor: Colors.grey.shade300,
//                           child: Icon(Icons.business, size: 14, color: Colors.black),
//                         ),
//                         SizedBox(width: 8),
//                         Text(builder, style: TextStyle(fontWeight: FontWeight.w600, fontSize: 13.5)),
//                         Text('  |  Builder', style: TextStyle(fontSize: 13)),
//                         Spacer(),
//                         _FooterButton(
//                           label: "Contact Builder",
//                           icon: Icons.send_outlined,
//                           bgColor: Colors.white,
//                           fgColor: Colors.black87,
//                           border: true,
//                           onTap: () {
                            
//                           },
//                         ),
//                         SizedBox(width: 8),
//                         _FooterButton(
//                           label: "View Phone Number",
//                           icon: Icons.phone,
//                           bgColor: Color(0xFFC1B11F),
//                           fgColor: Colors.black,
//                           onTap: () {
                            
//                           },
//                         ),
//                       ],
//                     ),
//                     SizedBox(height: 7),
//                     Row(
//                       children: [
//                         Text(
//                           similars,
//                           style: TextStyle(fontSize: 12, color: Colors.black87, fontWeight: FontWeight.w500),
//                         ),
//                         Icon(Icons.arrow_right_alt, size: 18, color: Colors.grey.shade700),
//                       ],
//                     )
//                   ],
//                 ),
//               )
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }


// // Footer Button Widget
// class _FooterButton extends StatelessWidget {
//   final String label;
//   final IconData icon;
//   final Color bgColor;
//   final Color fgColor;
//   final bool border;
//   final VoidCallback onTap;
//   const _FooterButton({
//     required this.label,
//     required this.icon,
//     required this.bgColor,
//     required this.fgColor,
//     this.border = false,
//     required this.onTap,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return GestureDetector(
      
//       child: TextButton.icon(
//         icon: Icon(icon, size: 17, color: fgColor),
//         label: Text(label,
//             style: TextStyle(fontSize: 12.5, color: fgColor, fontWeight: FontWeight.w600)),
//         onPressed: onTap,
//         style: TextButton.styleFrom(
//           backgroundColor: bgColor,
//           side: border ? BorderSide(color: Colors.grey.shade400) : BorderSide.none,
//           shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
//           padding: EdgeInsets.symmetric(horizontal: 8, vertical: 7),
//         ),
//       ),
//     );
//   }
// }




// class RentPropertyCard extends StatelessWidget {
//   final String title;
//   final String price;
//   final String image;
//   final double rating;
//   final String area;
//   final String features;
//   final String location;
//   final String availability;
//   final String ownerName;
//   final String ownerType;
//   final String similars;
//   final VoidCallback onContact;
//   final VoidCallback onViewPhone;

//   const RentPropertyCard({
//     required this.title,
//     required this.price,
//     required this.image,
//     required this.rating,
//     required this.area,
//     required this.features,
//     required this.location,
//     required this.availability,
//     required this.ownerName,
//     required this.ownerType,
//     required this.similars,
//     required this.onContact,
//     required this.onViewPhone,
//     Key? key,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Card(
//       color: Colors.white,
//       elevation: 2,
//       margin: const EdgeInsets.symmetric(horizontal: 100.0, vertical: 10),
//       shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14)),
//       child: Padding(
//         padding: const EdgeInsets.all(14.0),
//         child: Row(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             // Property Image
//             ClipRRect(
//               borderRadius: BorderRadius.circular(10),
//               child: Image.asset(
//                 image,
//                 width: 150,
//                 height: 180,
//                 fit: BoxFit.cover,
//               ),
//             ),
//             const SizedBox(width: 18),
//             // Details Column
//             Expanded(
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   // Title & Price Row
//                   Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     children: [
//                       Flexible(
//                         child: Text(
//                           title,
//                           style: const TextStyle(fontWeight: FontWeight.w600, fontSize: 15),
//                         ),
//                       ),
//                       Text(
//                         price,
//                         style: const TextStyle(
//                           fontSize: 15.5,
//                           color: Color(0xFFC15D20),
//                           fontWeight: FontWeight.bold,
//                         ),
//                       )
//                     ],
//                   ),
//                   const SizedBox(height: 5),
//                   Row(
//                     children: [
//                       const Icon(Icons.star, size: 16, color: Colors.amber),
//                       const SizedBox(width: 3),
//                       Text('$rating',
//                           style: const TextStyle(
//                               fontWeight: FontWeight.w500, fontSize: 13)),
//                       const SizedBox(width: 7),
//                       Text(area, style: TextStyle(color: Colors.grey.shade700)),
//                     ],
//                   ),
//                   const SizedBox(height: 4),
//                   Text(features, style: const TextStyle(fontSize: 13.5, color: Colors.black87)),
//                   const SizedBox(height: 4),
//                   Row(
//                     children: [
//                       const Icon(Icons.location_on, size: 15, color: Colors.orange),
//                       const SizedBox(width: 4),
//                       Flexible(
//                         child: Text(
//                           location,
//                           style: TextStyle(fontSize: 13, color: Colors.grey.shade700),
//                           overflow: TextOverflow.ellipsis,
//                         ),
//                       ),
//                     ],
//                   ),
//                   const SizedBox(height: 7),
//                   Text(
//                     availability,
//                     style: const TextStyle(fontSize: 12, color: Colors.green, fontWeight: FontWeight.w500),
//                   ),
//                   const SizedBox(height: 10),
//                   Row(
//                     children: [
//                       // Owner Initial & Name
//                       CircleAvatar(
//                         radius: 18,
//                         backgroundColor: const Color(0xFFD4BB26),
//                         child: Text(
//                           ownerName.isNotEmpty ? ownerName[0] : "",
//                           style: const TextStyle(
//                             color: Colors.black,
//                             fontWeight: FontWeight.bold,
//                             fontSize: 18,
//                           ),
//                         ),
//                       ),
//                       const SizedBox(width: 10),
//                       Column(
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: [
//                           Text(ownerName,
//                               style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 15)),
//                           Text(ownerType, style: TextStyle(color: Colors.grey[700], fontSize: 13)),
//                         ],
//                       ),
//                       const Spacer(),
//                       _FooterButton(
//                         label: "Contact Builder",
//                         icon: Icons.mail_outline,
//                         bgColor: Colors.white,
//                         fgColor: Colors.black,
//                         border: true,
//                         onTap: onContact,
//                       ),
//                       const SizedBox(width: 8),
//                       _FooterButton(
//                         label: "View Phone Number",
//                         icon: Icons.phone,
//                         bgColor: const Color(0xFFC1B11F),
//                         fgColor: Colors.black,
//                         onTap: onViewPhone,
//                       ),
//                     ],
//                   ),
//                   const SizedBox(height: 7),
//                   Row(
//                     children: [
//                       Text(
//                         similars,
//                         style: const TextStyle(fontSize: 12, color: Colors.black87, fontWeight: FontWeight.w500),
//                       ),
//                       Icon(Icons.arrow_right_alt, size: 18, color: Colors.grey.shade700),
//                     ],
//                   )
//                 ],
//               ),
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }
