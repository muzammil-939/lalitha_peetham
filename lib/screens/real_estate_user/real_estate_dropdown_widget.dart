import 'package:flutter/material.dart';

// 1. CustomDropdown
class CustomDropdown extends StatefulWidget {
  final Widget display;
  final Widget Function(VoidCallback hide) dropdownContent;

  const CustomDropdown({
    required this.display,
    required this.dropdownContent,
    Key? key,
  }) : super(key: key);

  @override
  State<CustomDropdown> createState() => _CustomDropdownState();
}

class _CustomDropdownState extends State<CustomDropdown> {
  final LayerLink _layerLink = LayerLink();
  OverlayEntry? _overlayEntry;

  void _showDropdown() {
    _overlayEntry = OverlayEntry(
      builder: (context) => Positioned(
        width: 330,
        child: CompositedTransformFollower(
          link: _layerLink,
          offset: const Offset(0, 44),
          showWhenUnlinked: false,
          child: Material(
            color: Colors.transparent,
            child: widget.dropdownContent(_hideDropdown),
          ),
        ),
      ),
    );
    Overlay.of(context)!.insert(_overlayEntry!);
  }

  void _hideDropdown() {
    _overlayEntry?.remove();
    _overlayEntry = null;
  }

  @override
  void dispose() {
    _hideDropdown();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return CompositedTransformTarget(
      link: _layerLink,
      child: GestureDetector(
        onTap: () {
          if (_overlayEntry == null) {
            _showDropdown();
          } else {
            _hideDropdown();
          }
        },
        child: widget.display,
      ),
    );
  }
}

// 2. BudgetColumn Widget for Min/Max columns
class BudgetColumn extends StatelessWidget {
  final String title;
  final String selectedValue;
  final List<String> options;
  final ValueChanged<String> onChanged;

  const BudgetColumn({
    Key? key,
    required this.title,
    required this.selectedValue,
    required this.options,
    required this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(title, style: const TextStyle(
          fontWeight: FontWeight.bold, fontSize: 14, letterSpacing: 0.5,
        )),
        const SizedBox(height: 10),
        ...options.map((v) => Padding(
          padding: const EdgeInsets.only(bottom: 7),
          child: Row(
            children: [
              Radio<String>(
                value: v,
                groupValue: selectedValue,
                onChanged: (val) => onChanged(val!),
                visualDensity: VisualDensity.compact,
                materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
              ),
              const SizedBox(width: 7),
              Text(v, style: const TextStyle(fontSize: 13)),
            ],
          ),
        )),
      ],
    );
  }
}
