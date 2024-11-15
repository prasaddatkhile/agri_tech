import 'package:agri_tech/view/homescreen/HomePage.dart';
import 'package:agri_tech/view/products/productInfo.dart';
import 'package:flutter/material.dart';

class Screen1 extends StatefulWidget {
  const Screen1({super.key});

  @override
  State<Screen1> createState() => _Screen1State();
}

class _Screen1State extends State<Screen1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Fertilizer", style: TextStyle(fontSize: 25)),
        leading: IconButton(
          onPressed: () {
            Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => HomePage()),
                      );
                      setState(() {});
          },
          icon: const Icon(Icons.arrow_back, size: 35),
        ),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.search)),
          IconButton(onPressed: () {}, icon: const Icon(Icons.notifications)),
          IconButton(onPressed: () {}, icon: const Icon(Icons.shopping_cart)),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  const SizedBox(width: 20),
                  _buildCategoryButton("CHEMICAL FERTILIZER"),
                  _buildCategoryButton("BIO FERTILIZER"),
                  _buildCategoryButton("WATER SOLUBLE"),
                  _buildCategoryButton("SPECIALITY FERTILIZER"),
                  _buildCategoryButton("MICRONUTRIENTS"),
                  _buildCategoryButton("BIO STIMULANT"),
                  Container(
                    padding: const EdgeInsets.all(10),
                    height: 40,
                    width: 180,
                    child: const Text(
                      "PLANT GROWTH REGULATOR",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
                    ),
                  ),
                ],
              ),
            ),
            ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: 5,
              itemBuilder: (context, index) {
                return Row(
                  children: [
                    const SizedBox(width: 8),
                    _buildProductCard(),
                    const SizedBox(width: 5),
                    _buildProductCard(),
                  ],
                );
              },
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildCategoryButton(String text) {
    return Container(
      padding: const EdgeInsets.all(10),
      child: Text(
        text,
        style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
      ),
    );
  }

  Widget _buildProductCard() {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => ProductInfoPage()),
        );
        setState(() {});
      },
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(18),
          border: Border.all(
              width: 1.5, color: const Color.fromARGB(255, 236, 218, 218)),
        ),
        height: 295,
        width: 195,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                child: Image.network(
                  fit: BoxFit.fill,
                  "https://res.cloudinary.com/agrimark/image/upload/q_auto/f_auto/c_pad,h_570,w_570/v1/uploads/assets/649655-82a60b.png?_a=AAAH2AI",
                ),
              ),
            ),
            const Text(
              "Criyagen Bio",
              style: TextStyle(fontSize: 20),
            ),
            const Text(
              "₹ 825.25",
              style: TextStyle(fontSize: 20),
            ),
            Container(
              height: 30,
              width: 170,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(7),
                border: Border.all(
                    width: 2, color: const Color.fromARGB(255, 7, 203, 13)),
              ),
              child: const Padding(
                padding: EdgeInsets.only(left: 18),
                child: Row(
                  children: [
                    Text(
                      "Add to Cart  ",
                      style: TextStyle(
                        color: Color.fromARGB(255, 7, 203, 13),
                        fontSize: 18,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    Icon(
                      Icons.shopping_cart,
                      color: Color.fromARGB(255, 7, 203, 13),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
