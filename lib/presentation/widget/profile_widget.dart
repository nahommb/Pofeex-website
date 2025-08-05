import 'package:flutter/material.dart';

class HomeWidget extends StatelessWidget {
  const HomeWidget({super.key});

  @override
  Widget build(BuildContext context) {

    final screenHeight = MediaQuery.of(context).size.height;

    return Container(
      height: screenHeight*0.9,
      width: double.infinity,
      color: Colors.black,
    );
  }
}