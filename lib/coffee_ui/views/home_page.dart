


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../widget/coffee_tile.dart';
import 'details_screen.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin  {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    TabController tabController = TabController(length: 4, vsync: this);
    return Scaffold(
      backgroundColor: const Color(0xff0c0f14),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Padding(padding: const EdgeInsets.only(left: 10, top: 10) ,
          child:Stack(
            children: [
              Positioned(
                left: 1,
                top: 1,
                child: Container(
                  height: 44,
                  width: 44,
                  decoration: BoxDecoration(
                    color:  const Color(0xff0c0f14),
                    borderRadius: BorderRadius.circular(15) ,
                    image:  const DecorationImage(
                      image: AssetImage(
                          'assets/images/menuu.png'),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ),

            ],
          ) ,),
        actions:  [
          Padding(padding: const EdgeInsets.only(right: 20 , top: 10) ,
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
                   left: 4,
                   top: 2,
                   child: Container(
                      height: 42,
                      width: 42,
                      decoration: BoxDecoration(
                          color:  Colors.white,
                          borderRadius: BorderRadius.circular(15) ,
                          image:  DecorationImage(
                      image: AssetImage(
                      'assets/images/h.jpg'),
                     fit: BoxFit.fill,
                   ),
                      ),
                    ),
                 ),

              ],
            ) ,)
        ],
      ),
      bottomNavigationBar: Container(
      //  padding: const EdgeInsets.only(left: 20 , right: 20),
        color: const Color(0xff0c0f14),
        height: 70,
        width: double.infinity,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 35, width: 35,
              child: Image.asset("assets/images/home.png" , color: const Color(0xffd17842), ),
            ),
            SizedBox(
              height: 35, width: 35,
              child: Image.asset("assets/images/shop.png"),
            ),
            SizedBox(
              height: 35, width: 35,
              child: Image.asset("assets/images/fav.png"),
            ),
            SizedBox(
              height: 35, width: 35,
              child: Image.asset("assets/images/not.png"),
            ),
          ],
        ),
      ),
          /*
      BottomNavigationBar(
        backgroundColor: const Color(0xff0c0f14),
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home ), label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.favorite ), label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.notifications ), label: ""),

        ],
      ),

           */
      body: Padding(padding: const EdgeInsets.symmetric(horizontal: 5 ),
        child: SingleChildScrollView(
          child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children:  [
            const SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text("Find the best" , style: GoogleFonts.acme(
                      fontSize: 30
                    ), ),
                    Text("coffee for you" , style: GoogleFonts.acme(
                        fontSize: 30
                    ), ),
                  ],

      ),
            ),

            const SizedBox(height: 25,),
             Padding(padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Container(
                decoration: BoxDecoration(
                  color: const Color(0xff141921),
                  borderRadius: BorderRadius.circular(20),
                ),
                child:  TextField(

                  decoration: InputDecoration(
                    prefixIcon:Image.asset("assets/images/search.png" , scale: 2,), //const Icon(Icons.search_sharp),
                    hintText: "Find Your Coffee...",
                    hintStyle: const TextStyle(color: Color(0xff52555a)),
                    focusedBorder:  OutlineInputBorder(
                      borderSide: const BorderSide(color: Colors.transparent),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                        borderSide: const BorderSide(color: Colors.transparent),
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 10,),
            Container(
              padding: const EdgeInsets.only(left: 10 , right: 20),

              height: 50,
              width: double.maxFinite,
              child: TabBar(
                labelColor: const Color(0xffd17842),
                unselectedLabelColor: const Color(0xff52555a),
                isScrollable: true,
                controller: tabController,
                labelStyle: const TextStyle(fontSize: 20,fontWeight: FontWeight.bold),
                indicator: CircleTabIndicator(color: const Color(0xffd17842), radius: 4),
                tabs: const [
                  Tab(text: "Cappuccino",height: 25 ),
                  Tab(text: "Espresso",),
                  Tab(text: "Latte",),
                  Tab(text: "Flat White",),
                ],
              ),
            ),
            const SizedBox(height: 25,),
          SingleChildScrollView(
           scrollDirection: Axis.horizontal,
           child: Row(
             mainAxisAlignment: MainAxisAlignment.start,
             crossAxisAlignment: CrossAxisAlignment.start,
             children: [
               GestureDetector(
                 onTap : (){
                   Navigator.push(
                     context,
                     MaterialPageRoute(builder: (context) => const DetailsScreen()),
                   );
                 } ,
                   child: CoffeeTile(name: "Cappuccino", pic: "cd", cost: "4.20", desc: "With Oat Milk", rate: "4.50")),
               CoffeeTile(name: "Cappuccino", pic: "a", cost: "4.20", desc: "With Oat Milk", rate: "4.50"),
               CoffeeTile(name: "Cappuccino", pic: "b", cost: "4.20", desc: "With Oat Milk", rate: "4.50"),

             ],
           ),
       ),
            const SizedBox(height: 20,),
            const Padding(
              padding: EdgeInsets.only(left: 20.0),
              child: Text("Special for you" , style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20),),
            )
          ],
      ),
        ),
    ));
  }
}



class CircleTabIndicator extends Decoration {
  final BoxPainter _painter;

  CircleTabIndicator({required Color color, required double radius}) : _painter = _CirclePainter(color, radius);

  @override
  BoxPainter createBoxPainter([VoidCallback? onChanged]) => _painter;
}

class _CirclePainter extends BoxPainter {
  final Paint _paint;
  final double radius;

  _CirclePainter(Color color, this.radius)
      : _paint = Paint()
    ..color = color
    ..isAntiAlias = true;

  @override
  void paint(Canvas canvas, Offset offset, ImageConfiguration cfg) {
    final Offset circleOffset = offset + Offset(cfg.size!.width / 2, cfg.size!.height - radius);
    canvas.drawCircle(circleOffset, radius, _paint);
  }
}