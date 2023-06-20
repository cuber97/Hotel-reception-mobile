import 'package:flutter/material.dart';
import 'package:hotel_reception_mobile/widgets/navbar.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: NavBar(),
        appBar: AppBar(
          title: const Text('Hotel Reception'),
        ),
        body: const Center(
          child: Text(
            'Main Page',
            style: TextStyle(fontSize: 40),
          ),
        ),
      );
  }
}