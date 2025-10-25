import 'package:flutter/material.dart';

class LanguageToggleButton extends StatefulWidget {
  final Function(bool isEnToMl) onToggle; // callback to parent

  const LanguageToggleButton({Key? key, required this.onToggle}) : super(key: key);

  @override
  _LanguageToggleButtonState createState() => _LanguageToggleButtonState();
}

class _LanguageToggleButtonState extends State<LanguageToggleButton> {
  bool isEnToMl = true; // default selected

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,

      children: [
        GestureDetector(
          onTap: () {
            setState(() {
              isEnToMl = true;
              widget.onToggle(isEnToMl);
            });
          },
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: width * 0.153, vertical: width * 0.027),
            decoration: BoxDecoration(
              color: isEnToMl ? Colors.white : Colors.transparent,
              borderRadius: BorderRadius.circular(width * 0.02),
              boxShadow: isEnToMl ? [BoxShadow(color: Colors.black12, blurRadius: 4)] : [],
            ),
            child: Row(
              children: [
                Text(
                  "EN",
                  style: TextStyle(
                    fontSize: width*0.036,
                    fontWeight: FontWeight.bold,
                    color: isEnToMl ? Colors.blue : Colors.black,
                  ),
                ),
                Icon(Icons.arrow_right_alt, color: isEnToMl ? Colors.blue : Colors.black),
                Text(
                  "ML",
                  style: TextStyle(
                    fontSize: width*0.036,
                    fontWeight: FontWeight.bold,
                    color: isEnToMl ? Colors.blue : Colors.black,
                  ),
                ),
              ],
            ),
          ),
        ),
        SizedBox(width: width*0.02),

        // ML → EN button
        GestureDetector(
          onTap: () {
            setState(() {
              isEnToMl = false;
              widget.onToggle(isEnToMl); // notify parent
            });
          },
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: width * 0.153, vertical: width * 0.025),
            decoration: BoxDecoration(
              color: !isEnToMl ? Colors.white : Colors.transparent,
              borderRadius: BorderRadius.circular(width * 0.02),
              boxShadow: !isEnToMl ? [BoxShadow(color: Colors.black12, blurRadius: 4)] : [],
            ),
            child: Row(
              children: [
                Text(
                  "ML",
                  style: TextStyle(
                    fontSize: width*0.036,
                    fontWeight: FontWeight.bold,
                    color: !isEnToMl ? Colors.blue : Colors.black,
                  ),
                ),
                Icon(Icons.arrow_right_alt, color: !isEnToMl ? Colors.blue : Colors.black),
                Text(
                  "EN",
                  style: TextStyle(
                    fontSize: width*0.036,
                    fontWeight: FontWeight.bold,
                    color: !isEnToMl ? Colors.blue : Colors.black,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
