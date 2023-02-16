

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:somescreen/shoping_cart/controller/cart_controller.dart';
import 'package:somescreen/shoping_cart/model/product_model.dart';
import 'package:somescreen/shoping_cart/views/checkout.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    CartController cartController = Get.put(CartController());
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          SizedBox(
            height: 500,
            child: ListView.builder(
              itemCount: Product.products.length,
                itemBuilder: (context,index){
                  return Container(
                    padding: const EdgeInsets.all(10),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            CircleAvatar(
                              radius: 25,
                              backgroundImage: NetworkImage(Product.products[index].imageUrl),
                            ),

                            const SizedBox(width: 20,),
                            Text(Product.products[index].name),
                            const SizedBox(width: 20,),
                            Text(Product.products[index].price.toString()),
                            const SizedBox(width: 20,),
                            IconButton(onPressed: (){
                              cartController.addProduct(Product.products[index]);
                            }, icon: const Icon(Icons.add_circle))
                          ],
                        ),
                      ],
                    ),
                  );
                }),
          ),
          IconButton(onPressed: (){
            Get.to(CheckoutScreen());
          }, icon: Icon(Icons.games))
        ],
      ),
    );
  }
}
