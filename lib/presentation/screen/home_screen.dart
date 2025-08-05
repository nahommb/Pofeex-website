import 'package:flutter/material.dart';
import 'package:pofeex/presentation/widget/about.dart';
import 'package:pofeex/presentation/widget/custom_app_bar.dart';
import 'package:pofeex/presentation/widget/footer.dart';
import 'package:pofeex/presentation/widget/profile_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          CustomAppBar(),
          HomeWidget(),
          About(),
          Footer()
        ],
      ),
    );
  }
}