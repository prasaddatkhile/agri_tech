import 'package:flutter/material.dart';

class DiseaseTreatmentPage extends StatefulWidget {
  @override
  _DiseaseTreatmentPageState createState() => _DiseaseTreatmentPageState();
}

class _DiseaseTreatmentPageState extends State<DiseaseTreatmentPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Root and Foot Rot Treatment',
            style: TextStyle(color: Color.fromARGB(255, 4, 120, 8))),
        //backgroundColor: Colors.teal[800],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Container(
                  height: 250,
                  width: 300,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black26,
                        blurRadius: 10,
                        offset: Offset(0, 5),
                      ),
                    ],
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(16),
                    child: Image.asset(
                      "assets/images/seedling.jpg",
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20),

              // Section for Symptoms
              Row(
                children: [
                  Icon(Icons.local_hospital, color: Colors.teal[800]),
                  SizedBox(width: 8),
                  Text(
                    'Symptoms',
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: Colors.teal[700],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 7),
              Container(
                padding: const EdgeInsets.all(12.0),
                decoration: BoxDecoration(
                  color: Colors.teal[50],
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Text(
                  'Brown areas at the base of the stem and roots, stunted growth...',
                  style: TextStyle(fontSize: 16.0),
                ),
              ),
              const SizedBox(height: 20),

              // Section for Cause
              Row(
                children: [
                  Icon(Icons.warning, color: Colors.teal[800]),
                  SizedBox(width: 8),
                  Text(
                    'What caused it?',
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: Colors.teal[700],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 7),
              Container(
                padding: const EdgeInsets.all(12.0),
                decoration: BoxDecoration(
                  color: Colors.teal[50],
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Text(
                  'The primary cause includes soil-borne pathogens that thrive in overly wet conditions...',
                  style: TextStyle(fontSize: 16.0),
                ),
              ),
              const SizedBox(height: 20),

              // Section for Preventive Measures
              Row(
                children: [
                  Icon(Icons.shield, color: Colors.teal[800]),
                  SizedBox(width: 8),
                  Text(
                    'Preventive Measures',
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: Colors.teal[700],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 7),
              Container(
                padding: const EdgeInsets.all(12.0),
                decoration: BoxDecoration(
                  color: Colors.teal[50],
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Text(
                  'To prevent root rot, ensure proper drainage, avoid waterlogging...',
                  style: TextStyle(fontSize: 16.0),
                ),
              ),
              const SizedBox(height: 32),

              // Recommendations & Controls
              Row(
                children: [
                  Icon(Icons.check_circle, color: Colors.teal[800]),
                  SizedBox(width: 8),
                  Text(
                    'Recommendations & Controls',
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: Colors.teal[700],
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              Container(
                height: 230.0,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 5,
                  itemBuilder: (context, index) {
                    return Container(
                      width: 160,
                      margin: EdgeInsets.symmetric(horizontal: 8.0),
                      child: Card(
                        color: Colors.teal[50],
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(16),
                        ),
                        elevation: 5,
                        shadowColor: Colors.teal.withOpacity(0.3),
                        child: Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(
                                "assets/images/urea.png",
                                height: 100.0,
                              ),
                              const SizedBox(height: 10),
                              Text(
                                "Urea",
                                style: TextStyle(
                                  fontSize: 18.0,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.teal[900],
                                ),
                              ),
                              const SizedBox(height: 5),
                              Text(
                                "Add To Cart",
                                style: TextStyle(
                                  fontSize: 18.0,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.teal[900],
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
