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
      padding: EdgeInsets.only(left: screenWidth>500?50:20,right: screenWidth>500?50:20,),
      height: screenWidth>700? screenHeight*0.9:screenHeight*0.6,
      width: double.infinity,
      color: Colors.black,
      child:screenWidth>700? Row(
        children: [
          landingText(screenWidth),
          landingImage(screenWidth)
        ],
      ):Column(
        children: [
            SizedBox(height: 40,),
            landingImage(screenWidth),
            SizedBox(height: 20,),            
            landingText(screenWidth),
        ],
      ),
    );
  }

  Container landingImage(double screenWidth) {
    return Container(
          width: screenWidth*0.32,
          // color: Colors.amber,
          child: Image.asset('assets/images/growth.png',width: screenWidth*0.2,)
          );
  }

  Container landingText(double screenWidth) {
    return Container(
          // color: Colors.brown,
          width: screenWidth>700?screenWidth*0.5:screenWidth*0.8,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                // color: Colors.red,
                width: screenWidth<1200?screenWidth*0.7:1000,  
                child: Text("Digital Legacey with Building Website and Business Logic",style: TextStyle(fontSize: screenWidth>700?50:20,color: Colors.white),)
                ),
               Text('Abeb beso bela keza desi alew tekerebet chefer mn yadergal gin besow jeso neber',style: TextStyle(fontSize: screenWidth>700?18:12,color: Colors.white),),
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
        );
  }
}