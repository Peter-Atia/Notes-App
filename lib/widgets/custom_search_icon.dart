import 'package:flutter/material.dart';

class CustomSearchIcon extends StatelessWidget {
  const CustomSearchIcon({super.key, required this.icon});
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50,
      height: 50,
      decoration: BoxDecoration(
        color: Colors.grey.withAlpha((.2 * 255).round()),
        borderRadius: BorderRadius.circular(12),
      ),
      child: IconButton(onPressed: () {}, icon: Icon(icon, size: 28)),
    );
  }
}
