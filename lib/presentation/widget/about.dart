import 'package:flutter/material.dart';

class About extends StatelessWidget {
  const About({super.key});

  @override
  Widget build(BuildContext context) {

    final screenHeight = MediaQuery.of(context).size.height;


    return Container(
      // height: screenHeight*0.6,
      child: Column(
        // mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 50,),
          Text("Our Services",style: TextStyle(fontSize: 35,color: Colors.blueAccent,fontWeight: FontWeight.bold),),
          SizedBox(height: 50,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              serviceCard(name: 'lee',iconData: Icons.abc,description: "eaejdoiawld"),
              serviceCard(name: 'lee',iconData: Icons.abc,description: "eaejdoiawld"),
              serviceCard(name: 'lee',iconData: Icons.abc,description: "eaejdoiawld"),
             
             
            ],
          ),
          SizedBox(height: 100,)
        ],
      ),
    );
  }

  Container serviceCard({required String name,required IconData iconData,required String description}) {
    return Container(
              height: 400,
              width: 400,
              color: Colors.blueAccent,
            );
  }
}