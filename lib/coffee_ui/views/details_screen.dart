

import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        color: const Color(0xff0c0f14),
        height: 100,
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Column(
                children:  [
                  const Text("Price" , style: TextStyle(color: Colors.grey , fontSize: 16),),
                  const SizedBox(height: 5,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: const [
                      Text("\$" , style: TextStyle(color: Color(0xffd17842) , fontSize: 25),),
                      SizedBox(width: 5,),
                      Text("4.20" , style: TextStyle(color: Colors.white , fontSize: 25),),
                    ],
                  )
                ],
              ),
              const SizedBox(width: 30,),
              Expanded(child: Container(
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: const Color(0xffd17842),
                  borderRadius: BorderRadius.circular(20)
                ),
                child: const Center(child: Text("Buy Now" , style: TextStyle(color: Colors.white , fontSize: 20 , fontWeight: FontWeight.w500),)),
              ))
            ],
          ),
        ),
      ),

      backgroundColor: const Color(0xff0c0f14),
      body: CustomScrollView(
        slivers: <Widget>[
          //2
          SliverAppBar(
            leading:  GestureDetector(
              onTap: (){
                Navigator.of(context).pop();
              },
              child: Padding(padding: const EdgeInsets.only(left: 8 , top: 10) ,
                child:Stack(
                  children: [
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                          color: const Color(0xff141921),
                          borderRadius: BorderRadius.circular(15)
                      ),
                    ),
                    Positioned(
                      left: 2,
                      top: 2,
                      child: Container(
                        padding: const EdgeInsets.only(left: 10),
                        height: 43,
                        width: 43,
                        child: const Icon(Icons.arrow_back_ios , color: Color(0xff52555a)),
                      ),
                    ),

                  ],
                ) ,),
            ),
            actions: [
              Padding(padding: const EdgeInsets.only(right: 10 , top: 10) ,
                child:Stack(
                  children: [
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                          color: const Color(0xff141921),
                          borderRadius: BorderRadius.circular(15)
                      ),
                    ),
                    Positioned(
                      left: 2,
                      top: 2,
                      child: Container(
                        padding: const EdgeInsets.only(left: 8 , top: 8),
                        height: 38,
                        width: 38,
                        child:  Image.asset("assets/images/fav.png")
                      ),
                    ),

                  ],
                ) ,),
            ],
            expandedHeight: 400.0,
            backgroundColor: Colors.transparent,
            flexibleSpace: FlexibleSpaceBar(
              background: Stack(
                children: [
                 Container(
                   decoration: BoxDecoration(
                     borderRadius: BorderRadius.circular(40),
                     image:  const DecorationImage(
                       image: AssetImage(
                           'assets/images/cd.jpg'),
                       fit: BoxFit.cover,
                     ),
                   ),
                   height: 500.0,
                   width: double.infinity,

                 ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(30),
                      child: Container(
                        width: double.infinity,
                        height: 150,
                        color: Colors.transparent,
                        child: Stack(
                          children: [
                            BackdropFilter(
                              filter: ImageFilter.blur(sigmaX: 15 , sigmaY: 15),
                              child: Container(color: Colors.black.withOpacity(0.4),
                                
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children:  [
                                Padding(padding: const EdgeInsets.only(left: 25 , top: 15) ,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children:  [
                                      const Text('Cappuccino' , style: TextStyle(
                                        color: Colors.white , fontWeight: FontWeight.bold , fontSize: 25
                                      ),),
                                      const SizedBox(height: 10,),
                                      const Text("With Oat Milk" , style: TextStyle(
                                        fontSize: 18 , color: Colors.grey,fontWeight: FontWeight.w500
                                      ),),
                                      const SizedBox(height: 20,),
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: const [
                                          Icon(Icons.star , color: Color(0xffd17842),),
                                          SizedBox(width: 10,),
                                          Text("4.5" , style: TextStyle(fontSize: 20),),
                                          SizedBox(width: 10,),
                                          Text("(6.954)" , style: TextStyle(fontSize: 15 , color: Colors.grey),),
                                        ],
                                      )
                                    ],
                                  )
                                ),
                                Padding(padding: const EdgeInsets.only(right: 25 , top: 15) ,
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      children:  [
                                        Row(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          crossAxisAlignment: CrossAxisAlignment.center,
                                          children:  [
                                             Container(
                                               height : 65 ,
                                                  width: 65,
                                                  decoration: BoxDecoration(
                                                    color: const Color(0xff0c0f14),
                                                    borderRadius: BorderRadius.circular(18),
                                                  ),
                                                  child: Column(
                                                    mainAxisAlignment: MainAxisAlignment.center,
                                                    crossAxisAlignment: CrossAxisAlignment.center,
                                                    children:  [
                                                      SizedBox(
                                                        height : 32 , width: 32 ,
                                                          child: Image.asset("assets/images/coffee.png")),
                                                      const Text("Coffee" , style: TextStyle(color: Colors.grey),),
                                                    ],
                                                  ),
                                                ),
                                            const SizedBox(width: 15,),
                                            Container(
                                              height : 65 ,
                                              width: 65,
                                              decoration: BoxDecoration(
                                                color: const Color(0xff0c0f14),
                                                borderRadius: BorderRadius.circular(18),
                                              ),
                                              child: Column(
                                                mainAxisAlignment: MainAxisAlignment.center,
                                                crossAxisAlignment: CrossAxisAlignment.center,
                                                children:  [
                                                  SizedBox(
                                                      height : 32 , width: 32 ,
                                                      child: Image.asset("assets/images/milk.png")),
                                                  const Text("Milk" , style: TextStyle(color: Colors.grey),),
                                                ],
                                              ),
                                            ),

                                          ],
                                        ),
                                        const SizedBox(height: 15,),
                                        Container(
                                          padding: const EdgeInsets.all(15),
                                          decoration: BoxDecoration(
                                            color: const Color(0xff0c0f14),
                                            borderRadius: BorderRadius.circular(15),
                                          ),
                                          child: Text("Medium Roasted" , style: TextStyle(color: Colors.grey),),
                                        )
                                      ],
                                    )
                                ),
                              ],
                            )
                          ],
                        ),

                      ),
                    ),
                  ),


                ],
              )
            ),

          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children:  [
                  const SizedBox(height: 10,),
                  const Text('Description' , style: TextStyle(color: Colors.grey , fontSize: 18, fontWeight: FontWeight.w500),),
                  const SizedBox(height: 10,),
                  const ReadMoreText(

                  style: TextStyle(fontSize: 17 , fontWeight: FontWeight.w400),
                  'Cappuccino is a coffee-based drink made primarily from espresso and milk and la la ala la ala hhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhh',
                  trimLines: 2,
                  colorClickableText: Color(0xffd17842),
                  trimMode: TrimMode.Line,
                  trimCollapsedText: 'Read More',
                  trimExpandedText: 'Show less',
                  moreStyle: TextStyle(fontSize: 18, fontWeight: FontWeight.w400 , color: Color(0xffd17842), ),
                  lessStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                ),
                  const SizedBox(height: 30,),
                  const Text('Size' , style: TextStyle(color: Colors.grey , fontSize: 18, fontWeight: FontWeight.w500),),
                  const SizedBox(height: 15,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height : 40 ,
                        width: 110,
                        decoration: BoxDecoration(
                          color: const Color(0xff0c0f14),
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color:const Color(0xffd17842) , width: 1.5 )
                        ),
                        child: const Center(child: Text("S" , style: TextStyle(color:Color(0xffd17842) , fontWeight: FontWeight.w500 , fontSize: 20),)),
                      ),
                      Container(
                        height : 40 ,
                        width: 110,
                        decoration: BoxDecoration(
                            color: const Color(0xff141921),
                            borderRadius: BorderRadius.circular(10),

                        ),
                        child: const Center(child: Text("M" , style: TextStyle(color:Colors.grey , fontWeight: FontWeight.w500 , fontSize: 20),)),
                      ),
                      Container(
                        height : 40 ,
                        width: 110,
                        decoration: BoxDecoration(
                          color: const Color(0xff141921),
                          borderRadius: BorderRadius.circular(10),

                        ),
                        child: const Center(child: Text("L" , style: TextStyle(color:Colors.grey , fontWeight: FontWeight.w500 , fontSize: 20),)),
                      ),
                    ],
                  ),

                ],
              ),
            ),
          )
          
          //3


        ],
      ),
    );
  }
}
