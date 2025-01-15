import 'package:flutter/material.dart';

class CarpoolScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Carpool'),
        backgroundColor: Colors.blue,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: <Widget>[
            // Starting Point Input
            _buildTextField(
              labelText: 'Starting Point',
              icon: Icons.location_on,
              obscureText: false,
              keyboardType: TextInputType.text,
            ),

            SizedBox(height: 20),

            // Destination Point Input
            _buildTextField(
              labelText: 'Destination Point',
              icon: Icons.flag,
              obscureText: false,
              keyboardType: TextInputType.text,
            ),

            SizedBox(height: 30),

            // Find Carpool Button
            _buildButton(context, 'Find Carpool', () {
              // Handle find carpool
            }),

            SizedBox(height: 30),

            // Carpool Options
            Expanded(
              child: ListView.builder(
                itemCount: 10, // Example item count
                itemBuilder: (context, index) {
                  return Card(
                    margin: EdgeInsets.symmetric(vertical: 10),
                    child: ListTile(
                      leading: Icon(Icons.directions_car, color: Colors.blue),
                      title: Text('Carpool Option ${index + 1}'),
                      subtitle: Text('Details about the carpool option'),
                      trailing: Icon(Icons.arrow_forward, color: Colors.blue),
                      onTap: () {
                        // Handle carpool option tap
                      },
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildTextField({required String labelText, required IconData icon, required bool obscureText, required TextInputType keyboardType}) {
    return TextField(
      obscureText: obscureText,
      keyboardType: keyboardType,
      decoration: InputDecoration(
        labelText: labelText,
        labelStyle: TextStyle(fontSize: 16, color: Colors.grey[700]),
        prefixIcon: Icon(icon, color: Colors.blue),
        border: OutlineInputBorder(),
        contentPadding: EdgeInsets.symmetric(vertical: 15, horizontal: 20),
      ),
    );
  }

  Widget _buildButton(BuildContext context, String text, VoidCallback onPressed) {
    return ElevatedButton(
      onPressed: onPressed,
      child: Text(text, style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
      style: ElevatedButton.styleFrom(
        minimumSize: Size(double.infinity, 50), backgroundColor: Colors.blue,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      ),
    );
  }
}
