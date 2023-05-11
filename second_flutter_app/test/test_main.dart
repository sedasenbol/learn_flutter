import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

   @override
  Widget build(BuildContext context) {
    return MaterialApp(
     title: 'second_flutter_app',
     debugShowCheckedModeBanner: true,
     theme: ThemeData(
        primaryColor: Colors.black12,
     ),
     home: Scaffold(
       appBar: AppBar(
         title: const Text('Stateless'),
         backgroundColor: Colors.black,
         ),
      ),
   );
  }
}