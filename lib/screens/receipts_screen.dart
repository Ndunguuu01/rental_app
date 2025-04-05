import 'package:flutter/material.dart';

class ReceiptsScreen extends StatelessWidget {
  const ReceiptsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('RECEIPTS'),
        backgroundColor: const Color(0xFFA3BFFA),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            _buildReceiptItem(context, 'KSh 10,000 - March 15, 2025'),
            _buildReceiptItem(context, 'KSh 10,000 - March 15, 2025'),
            _buildReceiptItem(context, 'KSh 10,000 - March 15, 2025'),
            _buildReceiptItem(context, 'KSh 10,000 - March 15, 2025'),
          ],
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
          if (index == 2) Navigator.pushNamed(context, '/payment');
          if (index == 4) Navigator.pushNamed(context, '/settings');
        },
      ),
    );
  }

  Widget _buildReceiptItem(BuildContext context, String title) {
    return Card(
      color: const Color(0xFF92B4EC),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: ListTile(
        title: Text(title),
        onTap: () {
          Navigator.pushNamed(context, '/receipt_detail');
        },
      ),
    );
  }
}