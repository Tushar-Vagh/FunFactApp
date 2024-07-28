import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../Provider/themeProvider.dart';

class Themeswitch extends StatefulWidget {
  const Themeswitch({super.key});

  @override
  State<Themeswitch> createState() => _ThemeswitchState();
}

class _ThemeswitchState extends State<Themeswitch> {
  @override
  Widget build(BuildContext context) {
    var themeProvider = Provider.of<Themeprovider>(context);
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Text(
            "Theme Mode",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          Row(
            children: [
              Switch(
                  value: themeProvider.isDarkmodeChecked,
                  onChanged: (value) {
                    themeProvider.updateMode(darkMode: value);
                    setState(() {});
                  }),
              const SizedBox(width: 20),
              Text(
                themeProvider.isDarkmodeChecked ? "Dark Mode" : "Light Mode",
                style:
                    const TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
              )
            ],
          )
        ],
      ),
    );
  }
}
