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
    'Astrology',
    'Matrimony',
    'Online Pooja',
    'Function Hall Booking',
    'Gemstone Selling',
    'Catering',
    'Photography',
    'Flower Decoration',
    'Sannaimelam',
    'Event Management',
    'Online Muhurthas',
    'Referal & Even',
    'Nithyapooja Subscription',
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
        onTap: () => Navigator.pop(context),
        child: Container(
          width: double.infinity,
          height: double.infinity,
          child: Stack(
            children: [
              // Close button area - tap anywhere to close
              Container(
                width: double.infinity,
                height: double.infinity,
                color: Colors.transparent,
              ),

              // Dropdown menu
              Positioned(
                top: 80,
                left: 20,
                right: 20,
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
                            decoration: BoxDecoration(
                              color: Color(0xFFF5E6A8), // Cream/beige color
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: Column(
                              children: [
                                // Header with close button
                                Container(
                                  padding: EdgeInsets.all(16),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        'Services Menu',
                                        style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black87,
                                        ),
                                      ),
                                      GestureDetector(
                                        onTap: () => Navigator.pop(context),
                                        child: Container(
                                          padding: EdgeInsets.all(4),
                                          decoration: BoxDecoration(
                                            color: Colors.black.withOpacity(
                                              0.1,
                                            ),
                                            shape: BoxShape.circle,
                                          ),
                                          child: Icon(
                                            Icons.close,
                                            size: 20,
                                            color: Colors.black87,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),

                                // Grid Menu items
                                Container(
                                  constraints: BoxConstraints(
                                    maxHeight:
                                        MediaQuery.of(context).size.height *
                                        0.6,
                                  ),
                                  child: SingleChildScrollView(
                                    padding: EdgeInsets.all(16),
                                    child: GridView.builder(
                                      shrinkWrap: true,
                                      physics: NeverScrollableScrollPhysics(),
                                      gridDelegate:
                                          SliverGridDelegateWithFixedCrossAxisCount(
                                            crossAxisCount: 4, // 2 columns
                                            crossAxisSpacing: 12,
                                            mainAxisSpacing: 12,
                                            childAspectRatio:
                                                2.5, // Adjust height ratio
                                          ),
                                      itemCount: menuItems.length,
                                      itemBuilder: (context, index) {
                                        return GestureDetector(
                                          onTap: () {
                                            print(
                                              'Selected: ${menuItems[index]}',
                                            );
                                            Navigator.pop(context);
                                            _handleMenuItemTap(
                                              menuItems[index],
                                            );
                                          },
                                          child: Container(
                                            decoration: BoxDecoration(
                                              color: Colors.white.withOpacity(
                                                0.3,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(75),
                                              border: Border.all(
                                                color: Colors.black.withOpacity(
                                                  0.1,
                                                ),
                                                width: 1,
                                              ),
                                            ),
                                            child: Center(
                                              child: Padding(
                                                padding: EdgeInsets.symmetric(
                                                  horizontal: 8,
                                                ),
                                                child: Text(
                                                  menuItems[index],
                                                  textAlign: TextAlign.center,
                                                  style: TextStyle(
                                                    fontSize: 24,
                                                    color: Colors.black87,
                                                    fontWeight: FontWeight.w600,
                                                  ),
                                                  maxLines: 2,
                                                  overflow:
                                                      TextOverflow.ellipsis,
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

  void _handleMenuItemTap(String item) {
    // Handle navigation based on menu item
    switch (item) {
      case 'Astrology':
        // Navigate to astrology page
        break;
      case 'Matrimony':
        context.go('/matri_dashboard');
        // Navigate to matrimony page
        break;
      case 'Online Pooja':
        // Navigate to online pooja page
        break;
      case 'Function Hall Booking':
        // Navigate to function hall booking page
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
    'Astrology',
    'Matrimony',
    'Online Pooja',
    'Function Hall Booking',
    'Gemstone Selling',
    'Catering',
    'Photography',
    'Flower Decoration',
    'Sannaimelam',
    'Event Management',
    'Online Muhurthas',
    'Referal & Even',
    'Nithyapooja Subscription',
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
                                  padding: EdgeInsets.all(16),
                                  child: GridView.builder(
                                    shrinkWrap: true,
                                    physics: NeverScrollableScrollPhysics(),
                                    gridDelegate:
                                        SliverGridDelegateWithFixedCrossAxisCount(
                                          crossAxisCount: 2,
                                          crossAxisSpacing: 12,
                                          mainAxisSpacing: 12,
                                          childAspectRatio: 2.5,
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
                                              width: 6,
                                            ),
                                          ),
                                          child: Center(
                                            child: Padding(
                                              padding: EdgeInsets.symmetric(
                                                horizontal: 8,
                                              ),
                                              child: Text(
                                                menuItems[index],
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                  fontSize: 20,
                                                  color: Colors.black87,
                                                  fontWeight: FontWeight.w500,
                                                ),
                                                maxLines: 2,
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
