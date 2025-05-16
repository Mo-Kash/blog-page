import 'package:blogs_section/pages/inbox_page.dart';
import 'package:blogs_section/themes/theme_provider.dart';
import 'package:provider/provider.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
      ChangeNotifierProvider(
        create: (context)=>ThemeProvider(),
        child: const MyApp(),
      )
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: InboxPage(),
      theme: Provider.of<ThemeProvider>(context).themeData,
    );
  }
}
