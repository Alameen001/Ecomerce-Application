import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shopx/presentaion/screens/product_Details/widget/productsize.dart';
import 'package:shopx/presentaion/widgets/user_adress.dart';

class ProductDetail extends StatelessWidget {
  ProductDetail({Key? key}) : super(key: key);

  final List<String> size = ['S', 'M', 'L', 'XL'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Brand Items",
          style: TextStyle(color: Colors.black),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              CupertinoIcons.shopping_cart,
              color: Colors.black,
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: double.infinity,
                        height: MediaQuery.of(context).size.height * 0.6,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: NetworkImage(
                                    "https://rukminim1.flixcart.com/image/714/857/k6mibgw0/t-shirt/n/z/a/m-a2-ausk-original-imafpfyyyayuxga3.jpeg?q=50"),
                                fit: BoxFit.cover)),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Dennis Lingo Men Pink Slim Fit Casual  T-Shirt",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w500),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        '₹ 1299',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w600),
                      ),
                    ],
                  ),
                ),
                Divider(
                  thickness: 6,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Select size',
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 18,
                        ),
                      ),
                      Row(
                        children: [
                          Container(
                              height: MediaQuery.of(context).size.height*0.08,
                            width: MediaQuery.of(context).size.width*0.8,
                            
                            child: ListView.separated(
                                itemBuilder: (context, index) {
                                  return ProductSizeCOntainer(
                                    productSize: size[index],
                                  );
                                },
                                scrollDirection: Axis.horizontal,
                                separatorBuilder: (context, index) {
                                  return SizedBox(
                                    width: 8,
                                  );
                                },
                                itemCount: 4),
                          ),
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          Container(
           child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
          ElevatedButton.icon(onPressed: (){}, icon: Icon(Icons.favorite_outline), label: Text("WHISHLIST")),
           ElevatedButton.icon(onPressed: (){Get.to(UserAdressScreen());
            
           }, icon: Icon(CupertinoIcons.bag), label: Text("BUY NOW")),
            
            ],
           ),
          )
        ],
      ),
    );
  }
}
