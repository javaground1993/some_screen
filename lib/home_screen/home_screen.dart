
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:somescreen/controller/home_controller/home_controller.dart';
import 'package:somescreen/home_screen/category_scene.dart';
import 'package:somescreen/home_screen/product_scene.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final tabBarIcons = [
      FontAwesomeIcons.house,
      FontAwesomeIcons.compass,
      FontAwesomeIcons.cartShopping,
      FontAwesomeIcons.user,
    ];
    final pageController = PageController(initialPage: 0);
    HomeController homeController = Get.put(HomeController());
    return Scaffold(
      body: SafeArea(
        bottom: false,
        child: Stack(
          children: [
            PageView(
              controller: pageController,
              onPageChanged: (value){
                homeController.tabIndex.value = value ;
                print(homeController.tabIndex.value.toString());
              },
              children: const [
                ProductScreen(),
                CategoryScreen()
              ],
            ),

            // botom nav bar
            Positioned(
              bottom: 20,
                left: 20,
                right: 20,
                child: Container(
                  alignment: Alignment.center,
                  height: 70,
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Obx(
                    ()=> Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                        IconButton(onPressed: (){
                          homeController.tabIndex.value = 0;
                          print(homeController.tabIndex.toString());
                          pageController.jumpToPage(0);
                        }, icon: Icon(homeController.tabBarIcons[0], size: 22,color:homeController.tabIndex.value == 0 ? Colors.yellow :
                        Colors.white)),
                          IconButton(onPressed: (){
                            pageController.jumpToPage(1);
                            homeController.tabIndex.value = 1;
                            print(homeController.tabIndex.toString());

                          }, icon: Icon(homeController.tabBarIcons[1], size: 22,
                            color:homeController.tabIndex.value == 1 ? Colors.yellow :
                          Colors.white,))

                        ],
                      ),
                  ),
                  ),
                ),

          ],
        ),
      ),
    );
  }
}
