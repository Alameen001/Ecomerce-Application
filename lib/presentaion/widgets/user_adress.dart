import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shopx/presentaion/screens/Payment/payment.dart';
import 'package:shopx/presentaion/widgets/TextForm/textform.dart';

class UserAdressScreen extends StatelessWidget {
  UserAdressScreen({Key? key}) : super(key: key);


     TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
     TextEditingController nameController = TextEditingController();
  TextEditingController phoneController = TextEditingController();

  final selectedvalue = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text("Add Adress"),
      //   centerTitle: true,
      //   actions: [
      //     TextButton(onPressed: (){}, child: Text("Reset",style: TextStyle(color: Colors.blue),))
      //   ],

      // ),
      // body: Column(
      //   children: [
      //     Expanded(
      //       child: ListView(
      //         children: [],
      //       ),
      //     )
      //   ],
      // ),
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 130,
            pinned: true,
            flexibleSpace: FlexibleSpaceBar(
              title: Text(
                "Add Adress",
                style: TextStyle(color: Colors.black),
              ),
            ),
            actions: [
              TextButton(
                  onPressed: () {},
                  child: Text(
                    "Reset",
                    style: TextStyle(color: Colors.blue),
                  ))
            ],
          ),
          SliverToBoxAdapter(
            child: Column(
              children: [
                ListView(
                  shrinkWrap: true,
                  primary: false,
                  children: [
                    Divider(
                      thickness: 3,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text("Contact Info"),
                    TextInputfield(hinttext: "Name", Tcontroller: nameController,),
                    TextInputfield(hinttext: "Phone Number(+91)", Tcontroller: phoneController,),
                    SizedBox(
                      height: 20,
                    ),
                    Divider(
                      thickness: 3,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text("Adress Info"),
                    Row(
                      children: [
                        Expanded(child: TextInputfield(hinttext: "Pincode", Tcontroller: phoneController,)),
                        Expanded(child: TextInputfield(hinttext: "City", Tcontroller: nameController,)),
                      ],
                    ),
                    TextInputfield(hinttext: "State", Tcontroller: nameController,),
                    TextInputfield(hinttext: "Locality/Area/Street", Tcontroller: nameController,),
                    TextInputfield(hinttext: "Flat no/Building Name", Tcontroller: nameController,),
                    TextInputfield(hinttext: "landMark", Tcontroller: nameController,),
                    SizedBox(
                      height: 20,
                    ),
                    Divider(
                      thickness: 3,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text("Type of Adress"),
                    SizedBox(
                      height: 20,
                    ),
                    GenderRadio(),
                    SizedBox(
                      height: 60,
                    ),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 100),
        child: ElevatedButton(
          onPressed: () {
            Get.to(PaymentScreen());
          },
          child: Text("Save Adresss"),
        ),
      ),
    );
  }

  GenderRadio() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Transform.scale(
            scale: 1.3,
            child: Radio<int>(
              value: 1,
              groupValue: selectedvalue,
              onChanged: (value) {},
            ),
          ),
          const Text(
            'Home',
            style: TextStyle(fontSize: 18),
          ),
          Transform.scale(
            scale: 1.3,
            child: Radio<int>(
              value: 2,
              groupValue: selectedvalue,
              onChanged: (value) {},
            ),
          ),
          const Text(
            'Office',
            style: TextStyle(fontSize: 18),
          ),
          Transform.scale(
            scale: 1.3,
            child: Radio<int>(
              value: 2,
              groupValue: selectedvalue,
              onChanged: (value) {},
            ),
          ),
          const Text(
            'Other',
            style: TextStyle(fontSize: 18),
          ),
        ],
      ),
    );
  }
}


