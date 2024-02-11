import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import '../../models/movie.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({super.key});

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> with SingleTickerProviderStateMixin{
  late TabController _tabController;
  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: HexColor("#EAB63E"),
      body: SingleChildScrollView(
        child: Stack(
          children: [
            BackgroundWidget(size: size),
            Container(
              height: size.height/3.5,
            ),
            const ArrowBack(),
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 24, top: size.height/4.5),
                  child: Row(
                    children: [
                      SizedBox(
                        width: size.width/2.5,
                        child: Image.asset("${movies[1].poster}",
                        fit: BoxFit.cover),
                      ),
                      Expanded(child: Column(
                        children: [
                          Container(
                            padding: const EdgeInsets.only(left: 8),
                            width: size.width,
                            child: Text(
                              "${movies[1].title}",
                              style: TextStyle(
                                color: HexColor("#355952"),
                                fontSize: 20,
                                fontWeight: FontWeight.bold
                              ),
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.only(left: 8),
                            width: size.width,
                            child: Text(
                              "${movies[1].genre}",
                              style: TextStyle(
                                color: HexColor("#355952"),
                                fontSize: 15,
                              ),
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.only(left: 8, bottom: 55),
                            width: size.width,
                            child: Text(
                              "${movies[1].duration}",
                              style: TextStyle(
                                color: HexColor("#355952"),
                                fontSize: 15,
                              ),
                            ),
                          )
                        ],))
                    ],
                  ),
                ),
                SizedBox(
                  height: size.height - 120,
                  child: Column(
                    children: [
                      Container(
                        alignment: Alignment.center,
                        width: size.width,
                        child: TabBar(
                          tabs: const [
                            Tab(text: "About Movie"),
                            Tab(text: "Review"),
                          ],
                          controller: _tabController,
                          indicatorSize: TabBarIndicatorSize.label,
                          labelStyle: const TextStyle(fontWeight: FontWeight.bold),
                          unselectedLabelStyle: const TextStyle(fontWeight: FontWeight.bold),
                          indicatorColor: HexColor("FAF6E7"),
                          labelColor: HexColor("FAF6E7"),
                          dividerColor: HexColor("355952"),
                          unselectedLabelColor: HexColor("355952"),
                          ),
                      ),
                      Expanded(
                        child: TabBarView(
                          controller: _tabController,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: [
                                buildTitle("Synopsis"),
                                Padding(padding: const EdgeInsets.only(left: 24),
                                child: Text(
                                    "${movies[1].synopsis}",
                                    style: TextStyle(
                                      color: HexColor("355952")
                                    ),
                                  ),
                                ),
                                buildTitle("Cast"),
                                Padding(padding: const EdgeInsets.only(left: 24),
                                child: Text(
                                    "${movies[1].cast}",
                                    style: TextStyle(
                                      color: HexColor("355952")
                                    ),
                                  ),
                                ),
                              ]
                            ),
                            Container(
                              alignment: Alignment.center,
                              child: Text(
                                'Review Page',
                                style: TextStyle(
                                  color: HexColor("FAF6E7")
                                ),),
                            )
                          ]
                          ))
                    ],
                  ),
                )
              ],
            ),
            
          ],
        ),
      ),
    );
  }

  Padding buildTitle(String text) {
    return Padding(
       padding: const EdgeInsets.all(24),
        child: Text(
            text,
            style: TextStyle(
            color: HexColor("355952"),
            fontSize: 20
            ),
        ), 
    );
  }
}




class ArrowBack extends StatelessWidget {
  const ArrowBack({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(padding: const EdgeInsets.only(top:15),
    child: IconButton(
      onPressed: () {
        Navigator.pop(context);
      }, 
      icon: Icon(
        Icons.arrow_back,
        color: HexColor("FAF6E7"),
      )));
  }
}



class BackgroundWidget extends StatelessWidget {
  const BackgroundWidget({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: size.height/3.5,
          decoration: BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage("${movies[1].poster}")),
          ),
        ),
        Container(height: 200,
        )
      ],
    );
  }
}