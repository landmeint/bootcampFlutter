import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import '../Tugas9/drawer_screen.dart';
import '../Tugas11/routes.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});
  

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  int currentTab = 0;
  

  @override
  Widget build(BuildContext context) {
    FirebaseAuth auth = FirebaseAuth.instance;
    return Scaffold(
      appBar:AppBar(
        title: const Text("Santravel", style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.w600)),
        actions: const <Widget>[
          Padding(padding: EdgeInsets.all(8.0),
          child: Icon(Icons.search, color: Colors.white)
          )
        ],
        backgroundColor:   Color.fromARGB(255, 91, 183, 236)
      ),
      drawer: const DrawerScreen(),
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
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        notchMargin: 10,
        child: Container(
          height: 60,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  MaterialButton(
                    minWidth: 40,
                    onPressed: () {
                      Navigator.pushNamed(context, '/');
                      currentTab = 0;
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.home,
                          color: currentTab == 0 ? Colors.blue : Colors.grey,
                        ),
                        Text(
                          'Home',
                          style: TextStyle(color: currentTab == 0 ? Colors.blue : Colors.grey)
                        )
                      ]
                    )
                  ),
                  MaterialButton(
                    minWidth: 40,
                    onPressed: () {
                      Navigator.pushNamed(context, '/search');
                      currentTab = 1;
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.search,
                          color: currentTab == 1 ? Colors.blue : Colors.grey,
                        ),
                        Text(
                          'Search',
                          style: TextStyle(color: currentTab == 1 ? Colors.blue : Colors.grey)
                        )
                      ]
                    )
                  ),
                  MaterialButton(
                    minWidth: 40,
                    onPressed: () {
                      Navigator.pushNamed(context, '/about');
                      currentTab = 3;
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.person,
                          color: currentTab == 2 ? Colors.blue : Colors.grey,
                        ),
                        Text(
                          'About',
                          style: TextStyle(color: currentTab == 2 ? Colors.blue : Colors.grey)
                        )
                      ]
                    )
                  ),
                ],
              )
            ],
          )
        ) 
      ),
    );
  }
}