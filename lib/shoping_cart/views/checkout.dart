
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:somescreen/shoping_cart/controller/cart_controller.dart';
import 'package:somescreen/shoping_cart/model/product_model.dart';

class CheckoutScreen extends StatelessWidget {
  const CheckoutScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    CartController cartController = Get.put(CartController());
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Obx(
          ()=> SizedBox(
              height: 600,
              child: ListView.builder(
                itemCount: cartController.products.length,
                  itemBuilder: (context,index){
                    return CartProductCard(
                      controller: cartController,
                      quantity: cartController.products.values.toList()[index],
                      product: cartController.products.keys.toList()[index],
                      index: index,
                    );
                  }),
            ),
          )
        ],
      ),
    );
  }
}

class CartProductCard extends StatelessWidget {
  final CartController controller;
  final Product product;
  final int quantity ;
  final int index;
  const CartProductCard({Key? key , required this.product,required this.controller,required this.index,required this.quantity}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return    Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CircleAvatar(
            radius: 25,
            backgroundImage: NetworkImage(product.imageUrl),
          ),

          const SizedBox(width: 20,),
          Text(Product.products[index].name),
          const SizedBox(width: 20,),
          const SizedBox(width: 20,),
          IconButton(onPressed: (){
            controller.deleteProduct(Product.products[index]);
          }, icon: const Icon(Icons.remove_circle)),
          Text(quantity.toString()),
          IconButton(onPressed: (){
            controller.addProduct(Product.products[index]);
          }, icon: const Icon(Icons.add_circle)),
        ],

    );
  }
}

