import 'package:flutter/material.dart';

class TransactionsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Transactions Menu'),
        centerTitle: true, // Center the title for better symmetry
        elevation: 4.0, // Add elevation for shadow effect
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch, // Stretch to fill width
          children: [
            Text(
              'Transaction Options',
              style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold, color: Colors.blueAccent), // Increased font size and color
              textAlign: TextAlign.center, // Center align the text
            ),
            SizedBox(height: 30), // Increased spacing for better separation
            Expanded(
              child: ListView(
                children: [
                  TransactionButton(title: 'Check Book Availability', context: context),
                  TransactionButton(title: 'Issue Book', context: context),
                  TransactionButton(title: 'Return Book', context: context),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class TransactionButton extends StatelessWidget {
  final String title;
  final BuildContext context;

  TransactionButton({required this.title, required this.context});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0), // Vertical padding for buttons
      child: ElevatedButton(
        onPressed: () {
          // Navigate to detailed transaction functionality (you can create separate pages for each)
          showDialog(
            context: context,
            builder: (context) => AlertDialog(
              title: Text(title),
              content: Text(
                title == 'Return Book'
                    ? 'Check fine payment and return book functionality will be here.'
                    : 'Functionality for $title will be shown here.',
              ),
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
