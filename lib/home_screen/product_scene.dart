import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ProductScreen extends StatelessWidget {
  const ProductScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final imageList = [
      "https://previews.123rf.com/images/wangcn111/wangcn1111704/wangcn111170400226/76043126-colorful-macarons.jpg",
      "https://previews.123rf.com/images/wangcn111/wangcn1111704/wangcn111170400228/76043128-colorful-macarons.jpg",
      "https://previews.123rf.com/images/xuzhengfang/xuzhengfang1711/xuzhengfang171100294/91603515-puff.jpg",
      "https://previews.123rf.com/images/lukam85/lukam851607/lukam85160700065/61374266-delicious-homemade-lavender-macaroon-caps-resting-on-grill-concept-of-food-preparation-concept-of.jpg",
      "https://previews.123rf.com/images/olyaw/olyaw1604/olyaw160400036/55314504-colorful-macaroons-isolated-on-white-background.jpg"

    ];
    return Container(
      alignment: Alignment.topCenter,
      child:    Column(
        children: [
          Positioned(
              child: Container(
                margin: const EdgeInsets.symmetric(vertical: 30 , horizontal: 20),
                padding: const EdgeInsets.all(15),
                decoration: BoxDecoration(
                    color: Colors.grey.withOpacity(0.2),
                    borderRadius: BorderRadius.circular(30)
                ),
                child: Row(
                  children: const [
                    Icon(FontAwesomeIcons.magnifyingGlass , size: 20,),
                    SizedBox(width: 10,),
                    Text("Search Products" ,style: TextStyle(color: Colors.black38),)
                  ],
                ),
              )),
          const SizedBox(height: 20,),
          Expanded(

            child: MasonryGridView.count(
              padding: const EdgeInsets.symmetric(vertical: 10),
                crossAxisSpacing: 15,
                crossAxisCount: 2,
                itemCount: imageList.length,
                itemBuilder: (context,index){
                return Column(
                  children: [
                    Stack(
                      children: [
                        Container(
                          padding: const EdgeInsets.all( 10.0),
                          margin: const EdgeInsets.all( 10.0),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(28),
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black.withOpacity(0.1),
                                  blurRadius: 5,
                                  spreadRadius: 1,
                                  offset: const Offset(1,1),
                                )
                              ]
                          ),
                          child: Column(
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(28),
                                child: Image.network(imageList[index],fit: BoxFit.cover,),
                              )
                            ],
                          ),
                        )
                      ],
                    )
                  ],
                );
                }),
          )
        ],
      )
    );
  }
}


class SingleItemWidget extends StatelessWidget {
  const SingleItemWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          children: [
            Container(
              padding: const EdgeInsets.all( 10.0),
              margin: const EdgeInsets.all( 10.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(28),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.1),
                    blurRadius: 5,
                    spreadRadius: 1,
                    offset: const Offset(1,1),
                  )
                ]
              ),
              child: Column(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(28),
                    child: Image.network("https://previews.123rf.com/images/wangcn111/wangcn1111704/wangcn111170400226/76043126-colorful-macarons.jpg",fit: BoxFit.cover,),
                  )
                ],
              ),
            )
          ],
        )
      ],
    );
  }
}

