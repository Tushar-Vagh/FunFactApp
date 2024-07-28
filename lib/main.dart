import 'package:flutter/material.dart';
import 'package:funfacts/Provider/themeProvider.dart';
import 'package:funfacts/Screen/main_Screen.dart';
import 'package:funfacts/Widgets/themeSwitch.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(ChangeNotifierProvider(
      create: (context) => Themeprovider(), child: const MyApp()));
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
    Provider.of<Themeprovider>(context, listen: false).loadmode();
  }

  @override
  Widget build(BuildContext context) {
    var themeProvider = Provider.of<Themeprovider>(context);
    return MaterialApp(
      theme: themeProvider.isDarkmodeChecked
          ? ThemeData.dark(useMaterial3: true)
          : ThemeData.light(useMaterial3: true),
      home: const MainScreen(),
    );
  }
}
