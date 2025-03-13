import 'package:flutter/material.dart';
import 'package:myburgo_test/Store/AppStore.dart';
import 'package:myburgo_test/screen/splesh_screen.dart';

AppStore appStore = AppStore();
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: SpleshScreen());
  }
}
