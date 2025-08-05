import 'package:flutter/material.dart';

class HomeWidget extends StatelessWidget {
  const HomeWidget({super.key});

  @override
  Widget build(BuildContext context) {

    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth= MediaQuery.of(context).size.width;


    return Container(
      padding: EdgeInsets.only(left: 50,right: 20),
      height: screenHeight*0.9,
      width: double.infinity,
      color: Colors.black,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: screenWidth<1200?screenWidth*0.7:1000,  
            child: Text("Digital Legacey with Building Website and Business Logic",style: TextStyle(fontSize: 50,color: Colors.white),)
            ),
           Text('Abeb beso bela keza desi alew tekerebet chefer mn yadergal gin besow jeso neber',style: TextStyle(color: Colors.white),),
           SizedBox(height: 20,),
           SizedBox(
            height: 50,
            width: 180,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blueAccent,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadiusGeometry.circular(20)
                )
              ),
              onPressed: (){}, 
            child: Text('Get Started',style: TextStyle(fontSize: 16,color: Colors.white),))
            )
        ],
      ),
    );
  }
}