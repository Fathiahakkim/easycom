import 'package:flutter/material.dart';

class RoutePlannerScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Route Planner'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[
            // Starting Point Input
            TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Starting Point',
                prefixIcon: Icon(Icons.location_on),
              ),
            ),

            SizedBox(height: 20),

            // Destination Point Input
            TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Destination Point',
                prefixIcon: Icon(Icons.flag),
              ),
            ),

            SizedBox(height: 20),

            // Find Route Button
            ElevatedButton(
              onPressed: () {
                // Handle find route
              },
              child: Text('Find Route'),
              style: ElevatedButton.styleFrom(
                minimumSize: Size(double.infinity, 50),
              ),
            ),

            SizedBox(height: 20),

            // Suggested Routes
            Expanded(
              child: ListView.builder(
                itemCount: 5, // Example item count
                itemBuilder: (context, index) {
                  return ListTile(
                    leading: Icon(Icons.directions),
                    title: Text('Route Option ${index + 1}'),
                    subtitle: Text('Details about the route option'),
                    trailing: Icon(Icons.arrow_forward),
                    onTap: () {
                      // Handle route option tap
                    },
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}