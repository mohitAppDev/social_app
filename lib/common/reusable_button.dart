import 'package:flutter/material.dart';

class ReusableButton extends StatelessWidget {
  final Widget ?child;
  final Function() ?onPressed;

  const ReusableButton({
    super.key,
    @required this.child,
    @required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      child: child,
    );
  }
}