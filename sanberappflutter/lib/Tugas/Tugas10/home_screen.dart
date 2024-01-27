import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          padding: EdgeInsets.all(16),
          margin: EdgeInsets.only(top:40),
          color: Colors.white,
          child: ListView(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Icon(
                    Icons.notifications,
                    color: Colors.black,
                  ),
                  Icon(
                    Icons.shopping_cart,
                    color: Colors.black,
                  ),
                ],
              ),
              const SizedBox(height: 10),
              Container(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Welcome,",
                  style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.w800,
                    color: Color.fromARGB(255, 116, 227, 255)
                  ),
                ),
              ),
              Container(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Pradaya",
                  style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.w400,
                    color: Color(0xff475BD8)
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Container(
                height: 50,
                width: double.infinity,
                padding: EdgeInsets.all(16),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: Color.fromARGB(255, 116, 227, 255))),
                child: Row(
                  children: <Widget>[
                    Icon(
                      Icons.search,
                      color: Colors.black,
                    ),
                    const Text(
                      "  Search",
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w400,
                        color: Color.fromARGB(151, 0, 0, 0)
                      ),
                    )
                  ],
                )
              ),
              const SizedBox(height: 30),
              Container(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Recommended Place",
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                    color: Colors.black
                  ),
                ),
              ),
              Container(
                height: MediaQuery.of(context).size.height / 2,
                child: GridView.count(
                  primary: false,
                  padding: const EdgeInsets.all(5),
                  crossAxisSpacing: 1,
                  mainAxisSpacing: 1,
                  crossAxisCount: 2,
                  children: <Widget>[
                    Container(
                      padding: const EdgeInsets.all(4),
                      child: Image.asset(
                        "assets/img/Monas.png",
                        height: 15,
                        width: 20,
                      ) 
                    ),
                    Container(
                      padding: const EdgeInsets.all(4),
                      child: Image.asset(
                        "assets/img/Roma.png",
                        height: 15,
                        width: 20,
                      ) 
                    ),
                    Container(
                      padding: const EdgeInsets.all(4),
                      child: Image.asset(
                        "assets/img/Berlin.png",
                        height: 15,
                        width: 20,
                      ) 
                    ),
                    Container(
                      padding: const EdgeInsets.all(4),
                      child: Image.asset(
                        "assets/img/Tokyo.png",
                        height: 15,
                        width: 20,
                      ) 
                    ),
                  ],
                )
              )
            ],
          )
        )
      ),
    );
  }
}