/*import 'package:flutter/material.dart';

class WeatherPage extends StatelessWidget {
  const WeatherPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Weather'),
        leading: const Icon(Icons.menu),
        backgroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Nepal, Biratnagar',
              style: Theme.of(context).textTheme.titleLarge,
            ),
            const SizedBox(height: 16.0),
            Text(
              'Wednesday, July 21',
              style: Theme.of(context).textTheme.bodyMedium,
            ),
            const SizedBox(height: 16.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text('Wind'),
                const Text('3 m/s'),
              ],
            ),
            const SizedBox(height: 8.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text('Humidity'),
                const Text('70%'),
              ],
            ),
            const SizedBox(height: 8.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text('Atm Pressure'),
                const Text('755 mmHg'),
              ],
            ),
            const SizedBox(height: 8.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text('Water'),
                const Text('20°'),
              ],
            ),
            const SizedBox(height: 8.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text('Moonrise'),
                const Text('21:34'),
              ],
            ),
            const SizedBox(height: 8.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text('Moonset'),
                const Text('19:28'),
              ],
            ),
            const SizedBox(height: 16.0),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    children: [
                      const Text('Today'),
                      const SizedBox(height: 8.0),
                      Container(
                        padding: const EdgeInsets.all(12.0),
                        decoration: BoxDecoration(
                          color: Colors.orange,
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        child: const Text(
                          '27°',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      const SizedBox(height: 8.0),
                      const Icon(Icons.nightlight_round),
                    ],
                  ),
                  Column(
                    children: [
                      const Text('Thu'),
                      const SizedBox(height: 8.0),
                      const Text('33°'),
                      const SizedBox(height: 8.0),
                      const Icon(Icons.nightlight_round),
                    ],
                  ),
                  Column(
                    children: [
                      const Text('Fri'),
                      const SizedBox(height: 8.0),
                      const Text('33°'),
                      const SizedBox(height: 8.0),
                      const Icon(Icons.nightlight_round),
                    ],
                  ),
                  Column(
                    children: [
                      const Text('Sat'),
                      const SizedBox(height: 8.0),
                      const Text('33°'),
                      const SizedBox(height: 8.0),
                      const Icon(Icons.nightlight_round),
                    ],
                  ),
                  Column(
                    children: [
                      const Text('Sun'),
                      const SizedBox(height: 8.0),
                      const Text('33°'),
                      const SizedBox(height: 8.0),
                      const Icon(Icons.sunny),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
*/
import 'package:flutter/material.dart';

class WeatherPage extends StatelessWidget {
  const WeatherPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlue[50],
      appBar: AppBar(
        backgroundColor: Colors.transparent,
      
        centerTitle: true,
        title: const Text("Weather Information",
         style: TextStyle(
            fontSize: 28,
            fontWeight: FontWeight.bold,
            color: Color.fromARGB(255, 1, 101, 43),
          ),
          )
        
      ),
      extendBodyBehindAppBar: true,
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            const SizedBox(height: 80), // Extra space for centered alignment

            // Centered Date
             const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Akole, Ahilyanagar',
              style: TextStyle(
                color: Colors.black87,
                fontWeight: FontWeight.w600,
                fontSize: 20,
              ),
            ),
            Icon(Icons.location_on, color: Colors.blueGrey),
           
          ],
        ),
             
            const SizedBox(height:15),
            const Text(
              'Wednesday, July 21',
              style: TextStyle(
                fontSize: 16,
                color: Colors.grey,
              ),
            ),
            const SizedBox(height: 16.0),

            // Temperature and Details
            Center(
              child: Container(
                padding: const EdgeInsets.all(20.0),
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [Colors.blueAccent.withOpacity(0.9), Colors.deepPurple],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                  borderRadius: BorderRadius.circular(16),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.deepPurple.withOpacity(0.3),
                      spreadRadius: 5,
                      blurRadius: 10,
                      offset: const Offset(0, 3),
                    ),
                  ],
                ),
                child: Column(
                  children: [
                    const Text(
                      '27°',
                      style: TextStyle(
                        fontSize: 64,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    const Text(
                      'Sunny',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.w500,
                        color: Colors.white70,
                      ),
                    ),
                    const SizedBox(height: 16.0),

                    // Weather details row
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        _buildWeatherDetail(Icons.air, 'Wind', '3 m/s'),
                        _buildWeatherDetail(Icons.water_drop, 'Humidity', '70%'),
                        _buildWeatherDetail(Icons.compress, 'Pressure', '755 mmHg'),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 50),

            // Daily forecast scrollable row
            const Text(
              "7-Day Forecast",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w700,
                color: Colors.blueGrey,
              ),
            ),
            const SizedBox(height: 10),
            Expanded(
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    _buildForecastCard("Thu", "33°", Icons.cloud),
                    _buildForecastCard("Fri", "30°", Icons.wb_sunny),
                    _buildForecastCard("Sat", "29°", Icons.cloud_queue),
                    _buildForecastCard("Sun", "35°", Icons.wb_sunny),
                    _buildForecastCard("Mon", "31°", Icons.beach_access),
                    _buildForecastCard("Tue", "27°", Icons.ac_unit),
                    _buildForecastCard("Wed", "28°", Icons.thunderstorm),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildWeatherDetail(IconData icon, String label, String value) {
    return Column(
      children: [
        Icon(icon, color: Colors.white, size: 30),
        const SizedBox(height: 4),
        Text(
          label,
          style: const TextStyle(color: Colors.white70, fontWeight: FontWeight.w500),
        ),
        Text(
          value,
          style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ],
    );
  }

  Widget _buildForecastCard(String day, String temp, IconData icon) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Container(
        height:200,
        padding: const EdgeInsets.all(12.0),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.3),
              blurRadius: 8,
              offset: const Offset(0, 4),
            ),
          ],
        ),
        child: Column(
          children: [
            Text(
              day,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w500,
                color: Colors.blueGrey[700],
              ),
            ),
            const SizedBox(height: 20),
            Icon(
              icon,
              color: Colors.blueAccent,
              size: 32,
            ),
            const SizedBox(height: 20),
            Text(
              temp,
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.black87,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
