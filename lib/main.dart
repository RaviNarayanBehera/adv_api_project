import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'PixaBay/provider/pixa_provider.dart';
import 'PixaBay/view/pixa_screen.dart';



void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => SearchProvider(),
        ),
      ],
      builder: (context, child) => MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          '/': (context) => const SearchScreen(),
        },
      ),
    );
  }
}