import 'package:flutter/material.dart';
class MyDukaan extends StatefulWidget{
  @override
  State createState() =>MyDukaanState();
}
class MyDukaanState extends State{
  @override
  Widget build(BuildContext context){
    
      return Scaffold(
        appBar: AppBar(
          title: const Text("Dukaan",
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.w400
          ),
          ),
          bottom: PreferredSize(preferredSize: const Size.fromHeight(2), child:Container(
            color: Colors.black,
            height:1,
          )),
        ),
        body: Column(
          children: [
             const SizedBox(
              height: 8,
            ),
            const Row(
              children: [
                 SizedBox(
                width: 15,
              ),
                Icon(Icons.history,size: 40,),
              SizedBox(
                width: 10,
              ),
                Text("Recently Viwed",
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.w500
                ),),
                const Spacer(),
                const Text("View all",
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.blue,
                  fontWeight: FontWeight.w500
                ),),
                const SizedBox(
                  width: 20,
                )
              ],
            ),
             SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                 Container(
                    margin: const EdgeInsets.all(5),
                    height: 220,
                    width: 150,
                    decoration: BoxDecoration(
                      border: Border.all(width: 1.5, color: Colors.black),
                        borderRadius: BorderRadius.circular(18),
                      ),
                    child: Column(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(18),
                          child: Image.network(
                            "https://cdn.pixabay.com/photo/2020/04/12/10/57/store-5033746_640.png",
                            height: 130, // Adjust height as needed
                            width: 150, // Match the container's width
                            fit: BoxFit.cover, // This ensures the image covers the entire area
                        ),
                      ),
                      const SizedBox(height: 5),
                      const Text(
                        "XYZ Fertilizer",
                        style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                      ),
                      const Text(
                        "by Nagarkar Agro",
                        style: TextStyle(fontSize: 13, fontWeight: FontWeight.w400),
                      ),
                     
                    ],
                  ),
                    ),
                     Container(
                    margin: const EdgeInsets.all(5),
                    height: 220,
                    width: 150,
                    decoration: BoxDecoration(
                      border: Border.all(width: 1.5, color: Colors.black),
                        borderRadius: BorderRadius.circular(18),
                      ),
                    child: Column(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(18),
                          child: Image.network(
                            "https://cdn.pixabay.com/photo/2020/04/12/10/57/store-5033746_640.png",
                            height: 130, // Adjust height as needed
                            width: 150, // Match the container's width
                            fit: BoxFit.cover, // This ensures the image covers the entire area
                        ),
                      ),
                      const SizedBox(height: 5),
                      const Text(
                        "Shreya Agro",
                        style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                      ),
                      const Text(
                        "Nagar",
                        style: TextStyle(fontSize: 13, fontWeight: FontWeight.w400),
                      ),
                      const Text(
                        "2Km away",
                        style: TextStyle(fontSize: 13, fontWeight: FontWeight.w400, color: Colors.black),
                      ),
                    ],
                  ),
                    ),
                     Container(
                    margin: const EdgeInsets.all(5),
                    height: 220,
                    width: 150,
                    decoration: BoxDecoration(
                      border: Border.all(width: 1.5, color: Colors.black),
                        borderRadius: BorderRadius.circular(18),
                      ),
                    child: Column(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(18),
                          child: Image.network(
                            "https://cdn.pixabay.com/photo/2020/04/12/10/57/store-5033746_640.png",
                            height: 130, // Adjust height as needed
                            width: 150, // Match the container's width
                            fit: BoxFit.cover, // This ensures the image covers the entire area
                        ),
                      ),
                      const SizedBox(height: 5),
                      const Text(
                        "Shreya Agro",
                        style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                      ),
                      const Text(
                        "Nagar",
                        style: TextStyle(fontSize: 13, fontWeight: FontWeight.w400),
                      ),
                      const Text(
                        "2Km away",
                        style: TextStyle(fontSize: 13, fontWeight: FontWeight.w400, color: Colors.black),
                      ),
                    ],
                  ),
                    )
                ],
                ),
            ),
            // Agrishops
            const SizedBox(
              height: 8,
            ),
            const Row(
              children: [
                 SizedBox(
                width: 15,
              ),
                Icon(Icons.store,size: 40,),
              SizedBox(
                width: 10,
              ),
                Text("Agrishops",
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.w500
                ),),
                const Spacer(),
                const Text("View all",
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.blue,
                  fontWeight: FontWeight.w500
                ),),
                const SizedBox(
                  width: 20,
                )
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                 Container(
                    margin: const EdgeInsets.all(5),
                    height: 220,
                    width: 150,
                    decoration: BoxDecoration(
                      border: Border.all(width: 1.5, color: Colors.black),
                        borderRadius: BorderRadius.circular(18),
                      ),
                    child: Column(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(18),
                          child: Image.network(
                            "https://cdn.pixabay.com/photo/2020/04/12/10/57/store-5033746_640.png",
                            height: 130, // Adjust height as needed
                            width: 150, // Match the container's width
                            fit: BoxFit.cover, // This ensures the image covers the entire area
                        ),
                      ),
                      const SizedBox(height: 5),
                      const Text(
                        "Shreya Agro",
                        style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                      ),
                      const Text(
                        "Nagar",
                        style: TextStyle(fontSize: 13, fontWeight: FontWeight.w400),
                      ),
                      const Text(
                        "2Km away",
                        style: TextStyle(fontSize: 13, fontWeight: FontWeight.w400, color: Colors.black),
                      ),
                    ],
                  ),
                    ),
                     Container(
                    margin: const EdgeInsets.all(5),
                    height: 220,
                    width: 150,
                    decoration: BoxDecoration(
                      border: Border.all(width: 1.5, color: Colors.black),
                        borderRadius: BorderRadius.circular(18),
                      ),
                    child: Column(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(18),
                          child: Image.network(
                            "https://cdn.pixabay.com/photo/2020/04/12/10/57/store-5033746_640.png",
                            height: 130, // Adjust height as needed
                            width: 150, // Match the container's width
                            fit: BoxFit.cover, // This ensures the image covers the entire area
                        ),
                      ),
                      const SizedBox(height: 5),
                      const Text(
                        "Shreya Agro",
                        style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                      ),
                      const Text(
                        "Nagar",
                        style: TextStyle(fontSize: 13, fontWeight: FontWeight.w400),
                      ),
                      const Text(
                        "2Km away",
                        style: TextStyle(fontSize: 13, fontWeight: FontWeight.w400, color: Colors.black),
                      ),
                    ],
                  ),
                    ),
                     Container(
                    margin: const EdgeInsets.all(5),
                    height: 220,
                    width: 150,
                    decoration: BoxDecoration(
                      border: Border.all(width: 1.5, color: Colors.black),
                        borderRadius: BorderRadius.circular(18),
                      ),
                    child: Column(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(18),
                          child: Image.network(
                            "https://cdn.pixabay.com/photo/2020/04/12/10/57/store-5033746_640.png",
                            height: 130, // Adjust height as needed
                            width: 150, // Match the container's width
                            fit: BoxFit.cover, // This ensures the image covers the entire area
                        ),
                      ),
                      const SizedBox(height: 5),
                      const Text(
                        "Shreya Agro",
                        style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                      ),
                      const Text(
                        "Nagar",
                        style: TextStyle(fontSize: 13, fontWeight: FontWeight.w400),
                      ),
                      const Text(
                        "2Km away",
                        style: TextStyle(fontSize: 13, fontWeight: FontWeight.w400, color: Colors.black),
                      ),
                    ],
                  ),
                    )
                ],
                ),
            ),
            //Recently Viewed

  ],
  )
  );
}
}