import 'package:agri_tech/view/products/myCart.dart';
import 'package:flutter/material.dart';

class ProductInfoPage extends StatefulWidget {
  @override
  State createState() => ProductInfoPageState();
}

class ProductInfoPageState extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            "Avancer Glow",
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.w400),
          ),
          leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
                        setState(() {
                          
                        });
              },
              icon: const Icon(Icons.arrow_back, size: 30)),
          actions: [
            IconButton(onPressed: () {}, icon: const Icon(Icons.search)),
            IconButton(onPressed: () {}, icon: const Icon(Icons.notifications)),
            IconButton(onPressed: () {}, icon: const Icon(Icons.shopping_cart))
          ],
        ),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            //crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 240,
                child: Image.network(
                  "https://res.cloudinary.com/agrimark/image/upload/q_auto/f_auto/c_pad,h_570,w_570/v1/uploads/assets/649655-82a60b.png?_a=AAAH2AI",
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              const Text(
                "UPL Avancer Glow",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w400,
                ),
              ),
              Row(
                children: [
                  const SizedBox(
                    width: 20,
                  ),
                  const Text(
                    "₹ 520", // MRP
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.w700),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  const Text(
                    "MRP ₹ 580", //discount
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        color: Color.fromARGB(255, 181, 174, 174)),
                  ),
                  const Spacer(),
                  IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.share)), // share Icon
                  const SizedBox(
                    width: 15,
                  )
                ],
              ),
              const Row(
                children: [
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    " Out of Stock", // unavailable
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: Colors.red),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "You Save ₹ 59.85 ", //discount
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: Colors.red),
                  ),
                ],
              ),
              const SizedBox(
                height: 8,
              ),
              const Row(
                children: [
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    "Available Quantities",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                  ),
                ],
              ),
              const SizedBox(
                height: 8,
              ),
              Row(
                children: [
                  const SizedBox(
                    width: 25,
                  ),
                  Container(
                    padding: const EdgeInsets.only(top: 8, left: 12),
                    height: 35,
                    width: 80,
                    decoration: BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: const Text(
                      "300 Gm", // unavailable
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: Colors.black),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Container(
                    padding: const EdgeInsets.only(top: 8, left: 12),
                    height: 35,
                    width: 80,
                    decoration: BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: const Text(
                      "600 Gm", // unavailable
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: Colors.black),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 15),
                decoration: const BoxDecoration(
                    border: Border(
                        bottom: BorderSide(
                            color: Color.fromARGB(255, 186, 177, 177),
                            width: 1.5))),
                child: const Row(
                  children: [
                    const SizedBox(
                      width: 15,
                    ),
                    Text(
                      "Description ",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                    ),
                    Spacer(),
                    Icon(
                      Icons.arrow_drop_down,
                      size: 30,
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 15),
                decoration: const BoxDecoration(
                    border: Border(
                        bottom: BorderSide(
                            color: Color.fromARGB(255, 186, 177, 177),
                            width: 1.5))),
                child: const Row(
                  children: [
                    const SizedBox(
                      width: 15,
                    ),
                    Text(
                      "About the Brand",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                    ),
                    Spacer(),
                    Icon(
                      Icons.arrow_drop_down,
                      size: 30,
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 15),
                decoration: const BoxDecoration(
                    border: Border(
                        bottom: BorderSide(
                            color: Color.fromARGB(255, 186, 177, 177),
                            width: 1.5))),
                child: const Row(
                  children: [
                    const SizedBox(
                      width: 18,
                    ),
                    Text(
                      "Crops & Benefits ",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                    ),
                    Spacer(),
                    Icon(
                      Icons.arrow_drop_down,
                      size: 30,
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 15),
                decoration: const BoxDecoration(
                    border: Border(
                        bottom: BorderSide(
                            color: Color.fromARGB(255, 186, 177, 177),
                            width: 1.5))),
                child: const Row(
                  children: [
                    const SizedBox(
                      width: 15,
                    ),
                    Text(
                      "How to Use ",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                    ),
                    Spacer(),
                    Icon(
                      Icons.arrow_drop_down,
                      size: 30,
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 15),
                decoration: const BoxDecoration(
                    border: Border(
                        bottom: BorderSide(
                            color: Color.fromARGB(255, 186, 177, 177),
                            width: 1.5))),
                child: const Row(
                  children: [
                    const SizedBox(
                      width: 15,
                    ),
                    Text(
                      "Dosage ",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                    ),
                    Spacer(),
                    Icon(
                      Icons.arrow_drop_down,
                      size: 30,
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 15),
                decoration: const BoxDecoration(
                    border: Border(
                        bottom: BorderSide(
                            color: Color.fromARGB(255, 186, 177, 177),
                            width: 1.5))),
                child: const Row(
                  children: [
                    const SizedBox(
                      width: 15,
                    ),
                    Text(
                      "Mode of Action ",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                    ),
                    Spacer(),
                    Icon(
                      Icons.arrow_drop_down,
                      size: 30,
                    )
                  ],
                ),
              ),
              Container(
                decoration: BoxDecoration(
                    border: Border(
                        top: BorderSide(color: Colors.black, width: 1.2))),
                height: 60,
                width: MediaQuery.sizeOf(context).width,
                child: Row(
                  children: [
                    SizedBox(
                      width: 20,
                    ),
                    Text(
                      "₹ 520",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                    ),
                    Spacer(),
                    GestureDetector(
                      onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => MyCart()),
                      );
                      setState(() {});
                      },
                      child: Container(
                        padding: const EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          border: Border.all(
                              color: const Color.fromARGB(255, 8, 126, 12),
                              width: 1.5),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: const Row(
                          children: [
                            Text(
                              "Add to Cart ",
                              style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w400,
                                  color: Color.fromARGB(255, 8, 126, 12)),
                            ),
                            Icon(
                              Icons.shopping_cart,
                              color: Color.fromARGB(255, 8, 126, 12),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 15,
                    )
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
