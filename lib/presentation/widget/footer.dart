import 'dart:html' as html;

import 'package:flutter/material.dart';

class Footer extends StatelessWidget {
  
  Map<dynamic,dynamic> cardData = {
  //  'Business Branding':'We develop strong brand identities that go beyond just logos. Our branding services create consistency across all customer touchpoints — building recognition, trust, and a loyal audience for your business.',
   'smma':'Our Social Media Marketing services will help your business grow through targeted paid ads. We will handle audience targeting, ad creation, and performance tracking to get real results from every birr spent.',
   'branding':'We will offer full-service brand strategy development — helping you stand out with clarity, story, and a long-term plan for growth. This includes brand voice, market positioning, and storytelling that resonates',
 };

   void launchTelegram() {
   html.window.open('https://t.me/Higuzo', '_blank');
  
  }

  @override
  Widget build(BuildContext context) {

    final screenWidth= MediaQuery.of(context).size.width;

    return Container(
      // height: 500,
      width: double.infinity,
      // color: const Color.fromARGB(255, 83, 82, 82),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        // crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: double.infinity,
            height: 100,
            color: const Color.fromARGB(255, 209, 212, 214),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Stay Connected',style: TextStyle(fontSize: screenWidth>600?30:25,fontWeight: FontWeight.bold,color: Colors.white,)),
                // Text('oiujio doawodia paowdpo oiuioiyhwyadctfte oiajdjlmal iwu90dw'),
                // Text('jwid dpwd0a pa wdawod poaiw0-id 09wjdw ad'),
              ],
            )
            ),
          SizedBox(height: 50,),
          screenWidth>1200?
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              problemCard( name: 'Coming Soon: SMMA',description:  cardData['smma']),
              problemCard( name: 'Coming Soon: Full Branding Strategy',description:  cardData['branding']),
      
            ],
          ):Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                     problemCard( name: 'Coming Soon: SMMA',description:  cardData['smma']),
                     SizedBox(height: 20,),
                problemCard( name: 'Coming Soon: Full Branding Strategy',description:  cardData['branding']),
                  
              ],
            ),
          ),
          SizedBox(height: 70,),
          Text('Get Ready To Grow',style: TextStyle(fontSize: 30,color: Colors.blueAccent),),
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: SelectableText('Supercharge your online growth with a partner who’s dedicated to achieving your goals.'),
          ),
          SizedBox(height: 10,),
            SizedBox(
                  height: 45,
                  // width: 180,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blueAccent,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadiusGeometry.circular(10)
                      )
                    ),
                    onPressed: (){
                     launchTelegram();
                    }, 
                  child: Text("Let's Make It Happen",style: TextStyle(fontSize: 16,color: Colors.white),))
                  ),
            SizedBox(height: 30,),
            Padding(
              padding: const EdgeInsets.only(left: 20.0,bottom: 10,right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('All right resrerved 2025',style: TextStyle(fontSize: screenWidth>600?15:10),),
                  Text('Designed and Developed by Nahom M',style: TextStyle(fontSize: screenWidth>600?15:10),),
                  
                ],
              ),
            )
        ],
      ),
    );
  }


  Container problemCard({required String name,required String description}){
    return Container(
      height: 220,
      width:400,
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 81, 117, 179),
        borderRadius: BorderRadius.all(Radius.circular(20))
      ),
      child: Column(
        children: [
          Text(name,style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.white),),
          SizedBox(height: 10,),
          Text(description,style: TextStyle(color: Colors.white),)
        ],
      ),
    );
  }
}