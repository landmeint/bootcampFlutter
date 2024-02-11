// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables


import 'package:chiketto/pages/login/login_page.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class SplashScreen extends StatefulWidget {
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  final PageController _pageController = PageController();
  int currentPageIndex = 0;
  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            onPageChanged: (i) {
              setState(() {
                currentPageIndex = i;
              });
            },
            controller: _pageController,
            children: [
              Container(
                color: HexColor("#355952"),
                child: Center(
                  child: Text(
                    "Chiketto",
                    style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                      color: HexColor("#EAB63E")
                    ),
                  ),
                ),
              ),
              Container(
                color: HexColor("#FAF6E7"),
                child: Center(
                  child: _page(
                    "Apa itu Chiketto", 
                    "Chiketto adalah sebuah aplikasi informasi seputar dunia perfilman dan bioskop di Indonesia yang pastinya selalu uptodate setiap harinya.", "#355952", "#EAB63E")
                ),
              ),
              Container(
                color: HexColor("#EAB63E"),
                child: Center(
                  child: _page(
                    "Di Chiketto Ada Fitur Apa Saja?", 
                    "Chiketto memiliki banyak fitur didalamnya, antara lain ialah, film-film yang sedang tayang di Indonesia, film-film yang akan segera hadir, informasi tentang film-film yang sedang tayang dan jam tayangnya.", "#FAF6E7" ,"#355952")
                ),
              ),
            ],
          ),
          Align(
            alignment: Alignment.bottomCenter, 
            child: Padding(
              padding: const EdgeInsets.only(bottom: 32),
              child: SmoothPageIndicator(
                controller: _pageController, 
                count: 3,
                onDotClicked: (index) {
                  _pageController.jumpToPage(index);
                },
                ),
            )),
            if(currentPageIndex == 2)  
            Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: const EdgeInsets.all(64),
                child: ElevatedButton(onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => LoginPage()));
                }, child: Text(
                  "Get Started",
                  style: TextStyle(color: HexColor("#355952")))),
              ))
        ],
      ),
    );
  }

  Widget _page(String title, String subtitle, String tiColor, String suColor) {
    return Container(
      margin: EdgeInsets.all(16),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(title, style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
            color: HexColor(tiColor)
          )),
          SizedBox(height: 15),
          Text(subtitle, textAlign: TextAlign.justify ,style: TextStyle(
            fontSize: 10,
            fontWeight: FontWeight.bold,
            color: HexColor(suColor)
          ))
        ],
      ),
    );
  }
}