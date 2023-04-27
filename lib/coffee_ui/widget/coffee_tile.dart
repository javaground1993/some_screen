import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CoffeeTile extends StatelessWidget {
  String pic , rate , name , desc , cost ;
   CoffeeTile({Key? key ,required this.name,required this.pic,required this.cost,required this.desc,required this.rate }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20.0 , bottom: 20),
      child: Container(
        padding: const EdgeInsets.all(12),
        width:200,
      //  height: 300,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
            gradient: const LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomRight,
              colors: [
                Color(0xff262b34),
                Color(0xff0c0f14),
               // Color(0xff101319)
              ],
            )
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Container(
                  height: 170,
                  width: 180,
                  decoration:  BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      image:  DecorationImage(
                        image: AssetImage(
                            'assets/images/$pic.jpg'),
                        fit: BoxFit.cover,
                      ),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.orange.withOpacity(0.1),
                            spreadRadius: 1,
                            blurRadius: 2,
                            offset: const Offset(-1, 0)
                        ).scale(2)
                      ]
                  ),
                ),
                Align(
                  alignment: Alignment.topRight,
                  child: ClipRRect(
                    borderRadius: const BorderRadius.only(
                      topRight: Radius.circular(20),
                      bottomLeft: Radius.circular(30),
                    ),
                    child: Container(
                      width: 75,
                      height: 30,
                      color: Colors.transparent,
                      child: Stack(
                        children: [

                           BackdropFilter(
                              filter: ImageFilter.blur(sigmaX: 10 , sigmaY: 15),
                              child: Container(color: Colors.black.withOpacity(0.4),


                              ),
                            ),
                          Align(
                            alignment: Alignment.center,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children:  [
                                const Icon(Icons.star , size: 15, color: Color(0xffd17842),),
                                const SizedBox(width: 5,),
                                Text(rate , style: const TextStyle(fontWeight: FontWeight.w500),)
                              ],
                            ),
                          )

                          /*
                          BackdropFilter(
                            filter: ImageFilter.blur(
                              sigmaX: 4.0,
                              sigmaY: 4.0
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(
                             // borderRadius: BorderRadius.circular(20),
                              border: Border.all(color: Colors.black.withOpacity(0.13)),
                              gradient: LinearGradient(
                                begin: Alignment.topLeft,
                                end: Alignment.bottomRight,
                                colors: [
                                  Colors.black.withOpacity(1),
                                  Colors.black.withOpacity(0.05),
                                ]
                              )
                              
                            ),
                          )
                          
                           */
                        ],
                      ),

                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0 , horizontal: 12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                   Text(name , style: const TextStyle(fontSize: 20),),
                  const SizedBox(height: 5,),
                  Text(desc , style: TextStyle(color: Colors.grey[700]),),
                  const SizedBox(height: 20,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Row(children:  [
                        const Text("\$" , style: TextStyle(color: Color(0xffd17842), fontSize: 20 ,fontWeight: FontWeight.bold),),
                        const SizedBox(width: 5,),
                        Text(cost , style: const TextStyle(color: Colors.white , fontWeight: FontWeight.bold , fontSize: 20),)
                      ],),
                      Container(
                        height: 45,
                        width: 45,
                        decoration: BoxDecoration(
                          color: const Color(0xffd17842),
                          borderRadius: BorderRadius.circular(18)
                        ),
                        child:const Center(child: Text("+" , style: TextStyle(fontSize: 25 , fontWeight: FontWeight.w400),)),
                      )
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
