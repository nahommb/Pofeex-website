import 'package:flutter/material.dart';

class About extends StatelessWidget {
 


Map<dynamic,dynamic> serviceData = {
   'contentCreation':'We produce creative content designed to catch attention and deliver your brand message clearly. From photos and videos to posters and reels, our content is built to inform, entertain, and convert.',
   'socialMediaMng':'We handle your business’s presence on platforms like Facebook, Instagram, and TikTok. From content scheduling to engagement and growth, we ensure your brand stays active, professional, and connected with your audience.',
   'businessBranding':'We develop strong brand identities that go beyond just logos. Our branding services create consistency across all customer touchpoints — building recognition, trust, and a loyal audience for your business.'
 };



  @override
  Widget build(BuildContext context) {

    final screenHeight = MediaQuery.of(context).size.height;


    return Container(
      // height: screenHeight*0.6,
      child: Column(
        // mainAxisAlignment: MainAxisAlignment.center,
        //crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          SizedBox(height: 50,),
          Text("Our Services",style: TextStyle(fontSize: 35,color: Colors.blueAccent,fontWeight: FontWeight.bold),),
          SizedBox(height: 50,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              serviceCard(name: 'Social Media Management',iconData: Icons.mobile_friendly_sharp,description: serviceData['socialMediaMng']),
              serviceCard(name: 'Content Creation',iconData: Icons.videocam_outlined,description: serviceData['contentCreation']),
              serviceCard(name: 'Business Branding',iconData: Icons.model_training_sharp,description: serviceData['businessBranding']),
             
             
            ],
          ),
          SizedBox(height: 100,),
          Text('Why choose Pofeex',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.blueAccent),),
          Text('Local, Affordable, Result',style: TextStyle(fontSize: 35,fontWeight: FontWeight.bold),),
          SizedBox(height: 20,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.gpp_good_outlined,color: Colors.blueAccent,),
              Text('We understand your market',style: TextStyle(fontSize: 20,color: Colors.blueAccent),),
            ],
          ),
          SizedBox(height: 10,),
                 Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.gpp_good_outlined,color: Colors.blueAccent,),
              Text('Solutions for every badget',style: TextStyle(fontSize: 20,color: Colors.blueAccent),),
            ],
          ),
          SizedBox(height: 10,),
                 Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.gpp_good_outlined,color: Colors.blueAccent,),
              Text('Dedecatedto your success',style: TextStyle(fontSize: 20,color: Colors.blueAccent),),
            ],
          ),

          SizedBox(height: 50,)
        ],
      ),
    );
  }

  Container serviceCard({required String name,required IconData iconData,required String description}) {
    return Container(
              // height: 400,
              width: 400,
              // color: Colors.blueAccent,
              child: Column(
                children: [
                  Icon(iconData,size: 100,color: Colors.blueAccent,),
                  Text(name,style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
                  Text(description)
                  
                ],
              ),
            );
  }
}