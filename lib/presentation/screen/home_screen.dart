import 'package:flutter/material.dart';
import 'package:pofeex/presentation/widget/custom_app_bar.dart';
import 'package:pofeex/presentation/widget/profile_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomAppBar(),
        HomeWidget()
      ],
    );
  }
}