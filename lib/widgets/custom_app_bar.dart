import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custom_search_icon.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key, required this.title,this.icon, this.onTap});
  final String title ;
  final IconData? icon;
  final void Function()? onTap ;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(title,
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold

          )),
          if (icon != null)
            CustomSearchIcon(icon: icon!,onTap: onTap,)
        ],
      ),
    );
  }
}
