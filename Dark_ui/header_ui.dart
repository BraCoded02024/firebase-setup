import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'grid_ui.dart';
class Header extends StatefulWidget {
  const Header({super.key});

  @override
  _HeaderState createState() => _HeaderState();
}

class _HeaderState extends State<Header> {
  int currentindex =0;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xff392850), Color(0xff392850)],
            begin: Alignment.bottomCenter,
            end: Alignment.topCenter,
          )
      ),
      child:Scaffold(

        backgroundColor: Colors.transparent,
        body: Column(
          children: <Widget>[
            Padding(padding: const EdgeInsets.only(left: 8,right: 10,top: 25),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(icon: const Icon(Icons.bar_chart,
                    color: Colors.white,
                    size: 30,
                  ),
                      onPressed: (){}

                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16, right: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        "I.T.S",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 32,
                            letterSpacing: 1,
                            fontFamily: 'Gilroy-ExtraBold',
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 4,
                      ),
                      Text(
                        "Dashboard",
                        style: TextStyle(
                            color: Color(0xffa29aac),
                            fontSize: 18,
                            letterSpacing: 1,
                            fontFamily: 'Gilroy-ExtraBold',
                            fontWeight: FontWeight.w600),
                      ),
                    ],
                  ),
                  IconButton(
                    alignment: Alignment.topCenter,
                    icon: Image.asset(
                      "assets/notification.png",
                      width: 24,
                    ),
                    onPressed: () {},
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Grid(),

          ],
        ),
        bottomNavigationBar:CurvedNavigationBar(
          backgroundColor: const Color(0xff392850),
          buttonBackgroundColor:Colors.white ,
          color: Colors.white,
          animationCurve:Curves.easeInOutBack,
          height: 50,
          items: const [
            Icon(Icons.home,size: 20),
            Icon(Icons.list ,size: 20),
            Icon(Icons.add ,size: 20),
            Icon(Icons.merge_type ,size: 20),
          ],
          onTap: (index) {
            //Handle button tap
            setState(() {
              currentindex =index;

            });
          },
        ),

      ),


    );
  }
}
