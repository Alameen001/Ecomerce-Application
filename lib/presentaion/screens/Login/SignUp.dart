import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:shopx/presentaion/widgets/user_adress.dart';

class SighnUp extends StatelessWidget {
  const SighnUp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: ListView(
              children: [
                SizedBox(height: 100,),
                Text("Sign Up",textAlign: TextAlign.center,style: TextStyle(color: Colors.red,fontSize: 24,fontWeight: FontWeight.w700),),
                 SizedBox(height: 30,),
                 Column(
                   children: [
                     Text("Create an account"),
                      SizedBox(height: 15,),
                     GestureDetector(
                      onTap: () {
                        
                      },
                       child: RichText(
                              text: const TextSpan(children: [
                            TextSpan(
                                text: "Already have an account?",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black)),
                            TextSpan(
                                text: '  Login ',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.red)),
                          ])),
                     ),
                     SizedBox(height: 30,),
                     TextInputfield(hinttext: "Enter your Name"),
                      TextInputfield(hinttext: "Enter your Email"),
                       TextInputfield(hinttext: " Creat Password"),
                        TextInputfield(hinttext: "Confirm Password"),
                           SizedBox(height: 30,),
                           ElevatedButton(onPressed: (){}, child: Text("Sign Up"))

                   ],
                 )
              ],
            ),
          ),
        ],
      ),
    );
  }
}