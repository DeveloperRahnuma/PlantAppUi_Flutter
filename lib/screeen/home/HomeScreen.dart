import 'package:flutter/material.dart';
import 'package:plant_flutter_app_ui/screeen/home/HomeComponent/Component/Body.dart';
import 'package:plant_flutter_app_ui/screeen/home/HomeComponent/Component/BottomNavigation.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final screensize = MediaQuery.of(context).size;
    
    return Scaffold(
      body: const HomeBody(),
      bottomNavigationBar: BottomNavigation(),
    );
  }
}
