import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class GoodIntro extends StatelessWidget {
  const GoodIntro({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Stack(
        children: [
          PageView(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.8,
                      height: MediaQuery.of(context).size.height * 0.6,
                      child: Image.asset(
                        '/home/felix/StudioProjects/untitled10/lib/Images/onboarding_images/buying.png',
                        width:double.maxFinite ,
                        ),
                    ),
                    const Text('Choose Your Product',style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),),
                     const Text('Welcome to a world od limitless selection - Your perfect product awaits',style: TextStyle(
                      fontSize: 15,
                    ),)
                  ],
                
                            ),
              )

            ]
            
          )
        ],
      ),
    );
  }
}