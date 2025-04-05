import 'package:flutter/material.dart';

class ReceiptDetailScreen extends StatelessWidget {
  const ReceiptDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('RECEIPT'),
        backgroundColor: const Color(0xFFA3BFFA),
        actions: [
          IconButton(
            icon: const Icon(Icons.download),
            onPressed: () {},
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Card(
          color: const Color(0xFFD6E4FF),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: const [
                Text('Rent Payment Receipt', style: TextStyle(fontWeight: FontWeight.bold)),
                SizedBox(height: 10),
                Text('Receipt #KP-00123'),
                Text('Date: April 4, 2025'),
                Text('Tenant: John Doe'),
                Text('Unit: F1'),
                SizedBox(height: 10),
                Text('Amount Paid: KSh 30,000', style: TextStyle(fontWeight: FontWeight.bold)),
                Text('Payment Method: M-Pesa'),
                Text('Transaction ID: X7K9P2M'),
                Text('Phone Number: +254 712 345 678'),
                SizedBox(height: 10),
                Text('Landlord: Hellen Properties'),
                Text('Contact: +254 700 123 456'),
                SizedBox(height: 20),
                Center(
                  child: Text(
                    'Thank you for your payment!',
                    style: TextStyle(fontStyle: FontStyle.italic, color: Colors.grey),
                  ),
                ),
                Center(child: Text('Generated on: April 4, 2025, 14:30')),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 3,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.grey,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.account_balance_wallet), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.payment), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.receipt), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: ''),
        ],
        onTap: (index) {
          if (index == 0) Navigator.pushNamed(context, '/dashboard');
          if (index == 1) Navigator.pushNamed(context, '/bills');
          if (index == 2) Navigator.pushNamed(context, '/payment');
          if (index == 4) Navigator.pushNamed(context, '/settings');
        },
      ),
    );
  }
}