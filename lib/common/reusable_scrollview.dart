import 'package:flutter/material.dart';

class ReusableScrollBar extends StatelessWidget {
  final Widget child;
  final ScrollController? controller;
  const ReusableScrollBar({super.key,
    required this.child,
    @required this.controller
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: const BorderRadius.only(
        topLeft: Radius.circular(20),
        topRight: Radius.circular(20),
        bottomRight: Radius.circular(20),
        bottomLeft: Radius.circular(20),
      ),
      child: Scrollbar(
        controller: controller,
        thickness: 8,
        radius: const Radius.circular(14),
        interactive: true,
        scrollbarOrientation: ScrollbarOrientation.right,
        child: child,
      ),
    );
  }
}