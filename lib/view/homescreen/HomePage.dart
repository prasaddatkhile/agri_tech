import 'package:agri_tech/model/gov_schems_model.dart';
import 'package:agri_tech/view/community/communityPostUI.dart';
import 'package:agri_tech/view/createPost/createPostScreen.dart';
import 'package:agri_tech/view/diseases/diseasesPage.dart';
import 'package:agri_tech/view/dukan/dukanHomepage.dart';
import 'package:agri_tech/view/govPolicy/govPolicyUI.dart';
import 'package:agri_tech/view/products/productPage.dart';
import 'package:agri_tech/view/weather/weatherPage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

class HomePage extends StatefulWidget {
  @override
  State createState() => _HomePageState();
}

class _HomePageState extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 3.0,
        shadowColor: const Color.fromARGB(255, 194, 193, 193),
        actions: [
          // IconButton(
          //     onPressed: () {
          //       Scaffold.of(context).openDrawer();
          //     },
          //     icon: const Icon(Icons.menu_outlined)),
          const SizedBox(width: 100),
          const Text("AgriTech",
              style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.w700,
                color: Color.fromARGB(255, 1, 174, 73),
              )),
          const SizedBox(width: 10),
          //searchBar
          Expanded(
            child: Container(
                // width: 200,
                height: 35,
                decoration: BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius: BorderRadius.circular(7)),
                child: Row(children: [
                  IconButton(onPressed: () {}, icon: const Icon(Icons.search)),
                  const Expanded(
                    child: TextField(
                        decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "Search",
                    )),
                  ),
                ])),
          ),
          const SizedBox(
            width: 10,
          ),
          IconButton(
              onPressed: () {},
              icon: const Icon(Icons.account_circle_rounded, size: 35))
        ],
      ),
      //drawer code
      drawer: Drawer(
          width: 300,
          backgroundColor: const Color.fromARGB(255, 210, 208, 208),
          child: Container(
              width: 300,
              child: Column(
                children: [
                  const SizedBox(height: 20),
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: const Text("Profile",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w400)),
                  ),
                  Container(
                    height: 1,
                    color: Colors.grey,
                  ),
                  const SizedBox(height: 10),
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: const Text("Home",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w400)),
                  ),
                  Container(
                    height: 1,
                    color: Colors.grey,
                  ),
                  const SizedBox(height: 10),
                  GestureDetector(
                    onTap: () {
                      // Navigator.pop(context);
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => WeatherPage()),
                      );
                      setState(() {});
                    },
                    child: const Text("Weather",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w400)),
                  ),
                  Container(
                    height: 1,
                    color: Colors.grey,
                  ),
                  const SizedBox(height: 10),
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: const Text("Help",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w400)),
                  ),
                  Container(
                    height: 1,
                    color: Colors.grey,
                  ),
                  const SizedBox(height: 10),
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: const Text("History",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w400)),
                  ),
                  Container(
                    height: 1,
                    color: Colors.grey,
                  ),
                  const SizedBox(height: 10),
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: const Text("Log-Out",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w400)),
                  ),
                  Container(
                    height: 1,
                    color: Colors.grey,
                  ),
                  const SizedBox(height: 10),
                ],
              ))),
      body: Padding(
        padding: const EdgeInsets.only(
          left: 10,
          right: 10,
        ),
        child: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            const Text("Product Categories",
                style: TextStyle(fontSize: 28, fontWeight: FontWeight.w600)),
            const SizedBox(height: 10),
            SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    //fertilizers
                    Column(
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Screen1()),
                            );
                            setState(() {});
                          },
                          child: Container(
                            height: 100,
                            width: 100,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: const Color.fromARGB(255, 205, 253, 207),
                                border: Border.all(
                                  color: Colors.grey,
                                )),
                            child: Center(
                              child: Container(
                                height: 70,
                                width: 70,
                                child: Image.asset(
                                    "assets/images/fertilizer.png",
                                    fit: BoxFit.fill),
                              ),
                            ),
                          ),
                        ),
                        const Text("Fertilizers",
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.w400)),
                      ],
                    ),
                    const SizedBox(width: 10),
                    //pesticide
                    Column(
                      children: [
                        Container(
                          height: 100,
                          width: 100,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: const Color.fromARGB(255, 205, 253, 207),
                              border: Border.all(
                                color: Colors.grey,
                              )),
                          child: Center(
                            child: GestureDetector(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Screen1()),
                                );
                                setState(() {});
                              },
                              child: Container(
                                height: 70,
                                width: 70,
                                child: Image.asset(
                                    "assets/images/pesticide.jpg",
                                    fit: BoxFit.fill),
                              ),
                            ),
                          ),
                        ),
                        const Text("Pesticidess",
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.w400)),
                      ],
                    ),
                    const SizedBox(width: 10),
                    //seeds
                    Column(
                      children: [
                        Container(
                          height: 100,
                          width: 100,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: const Color.fromARGB(255, 205, 253, 207),
                              border: Border.all(
                                color: Colors.grey,
                              )),
                          child: Center(
                            child: Container(
                              height: 70,
                              width: 70,
                              child: Image.asset(
                                  "assets/images/instruments.png",
                                  fit: BoxFit.fill),
                            ),
                          ),
                        ),
                        const Text("Instruments",
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.w400)),
                      ],
                    ),
                    const SizedBox(width: 10),
                    //instruments
                    Column(
                      children: [
                        Container(
                          height: 100,
                          width: 100,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: const Color.fromARGB(255, 205, 253, 207),
                              border: Border.all(
                                color: Colors.grey,
                              )),
                          child: Center(
                            child: Container(
                              height: 70,
                              width: 70,
                              child: Image.asset("assets/images/seeds.png",
                                  fit: BoxFit.fill),
                            ),
                          ),
                        ),
                        const Text("Seeds",
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.w400)),
                      ],
                    ),
                    const SizedBox(width: 10),
                  ],
                )),
            const SizedBox(height: 12),
            const Text("Goverment Schemes",
                style: TextStyle(fontSize: 28, fontWeight: FontWeight.w600)),
            const SizedBox(height: 10),
            SizedBox(
              height: 180,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: govShemeList.length,
                  itemBuilder: (context, idx) {
                    return Container(
                      height: 150,
                      width: 150,
                      margin: const EdgeInsets.only(right: 10),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          boxShadow: const [
                            BoxShadow(
                              color: Color.fromARGB(255, 88, 87, 87),
                              blurRadius: 30,
                              spreadRadius: 0,
                              offset: Offset(0, 3),
                            ),
                          ],
                          borderRadius: BorderRadius.circular(10)),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const SizedBox(height: 10),
                          SizedBox(
                            height: 100,
                            width: 120,
                            child: Image.asset("assets/images/PMKisan.png",
                                fit: BoxFit.fill),
                          ),
                          const SizedBox(height: 7),
                          const Text("PM-Kissan",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.w500)),
                        ],
                      ),
                    );
                  }),
            ),
            const SizedBox(height: 12),
            const Text("Manufaturers",
                style: TextStyle(fontSize: 28, fontWeight: FontWeight.w600)),
            const SizedBox(height: 10),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Container(
                    height: 150,
                    width: 150,
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 227, 230, 227),
                        border: Border.all(color: Colors.grey),
                        borderRadius: BorderRadius.circular(10)),
                    child: Center(
                      child: Column(
                        children: [
                          const SizedBox(height: 10),
                          Container(
                            height: 100,
                            width: 120,
                            child: Image.asset("assets/images/relaince.png",
                                fit: BoxFit.fill),
                          ),
                          const SizedBox(height: 7),
                          const Text("Relaince Agro",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.w500)),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(width: 10),
                  Container(
                    height: 150,
                    width: 150,
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 227, 230, 227),
                        border: Border.all(color: Colors.grey),
                        borderRadius: BorderRadius.circular(10)),
                    child: Center(
                      child: Column(
                        children: [
                          const SizedBox(height: 10),
                          Container(
                            height: 100,
                            width: 120,
                            child: Image.asset(
                                "assets/images/iplbiologicals.jpg",
                                fit: BoxFit.fill),
                          ),
                          const SizedBox(height: 7),
                          const Text("Ipl_Biologicals",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.w500)),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(width: 10),
                  Container(
                    height: 150,
                    width: 150,
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 227, 230, 227),
                        border: Border.all(color: Colors.grey),
                        borderRadius: BorderRadius.circular(10)),
                    child: Center(
                      child: Column(
                        children: [
                          const SizedBox(height: 10),
                          Container(
                            height: 100,
                            width: 120,
                            child: Image.asset("assets/images/syngenta.png",
                                fit: BoxFit.fill),
                          ),
                          const SizedBox(height: 7),
                          const Text("Syngenta",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.w500)),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(width: 10),
                  Container(
                    height: 150,
                    width: 150,
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 227, 230, 227),
                        border: Border.all(color: Colors.grey),
                        borderRadius: BorderRadius.circular(10)),
                    child: Center(
                      child: Column(
                        children: [
                          const SizedBox(height: 10),
                          Container(
                            height: 100,
                            width: 120,
                            child: Image.asset("assets/images/godrej.jpg",
                                fit: BoxFit.fill),
                          ),
                          const SizedBox(height: 7),
                          const Text("Godrej",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.w500)),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(width: 10),
                ],
              ),
            )
          ],
        ),
      ),
      //bottom navbar
      bottomNavigationBar: Container(
        color: const Color.fromARGB(255, 1, 174, 73),
        padding: const EdgeInsets.symmetric(vertical: 8),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              icon: const Icon(Icons.home, size: 30),
              onPressed: () => {},
            ),
            IconButton(
              icon: const Icon(
                Icons.add_circle_outline,
                size: 30,
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => CreatePostScreen()),
                );
                setState(() {});
              },
            ),
            IconButton(
              icon: const Icon(Icons.camera, size: 30),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => DiseasePage()),
                );
                setState(() {});
              },
            ),
            IconButton(
              icon: const Icon(Icons.people_outline, size: 30),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => CommunityScreen()),
                );
                setState(() {});
              },
            ),
            IconButton(
              icon: const Icon(Icons.shop_2_outlined, size: 30),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => MyDukaan()),
                );
                setState(() {});
              },
            ),
          ],
        ),
      ),
    );
  }
}
