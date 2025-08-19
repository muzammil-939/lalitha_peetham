import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:lalitha_peetham/screens/matrimony/matri_dashboard.dart';

class DropdownGridMenu extends StatefulWidget {
  @override
  _DropdownGridMenuState createState() => _DropdownGridMenuState();
}

class _DropdownGridMenuState extends State<DropdownGridMenu>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  final List<String> menuItems = [
    'Nithyapooja Subscription',
    'Astrology',
    'Matrimony',
    'E - Pooja',
    'Upcomming Pooja',
    'Real Estate',
    'Function Hall Booking',
    'E - STORE',
    'Catering',
    'Photography',
    'Flower Decoration',
    'Sannaimelam',
    'Event Management',
    'Pandit Booking',
    'Online Muhurthas',
    'Palm Reading',
    'Referal & Even',
    'Online Vasthu Property',
    'Poojavidhanam Course Calling',
    'Yoga Classes Conducting',
    'Ayurveda Consultancy',
  ];

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: Duration(milliseconds: 300),
      vsync: this,
    );
    _animation = CurvedAnimation(parent: _controller, curve: Curves.easeInOut);
    _controller.forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
@override
Widget build(BuildContext context) {
  return Scaffold(
    backgroundColor: Colors.black.withOpacity(0.5),
    body: GestureDetector(
      behavior: HitTestBehavior.opaque, // Detect taps anywhere
      onTap: () => Navigator.pop(context), // Close when background tapped
      child: Center(
        child: GestureDetector(
          onTap: () {}, // Absorb taps inside menu so it doesn't close
          child: AnimatedBuilder(
            animation: _animation,
            builder: (context, child) {
              return Transform.scale(
                scale: _animation.value,
                alignment: Alignment.topCenter,
                child: Opacity(
                  opacity: _animation.value,
                  child: Material(
                    elevation: 8,
                    borderRadius: BorderRadius.circular(12),
                    child: Container(
                      width: 350,
                      height: 400,
                      decoration: BoxDecoration(
                        color: Color(0xFFF5E6A8),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: SingleChildScrollView(
                        padding: EdgeInsets.all(16),
                        child: Column(
                          children: menuItems.map((item) {
                            return GestureDetector(
                              onTap: () {
                                Navigator.pop(context);
                                _handleMenuItemTap(item);
                              },
                              child: Container(
                                width: double.infinity,
                                padding: EdgeInsets.symmetric(vertical: 16),
                                margin: EdgeInsets.only(bottom: 8),
                                child: Text(
                                  item,
                                  style: TextStyle(
                                    fontSize: 18,
                                    color: Colors.black87,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                            );
                          }).toList(),
                        ),
                      ),
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      ),
    ),
  );
}

  void _handleMenuItemTap(String item) {
    // Handle navigation based on menu item
    switch (item) {
      case 'Ayurveda Consultancy':
        context.go('/ayurvedha');
        // Navigate to Ayurveda page
        break;
      case 'Matrimony':
        context.go('/matri_dashboard');
        // Navigate to matrimony page
        break;
      case 'Yoga Classes Conducting':
        context.go('/welcome_screen');
        // Navigate to Yoga Classes Conducting page
        break;
      case 'Sannaimelam':
        context.go('/sanni_melam_welcome_screen');
        // Navigate to Sannaimelam page
        break;
      case 'Event Management':
        context.go('/em_welcome_screen');
        // Navigate to Sannaimelam page
        break;
      case 'Referal & Even':
        context.go('/refer_and_earn');
        // Navigate to Sannaimelam page
        break;
      case 'Flower Decoration':
        context.go('/flower_deco_home');
        // Navigate to Sannaimelam page
        break;

      case 'Poojavidhanam Course Calling':
        context.go('/pv_home_screen');
        break;

      case 'Online Vasthu Property':
        context.go('/online_vastu_pooja');
        break;

      case 'Real Estate':
        context.go('/real_estate_welcome_page');
        break;

      case 'Photography':
        context.go('/photography_home');
        break;

      case 'E - Pooja':
        context.go('/upcoming_pooja');
        break;

      case 'Nithyapooja Subscription':
        context.go('/nityapooja_packages');
        break;
      case 'Palm Reading':
        context.go('/palm_reading_home');
        break;
      case 'Astrology':
        context.go('/astrology_welcomescreen');
        break;
      case 'Catering':
        context.go('/catering_welcome_screen');
        break;
      case 'Pandit Booking':
        context.go('/pandit_booking_home');
        break;

      case 'E - STORE':
        context.go('/e_store_shop_allproducts');
        break;

      case 'Function Hall Booking':
        context.go('/hall_booking_home');
        break;

      case 'Online Muhurthas':
        context.go('/online_muhurthas_home');
        break;
      case 'Upcomming Pooja':
        context.go('/upcoming_pooja_welcome_screen');
        break;  

      // Add more cases as needed
      default:
        // Handle other menu items
        break;
    }
  }
}

// Alternative: Overlay-based grid dropdown menu
class OverlayDropdownGridMenu {
  static OverlayEntry? _overlayEntry;

  static void show(BuildContext context) {
    if (_overlayEntry != null) return;

    _overlayEntry = OverlayEntry(
      builder: (context) => _DropdownGridOverlay(onClose: () => hide()),
    );

    Overlay.of(context)?.insert(_overlayEntry!);
  }

  static void hide() {
    _overlayEntry?.remove();
    _overlayEntry = null;
  }
}

class _DropdownGridOverlay extends StatefulWidget {
  final VoidCallback onClose;

  const _DropdownGridOverlay({required this.onClose});

  @override
  _DropdownGridOverlayState createState() => _DropdownGridOverlayState();
}

class _DropdownGridOverlayState extends State<_DropdownGridOverlay>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  final List<String> menuItems = [
    'Nithyapooja Subscription',
    'Astrology',
    'Matrimony',
    'E - Pooja',
    'Upcomming Pooja',
    'Real Estate',
    'Function Hall Booking',
    'E - STORE',
    'Catering',
    'Photography',
    'Flower Decoration',
    'Sannaimelam',
    'Event Management',
    'Pandit Booking',
    'Online Muhurthas',
    'Palm Reading',
    'Referal & Earn',
    'Pandit Registration'
    'Online Vasthu Property',
    'Poojavidhanam Course Calling',
    'Yoga Classes Conducting',
    'Ayurveda Consultancy',
  ];

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: Duration(milliseconds: 250),
      vsync: this,
    );
    _animation = CurvedAnimation(parent: _controller, curve: Curves.easeOut);
    _controller.forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  // Helper method to get responsive values
  bool _isDesktop(BuildContext context) {
    return MediaQuery.of(context).size.width >= 1024;
  }

  bool _isTablet(BuildContext context) {
    return MediaQuery.of(context).size.width >= 768 &&
        MediaQuery.of(context).size.width < 1024;
  }

  int _getCrossAxisCount(BuildContext context) {
    if (_isDesktop(context)) return 5;
    if (_isTablet(context)) return 4;
    return 3;
  }

  double _getChildAspectRatio(BuildContext context) {
    if (_isDesktop(context)) return 3.0;
    if (_isTablet(context)) return 2.9;
    return 2.8;
  }

  double _getFontSize(BuildContext context) {
    if (_isDesktop(context)) return 20;
    if (_isTablet(context)) return 16;
    return 16;
  }

  double _getHorizontalPadding(BuildContext context) {
    if (_isDesktop(context)) return 8;
    if (_isTablet(context)) return 7;
    return 6;
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.black.withOpacity(0.3),
      child: GestureDetector(
        onTap: widget.onClose,
        child: Container(
          width: double.infinity,
          height: double.infinity,
          child: Stack(
            children: [
              Positioned(
                top: 120,
                left: 20,
                right: 20,
                child: AnimatedBuilder(
                  animation: _animation,
                  builder: (context, child) {
                    return Transform.translate(
                      offset: Offset(0, -20 * (1 - _animation.value)),
                      child: Opacity(
                        opacity: _animation.value,
                        child: Container(
                          decoration: BoxDecoration(
                            color: Color(0xFFF5E6A8),
                            borderRadius: BorderRadius.circular(12),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withOpacity(0.2),
                                blurRadius: 10,
                                offset: Offset(0, 5),
                              ),
                            ],
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Container(
                                constraints: BoxConstraints(
                                  maxHeight:
                                      MediaQuery.of(context).size.height * 0.6,
                                ),
                                child: SingleChildScrollView(
                                  padding: EdgeInsets.all(12),
                                  child: GridView.builder(
                                    shrinkWrap: true,
                                    physics: NeverScrollableScrollPhysics(),
                                    gridDelegate:
                                        SliverGridDelegateWithFixedCrossAxisCount(
                                          crossAxisCount: _getCrossAxisCount(
                                            context,
                                          ),
                                          crossAxisSpacing: 8,
                                          mainAxisSpacing: 8,
                                          childAspectRatio:
                                              _getChildAspectRatio(context),
                                        ),
                                    itemCount: menuItems.length,
                                    itemBuilder: (context, index) {
                                      return InkWell(
                                        onTap: () {
                                          widget.onClose();
                                          print(
                                            'Selected: ${menuItems[index]}',
                                          );
                                        },
                                        borderRadius: BorderRadius.circular(8),
                                        child: Container(
                                          decoration: BoxDecoration(
                                            color: Colors.white.withOpacity(
                                              0.3,
                                            ),
                                            borderRadius: BorderRadius.circular(
                                              8,
                                            ),
                                            border: Border.all(
                                              color: Colors.black.withOpacity(
                                                0.1,
                                              ),
                                              width: 0.5,
                                            ),
                                          ),
                                          child: Center(
                                            child: Padding(
                                              padding: EdgeInsets.symmetric(
                                                horizontal:
                                                    _getHorizontalPadding(
                                                      context,
                                                    ),
                                                vertical: 4,
                                              ),
                                              child: Text(
                                                menuItems[index],
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                  fontSize: _getFontSize(
                                                    context,
                                                  ),
                                                  color: Colors.black87,
                                                  fontWeight: FontWeight.w600,
                                                  height: 1.2,
                                                ),
                                                maxLines: 3,
                                                overflow: TextOverflow.ellipsis,
                                              ),
                                            ),
                                          ),
                                        ),
                                      );
                                    },
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
