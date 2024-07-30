import 'package:adv_api_project/PixaBy/view/pixa_detail_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'PixaBy/provider/pixa_provider.dart';
import 'PixaBy/view/pixa_screen.dart';



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
          '/detail': (context) => const DetailPage(),
        },
      ),
    );
  }
}