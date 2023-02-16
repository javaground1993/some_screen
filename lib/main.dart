import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:somescreen/home_screen/home_screen.dart';
import 'package:somescreen/my_wave_cliper/my_wave_clipper.dart';
import 'package:somescreen/shoping_cart/views/cart_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Some scene',
      home: const CartScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}


