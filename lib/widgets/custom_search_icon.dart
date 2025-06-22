import 'package:flutter/material.dart';

class CustomSearchIcon extends StatelessWidget {
  const CustomSearchIcon({super.key, required this.icon, this.onTap});
  final IconData icon;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50,
      height: 50,
      decoration: BoxDecoration(
        color: Colors.grey.withAlpha((.2 * 255).round()),
        borderRadius: BorderRadius.circular(12),
      ),
      child: IconButton(onPressed: onTap, icon: Icon(icon, size: 28)),
    );
  }
}
