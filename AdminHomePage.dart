import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'MaintenanceMenuPage.dart';
import 'ReportsPage.dart';
import 'TransactionsPage.dart';

class AdminHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Admin Home Page'),
        centerTitle: true,
        elevation: 4.0,
      ),
      body: SingleChildScrollView( // Make the entire body scrollable
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'Admin Dashboard',
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
                color: Colors.blueAccent,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 30),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => MaintenanceMenuPage()),
                );
              },
              child: Text('Go to Maintenance Menu'),
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.symmetric(vertical: 16),
                textStyle: TextStyle(fontSize: 18),
                backgroundColor: Colors.blue,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ReportsPage()),
                );
              },
              child: Text('Go to Reports'),
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.symmetric(vertical: 16),
                textStyle: TextStyle(fontSize: 18),
                backgroundColor: Colors.blue,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
            SizedBox(height: 20),
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
            SizedBox(height: 30), // Spacing before the table
            Text(
              'Product Details',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 10),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
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
            SizedBox(height: 20), // Spacing before the logout button
            ElevatedButton(
              onPressed: () {
                // Implement logout functionality here
              },
              child: Text('Log Out'),
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.symmetric(vertical: 16),
                textStyle: TextStyle(fontSize: 18),
                backgroundColor: Colors.red,
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
