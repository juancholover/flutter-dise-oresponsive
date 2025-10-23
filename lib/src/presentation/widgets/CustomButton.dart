import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final Widget child;
  final Color backgroundColor;
  final Color textColor;
  final double fontSize;
  final double borderRadius;
  final double? width;
  final double height;
  final FontWeight fontWeight;
  final VoidCallback onPressed;

  const CustomButton({
    super.key,
    required this.child,
    required this.onPressed,
    this.backgroundColor = Colors.blue,
    this.textColor = Colors.white,
    this.fontSize = 18,
    this.borderRadius = 12,
    this.width,
    this.height = 50,
    this.fontWeight = FontWeight.bold,
  });

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints(
        minWidth: 100, // 🔹 ancho mínimo
        maxWidth: width ?? double.infinity, // 🔹 se adapta al texto
      ),
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: backgroundColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ),
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
        ),
        child: child, // 👈 ahora puede recibir cualquier widget
      ),
    );
  }
}
