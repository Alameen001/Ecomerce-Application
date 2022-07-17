import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shopx/presentaion/screens/Home/widget/appbar.dart';
import 'package:shopx/presentaion/screens/Login/SignUp.dart';
import 'package:shopx/presentaion/widgets/user_adress.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          AppbarTitlename(),
          SizedBox(
            height: 20,
          ),
          const Text(
            'Login or Signup',
            style: TextStyle(
                color: Colors.black, fontSize: 22, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 10,
          ),
          GestureDetector(
            onTap: () {
              Get.to(SighnUp());
              print("<<<<<<<<<<<<<<<");
            },
            child: RichText(
              text: const TextSpan(
                children: [
                  TextSpan(
                      text: "Don't have an account?",
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.grey)),
                  TextSpan(
                      text: '  Sign Up ',
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: Color.fromARGB(255, 189, 50, 40))),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          TextInputfield(hinttext: "Enter Your Email"),
          TextInputfield(hinttext: "Enter Your password"),
          SizedBox(
            height: 20,
          ),
          ElevatedButton(onPressed: () {}, child: Text("LOGIN")),
          SizedBox(
            height: 15,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Expanded(
                child: Divider(
                  endIndent: 10,
                  thickness: 1,
                  color: Colors.black,
                ),
              ),
              Text(
                "or",
                style: TextStyle(fontSize: 18),
              ),
              Expanded(
                child: Divider(
                  indent: 10,
                  thickness: 1,
                  color: Colors.black,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 15,
          ),
             ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                side: BorderSide(
                                    width: 1.0, ),
                                primary: Colors.white,
                                elevation: 4,
                                fixedSize: const Size(330, 45),
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTEje2W2RoAmh0FstNyDTXmUasNURW3_f5UIQ&usqp=CAU",
                                   height: 40,
                                  ),
                                  Text(
                                    "Login with google",style: TextStyle(color: Colors.black),
                                   
                                  ),
                                ],
                              ),
                            ),
        ],
      ),
    );
  }
}
