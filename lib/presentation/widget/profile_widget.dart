import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'dart:html' as html;

class HomeWidget extends StatelessWidget {
  const HomeWidget({super.key});



  void launchTelegram() {
   html.window.open('https://t.me/Higuzo', '_blank');
  
  }


  @override
  Widget build(BuildContext context) {

    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth= MediaQuery.of(context).size.width;


    return Container(
      padding: EdgeInsets.only(left: 50,right: 20),
      height: screenHeight*0.9,
      width: double.infinity,
      color: Colors.black,
      child: Row(
        children: [
          Container(
            // color: Colors.brown,
            width: screenWidth*0.5,
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
                  height: 45,
                  width: 180,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blueAccent,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadiusGeometry.circular(20)
                      )
                    ),
                    onPressed: (){
                     launchTelegram();
                    }, 
                  child: Text('Get Started',style: TextStyle(fontSize: 16,color: Colors.white),))
                  )
              ],
            ),
          ),
          Container(
            width: screenWidth*0.4,
            // color: Colors.amber,
            child: Image.asset('images/growth.png',width: screenWidth*0.2,)
            )
        ],
      ),
    );
  }
}