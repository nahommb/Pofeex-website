import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 40,right: 20),
      width: double.infinity,
      height: 90,
      color: Colors.black,
      child: Row(
        children: [
          Image.asset("assets/images/logo.png",)
          
        ],
      ),
    );
  }
}
