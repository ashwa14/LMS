import 'package:flutter/material.dart';
import 'ReportsPage.dart'; // Import the ReportsPage class
import 'TransactionsPage.dart'; // Import the TransactionsPage class

class UserHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('User Home Page'),
        centerTitle: true,
        elevation: 4.0, // Added elevation for a subtle shadow effect
      ),
      body: SingleChildScrollView( // Make the body scrollable vertically
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch, // Stretch to fill width
          children: [
            Text(
              'Welcome to the Library',
              style: TextStyle(
                fontSize: 28, // Increased font size for visibility
                fontWeight: FontWeight.bold,
                color: Colors.blueAccent, // Changed color for emphasis
              ),
              textAlign: TextAlign.center, // Center align the text
            ),
            SizedBox(height: 30), // Increased space for better separation

            // Navigation buttons
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ReportsPage()),
                );
              },
              child: Text('Go to Reports Menu'),
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.symmetric(vertical: 16), // Consistent button height
                textStyle: TextStyle(fontSize: 18), // Font size for button text
                backgroundColor: Colors.blue, // Button color
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10), // Rounded corners
                ),
              ),
            ),
            SizedBox(height: 20), // Spacing between buttons
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => TransactionsPage()),
                );
              },
              child: Text('Go to Transactions'),
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.symmetric(vertical: 16),
                textStyle: TextStyle(fontSize: 18),
                backgroundColor: Colors.blue,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
            SizedBox(height: 30), // Extra space for additional options

            // Title for product details
            Text(
              'Product Details',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold), // Title for the table
            ),
            SizedBox(height: 10), // Spacing before the table

            // Horizontal scrolling container
            SingleChildScrollView(
              scrollDirection: Axis.horizontal, // Enable horizontal scrolling
              child: DataTable(
                columns: [
                  DataColumn(label: Text('Code No From')),
                  DataColumn(label: Text('Code No To')),
                  DataColumn(label: Text('Category')),
                ],
                rows: [
                  DataRow(cells: [
                    DataCell(Text('SC(B/M)000001')),
                    DataCell(Text('SC(B/M)000004')),
                    DataCell(Text('Science')),
                  ]),
                  DataRow(cells: [
                    DataCell(Text('EC(B/M)000001')),
                    DataCell(Text('EC(B/M)000004')),
                    DataCell(Text('Economics')),
                  ]),
                  DataRow(cells: [
                    DataCell(Text('FC(B/M)000001')),
                    DataCell(Text('FC(B/M)000004')),
                    DataCell(Text('Fiction')),
                  ]),
                  DataRow(cells: [
                    DataCell(Text('CH(B/M)000001')),
                    DataCell(Text('CH(B/M)000004')),
                    DataCell(Text('Children')),
                  ]),
                  DataRow(cells: [
                    DataCell(Text('PD(B/M)000001')),
                    DataCell(Text('PD(B/M)000004')),
                    DataCell(Text('Personal Development')),
                  ]),
                ],
              ),
            ),
            SizedBox(height: 30), // Spacing for Log Out button
            ElevatedButton(
              onPressed: () {
                // Implement Log Out functionality
              },
              child: Text('Log Out'),
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.symmetric(vertical: 16),
                textStyle: TextStyle(fontSize: 18),
                backgroundColor: Colors.red, // Different color for Log Out button
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
