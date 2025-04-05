import 'package:flutter/material.dart';

class BillsScreen extends StatelessWidget {
  const BillsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BILLS'),
        backgroundColor: const Color(0xFFA3BFFA),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFFD6E4FF),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  child: const Text('ADD ONS'),
                ),
              ],
            ),
            const SizedBox(height: 10),
            _buildBillItem('Kes 20,000', 'Monthly Rent', 'Active'),
            _buildBillItem('Kes 2,000', 'Internet bill', 'Active'),
            _buildBillItem('Kes 200', 'Garbage bill', 'Active'),
            _buildBillItem('Kes 20,000', 'Monthly Rent', 'Active'),
            const SizedBox(height: 20),
            const Text('TOTAL: Kes 30,000', style: TextStyle(fontWeight: FontWeight.bold)),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 1,
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
          if (index == 3) Navigator.pushNamed(context, '/receipts');
          if (index == 4) Navigator.pushNamed(context, '/settings');
        },
      ),
    );
  }

  Widget _buildBillItem(String amount, String label, String status) {
    return Card(
      color: Colors.white,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(amount),
                Text(label, style: const TextStyle(color: Colors.grey)),
              ],
            ),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.grey[300],
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              child: Text(status),
            ),
          ],
        ),
      ),
    );
  }
}