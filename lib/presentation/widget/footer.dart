import 'package:flutter/material.dart';

class Footer extends StatelessWidget {
  
  Map<dynamic,dynamic> cardData = {
  //  'Business Branding':'We develop strong brand identities that go beyond just logos. Our branding services create consistency across all customer touchpoints — building recognition, trust, and a loyal audience for your business.',
   'smma':'Our Social Media Marketing services will help your business grow through targeted paid ads. We will handle audience targeting, ad creation, and performance tracking to get real results from every birr spent.',
   'branding':'We will offer full-service brand strategy development — helping you stand out with clarity, story, and a long-term plan for growth. This includes brand voice, market positioning, and storytelling that resonates',
 };

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
              problemCard( name: 'Coming Soon: SMMA',description:  cardData['smma']),
              problemCard( name: 'Coming Soon: Full Branding Strategy',description:  cardData['branding']),
      
            ],
          )
        ],
      ),
    );
  }
  Container problemCard({required String name,required String description}){
    return Container(
      height: 200,
      width: 500,
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.blueAccent,
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