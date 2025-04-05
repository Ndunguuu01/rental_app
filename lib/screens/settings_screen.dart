import 'package:flutter/material.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: [
          const SizedBox(height: 60),
          const CircleAvatar(
            radius: 40,
            backgroundImage: AssetImage('assets/images/dua.jpg'),
          ),
          const SizedBox(height: 20),
          _buildSettingsItem('Name:', ''),
          _buildSettingsItem('Phone:', ''),
          Card(
            color: const Color(0xFFD6E4FF),
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text('Payment Reminders'),
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.grey[300],
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                    child: const Text('Active'),
                  ),
                ],
              ),
            ),
          ),
          _buildSettingsItem('Change Apartment:', ''),
          _buildSettingsItem('Change Room:', ''),
          _buildSettingsItem('M-Pesa Number:', '07055595652'),
          _buildSettingsItem('Link New Account:', ''),
          _buildSettingsItem('Contact Landlord:', '07055595652'),
          _buildSettingsItem('App Version:', '1.0.0'),
          const SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              Navigator.pushReplacementNamed(context, '/login');
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.red,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              minimumSize: const Size(double.infinity, 50),
            ),
            child: const Text('LOG OUT'),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 4,
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
          if (index == 3) Navigator.pushNamed(context, '/receipts');
        },
      ),
    );
  }

  Widget _buildSettingsItem(String label, String value) {
    return SizedBox(
      height: 60.0, // Define the height of the Card
      child: Card(
        color: const Color(0xFFD6E4FF),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(label),
              Text(value, style: const TextStyle(color: Colors.grey)),
            ],
          ),
        ),
      ),
    );
}
}