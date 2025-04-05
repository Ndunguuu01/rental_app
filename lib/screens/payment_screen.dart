import 'package:flutter/material.dart';

class PaymentScreen extends StatelessWidget {
  const PaymentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('PAYMENT'),
        backgroundColor: const Color(0xFFA3BFFA),
      ),
     body: Padding(
  padding: const EdgeInsets.all(20.0), // 20-pixel margin on all sides
  child: Card(
    color: const Color(0xFF92B4EC),
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
    child: SizedBox(
      width: double.infinity, // Take full width (after margin)
      height: MediaQuery.of(context).size.height - 100, // Almost full height (subtract margins and some space)
            child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center, // Align content to the left
          mainAxisSize: MainAxisSize.min,
          children: [
        const SizedBox(height: 50),
            const Text(
              'House: APARTMENT 3B',
              style: TextStyle(
                color: Color(0xFF1C2526), // Deep black color
                fontWeight: FontWeight.bold,
                fontSize: 26,
              ),
            ),
            const SizedBox(height: 8),
            const Text(
              'Room: F1',
              style: TextStyle(
                color: Color(0xFF1C2526), // Deep black color
                fontWeight: FontWeight.bold,
                fontSize: 26,
              ),
            ),
            const SizedBox(height: 8),
            const Text(
              'Amount: 30,000',
              style: TextStyle(
                color: Color(0xFF1C2526), // Deep black color
                fontWeight: FontWeight.bold,
                fontSize: 26,
              ),
            ),
            const SizedBox(height: 30), // Increased spacing for better balance
            TextField(
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.grey[200],
                hintText: 'Enter phone number',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide.none,
                ),
              ),
              keyboardType: TextInputType.phone,
            ),
            const SizedBox(height: 15), // Adjusted spacing
            TextField(
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.grey[200],
                hintText: '30,000',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide.none,
                ),
              ),
              keyboardType: TextInputType.number,
            ),
            const SizedBox(height: 30), // Increased spacing for better balance
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/receipt_detail');
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                minimumSize: const Size(double.infinity, 50),
              ),
              child: const Text(
                'Continue',
                style: TextStyle(color: Colors.white, fontSize: 16),
              ),
            ),
          ],
        ),
      ),
    ),
  ),
),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 2,
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
          if (index == 3) Navigator.pushNamed(context, '/receipts');
          if (index == 4) Navigator.pushNamed(context, '/settings');
        },
      ),
    );
  }
}