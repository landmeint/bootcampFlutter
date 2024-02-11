import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:carousel_slider/carousel_slider.dart';
import '../detail/detail_page.dart';
import '../profile/profile_page.dart';
import '../../models/movie.dart';
import '../../models/coming.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            HomeHeader(size: size),
            SearchBar(size: size),
            buildTitle("Now Playing"),
            Slider(size: size),
            buildTitle("Coming Soon"),
            const ComingSoon(),
          ],
        ),
      ),
    );
  }

  Padding buildTitle(String content) {
    return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 10),
            child: Text(
              content,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
                color: HexColor("#355952")
                ),
            ),
          );
  }
}




class HomeHeader extends StatelessWidget {
  const HomeHeader({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Padding(padding: const EdgeInsets.only(top: 64, left: 24, right: 24),
    child: SizedBox(
      height: size.height/10,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'Find Your Favorite \nMovie', 
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 24,
              color: HexColor("#355952")
            )),
          GestureDetector(
            onTap: () {
              Navigator.push(context, 
              MaterialPageRoute(builder: ((context) => const ProfilePage()))
            );},
            child: CircleAvatar(
              radius: size.height/24,
              backgroundImage: const AssetImage("assets/img/profile.png"),
            ),
          )
        ]),
    ),);
  }
}

class ComingSoon extends StatelessWidget {
  const ComingSoon({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(padding: const EdgeInsets.symmetric(horizontal: 10),
    child: Row(
      children: coming.map((e) => Builder(builder: (context) {
        return Expanded(child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 4),
          child: Image.asset("${e.poster}"),
        ));
      })).toList(),
    ),
    );
  }
}




class Slider extends StatelessWidget {
  const Slider({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(items: movies.map((e) => Builder(builder: (context) {
      return GestureDetector(
        onTap: () {
          Navigator.push(context, 
              MaterialPageRoute(builder: (context) => const DetailPage()));
        },
        child: Stack(
          children: [
            Container(
              width: size.width,
              padding: const EdgeInsets.only(left: 10, bottom: 24),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(14),
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage('${e.poster}')) 
              ),
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(14),
                gradient: const LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Colors.transparent,
                    Colors.white12
                  ]
                )
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    width: size.width,
                    padding: const EdgeInsets.only(bottom: 8, left: 8),
                    child: Text(
                      "${e.title}",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: HexColor("#EAB63E")
                        ),
                    ),
                  )
                ]),
            )
          ],
        ),
      );
    })).toList(), 
    options: CarouselOptions(autoPlay: true, enlargeCenterPage: true));
  }
}



class SearchBar extends StatelessWidget {
  const SearchBar({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Padding(padding:const EdgeInsets.symmetric(horizontal: 35,vertical: 35),
    child: SizedBox(
      height: size.height/15,
      child: Row(
        children: [
          Expanded(child: Container(
            height: size.height/15,
            decoration: BoxDecoration(
              color: HexColor("#355952"),
              borderRadius: BorderRadius.circular(22)
            ),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 24, right: 15),
                  child: Icon(Icons.search, size: 30, color: HexColor("#EAB63E"),),
                ),
                Expanded(child: TextField(
                  style: TextStyle(color: HexColor("#EAB63E")),
                  cursorColor: HexColor("#EAB63E"),
                  decoration: InputDecoration(
                    contentPadding: const EdgeInsets.only(bottom: 10),
                    
                    hintText: "Search Film",
                    hintStyle: TextStyle(
                      color: HexColor("#EAB63E")
                    ),
                    border: InputBorder.none
                  ),
                ))
              ],
            ),
          )),
        ],),
    ),);
  }
}