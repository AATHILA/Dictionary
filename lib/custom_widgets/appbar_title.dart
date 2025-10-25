import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final String? subtitle;
  final Widget? extraWidget; // optional for Home page (e.g., English ⇄ Malayalam)
  final double height;

  const CustomAppBar({
    super.key,
    required this.title,
    this.subtitle,
    this.extraWidget,
    this.height = kToolbarHeight * 1.2, // default height, can adjust if needed
  });

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;

    return AppBar(
      centerTitle: true,
      toolbarHeight:width*0.1,


      title: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            title,
            style: TextStyle(
              fontSize: width * 0.055,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          if (subtitle != null) ...[
            SizedBox(height: width * 0.01),
            Text(
              subtitle!,
              style: TextStyle(
                fontSize: width * 0.035,
                color: Colors.white70,
              ),
            ),
          ],
          if (extraWidget != null) ...[
            SizedBox(height: width * 0.01),
            extraWidget!,
          ],
        ],
      ),
      flexibleSpace: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Colors.blue.shade600,
              Colors.blue.shade200,
              Colors.blue.shade100
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            stops: [0.0, 0.6, 1.0],
          ),
        ),
      ),
      backgroundColor: Colors.blue,
      foregroundColor: Colors.white,
      elevation: 3,
      shadowColor: Colors.black26,
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(height);
}
