import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shopx/presentaion/screens/Payment/payment.dart';

class UserAdressScreen extends StatelessWidget {
  UserAdressScreen({Key? key}) : super(key: key);

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
                    TextInputfield(hinttext: "Name"),
                    TextInputfield(hinttext: "Phone Number(+91)"),
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
                        Expanded(child: TextInputfield(hinttext: "Pincode")),
                        Expanded(child: TextInputfield(hinttext: "City")),
                      ],
                    ),
                    TextInputfield(hinttext: "State"),
                    TextInputfield(hinttext: "Locality/Area/Street"),
                    TextInputfield(hinttext: "Flat no/Building Name"),
                    TextInputfield(hinttext: "landMark"),
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

class TextInputfield extends StatelessWidget {
  TextInputfield(
      {Key? key,
      required this.hinttext,
      this.textinputtype = TextInputType.name,
      this.PaddingHorizondal = 12.0,
      this.PaddingVertical = 8.0})
      : super(key: key);

  final String hinttext;
  TextInputType textinputtype;
  final double PaddingHorizondal;
  final double PaddingVertical;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: PaddingHorizondal, vertical: PaddingVertical),
      child: TextFormField(
        keyboardType: textinputtype,
        decoration: InputDecoration(
          isDense: true,
          hintText: hinttext,
          fillColor: Colors.grey[250],
          filled: true,
          border: OutlineInputBorder(borderSide: BorderSide.none),
          focusedBorder: OutlineInputBorder(),
        ),
      ),
    );
  }
}
