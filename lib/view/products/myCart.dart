import "package:flutter/material.dart";

class MyCart extends StatefulWidget {
  @override
  State createState() => MyCartState();
}

class MyCartState extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
              setState(() {
                
              });
            },
            icon: const Icon(
              Icons.arrow_back,
              size: 30,
            )),
        title: const Text(
          "Cart",
          style: TextStyle(fontSize: 28, fontWeight: FontWeight.w500),
        ),
      ),
      body: Column(
        children: [
          ListView.builder(
              shrinkWrap: true,
              itemCount: 3,
              itemBuilder: (context, int) {
                return Container(
                  margin: const EdgeInsets.all(10),
                  height: 160,
                  width: MediaQuery.sizeOf(context).width,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: const Color.fromRGBO(235, 224, 220, 1)),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: SizedBox(
                                height: 100,
                                width: 100,
                                child: Image.network(
                                    "https://res.cloudinary.com/agrimark/image/upload/q_auto/f_auto/c_pad,h_570,w_570/v1/uploads/assets/649655-82a60b.png?_a=AAAH2AI")),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          const Column(
                            children: [
                              Text(
                                "Chamak plus",
                                style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              Text(
                                "\$ 702.21",
                                style: TextStyle(
                                  fontSize: 17,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              Text(
                                "Size : 1 Litre",
                                style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Row(
                        children: [
                          const SizedBox(
                            width: 10,
                          ),
                          Container(
                              padding: const EdgeInsets.only(bottom: 5),
                              height: 30,
                              width: 30,
                              decoration: BoxDecoration(
                                border:
                                    Border.all(width: 2.3, color: Colors.red),
                                borderRadius: BorderRadius.circular(6),
                              ),
                              child: const Icon(
                                Icons.minimize,
                                size: 25,
                              )),
                          Container(
                              padding:
                                  const EdgeInsets.only(bottom: 5, left: 6),
                              height: 30,
                              width: 30,
                              decoration: BoxDecoration(
                                // border:Border.all(width:2.3),
                                borderRadius: BorderRadius.circular(6),
                              ),
                              child: const Text(
                                "1",
                                style: TextStyle(fontSize: 20),
                              )),
                          Container(
                              padding: const EdgeInsets.only(bottom: 5),
                              height: 30,
                              width: 30,
                              decoration: BoxDecoration(
                                border:
                                    Border.all(width: 2.3, color: Colors.green),
                                borderRadius: BorderRadius.circular(6),
                              ),
                              child: const Icon(
                                Icons.add,
                                size: 25,
                                color: Colors.green,
                              )),
                          const Spacer(),
                          GestureDetector(
                              onTap: () {},
                              child: const Icon(
                                Icons.delete,
                                color: Colors.red,
                                size: 32,
                              )),
                          const SizedBox(
                            width: 10,
                          )
                        ],
                      )
                    ],
                  ),
                );
              }),
          const Spacer(),
          Container(
            margin: const EdgeInsets.all(15),
            padding: const EdgeInsets.only(left: 95, top: 10),
            height: 50,
            width: MediaQuery.sizeOf(context).width,
            decoration: BoxDecoration(
                borderRadius: BorderRadiusDirectional.circular(10),
                color: const Color.fromARGB(255, 118, 221, 0)),
            child: const Text(
              "Proceed to checkout",
              style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                  fontWeight: FontWeight.w600),
            ),
          )
        ],
      ),
    );
  }
}
