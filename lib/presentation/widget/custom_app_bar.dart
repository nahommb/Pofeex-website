import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 20,right: 20),
      width: double.infinity,
      height: 70,
      color: Colors.amber,
      child: Row(
        children: [
          Text('POFEEX')
          
        ],
      ),
    );
  }
}
