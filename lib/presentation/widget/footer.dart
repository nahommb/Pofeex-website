import 'package:flutter/material.dart';

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 500,
      width: double.infinity,
      // color: const Color.fromARGB(255, 83, 82, 82),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('The Problem',style: TextStyle(fontSize: 35,fontWeight: FontWeight.bold,color: Colors.blueAccent),),
          Text('oiujio doawodia paowdpo oiuioiyhwyadctfte oiajdjlmal iwu90dw'),
          Text('jwid dpwd0a pa wdawod poaiw0-id 09wjdw ad'),
          SizedBox(height: 50,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              problemCard(),
              problemCard(),
              problemCard()
            ],
          )
        ],
      ),
    );
  }
  Container problemCard(){
    return Container(
      height: 200,
      width: 500,
      color: Colors.blueAccent,
    );
  }
}