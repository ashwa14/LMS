import 'package:flutter/material.dart';

class MaintenanceMenuPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Maintenance Menu'),
      ),
      body: SingleChildScrollView(  // Use SingleChildScrollView to make it scrollable
        child: Column(
          children: [
            // Replace these with your actual widgets
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                'Maintenance Tasks',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
            ),
            ListTile(
              title: Text('Add/Update Membership'),
              onTap: () {
                // Add your logic here
              },
            ),
            ListTile(
              title: Text('Add/Update Books'),
              onTap: () {
                // Add your logic here
              },
            ),
            ListTile(
              title: Text('User Authentication'),
              onTap: () {
                // Add your logic here
              },
            ),
            // Add more ListTiles or Widgets as needed
            SizedBox(height: 100),  // Add some extra space at the bottom if necessary
          ],
        ),
      ),
    );
  }
}
