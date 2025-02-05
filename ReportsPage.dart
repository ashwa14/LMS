import 'package:flutter/material.dart';

class ReportsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Reports Menu'),
        centerTitle: true, // Center the title for better symmetry
        elevation: 4.0, // Add elevation for a shadow effect
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch, // Stretch to fill width
          children: [
            Text(
              'Reports Overview',
              style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold, color: Colors.blueAccent), // Increased font size and color
              textAlign: TextAlign.center, // Center align the text
            ),
            SizedBox(height: 30), // Increased spacing for better separation
            Expanded(
              child: ListView(
                children: [
                  ReportButton(title: 'Active Issues', context: context),
                  ReportButton(title: 'Master List of Memberships', context: context),
                  ReportButton(title: 'Master List of Movies', context: context),
                  ReportButton(title: 'Master List of Books', context: context),
                  ReportButton(title: 'Overdue Returns', context: context),
                  ReportButton(title: 'Pending Issue Requests', context: context),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ReportButton extends StatelessWidget {
  final String title;
  final BuildContext context;

  ReportButton({required this.title, required this.context});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0), // Vertical padding for buttons
      child: ElevatedButton(
        onPressed: () {
          // Navigate to detailed report page (you can create separate pages for each)
          showDialog(
            context: context,
            builder: (context) => AlertDialog(
              title: Text(title),
              content: Text('Detailed information about $title will be shown here.'),
              actions: [
                TextButton(
                  onPressed: () => Navigator.of(context).pop(),
                  child: Text("Close"),
                ),
              ],
            ),
          );
        },
        child: Text(
          title,
          style: TextStyle(fontSize: 18), // Font size for button text
        ),
        style: ElevatedButton.styleFrom(
          padding: EdgeInsets.symmetric(vertical: 16), // Consistent button height
          backgroundColor: Colors.blue, // Button color
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10), // Rounded corners
          ),
        ),
      ),
    );
  }
}
