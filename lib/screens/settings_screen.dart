import 'package:flutter/material.dart';
import 'package:nigandu/custom_widgets/appbar_title.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({super.key});

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  List<Map> settings=[{
    "icon":Icons.volume_up,
    "title":"Audio Pronunciation",
    "subtitle": "Enable audio for word \n pronunciation",
    "button": Icons.access_alarm_outlined
  },
    {
      "icon":Icons.ac_unit_outlined,
      "title":"Dark Mode",
      "subtitle": "Switch to dark theme",
      "button": Icons.access_alarm_outlined
    },
    {
      "icon":Icons.ac_unit_outlined,
      "title":"Dark Mode",
      "subtitle": "Switch to dark theme",
      "button": Icons.access_alarm_outlined
    },


  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: "Settings",subtitle: "Customize your experience"),
      body: ListTile(
        leading: Icon(Icons.volume_up,
        ),
      ),
    );
  }
}
