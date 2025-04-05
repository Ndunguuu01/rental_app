import 'package:flutter/material.dart';
import 'tenant_dashboard.dart';

class LandlordDashboard extends StatelessWidget {
  const LandlordDashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Landlord Dashboard'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Welcome, Landlord!',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const TenantList()),
                );
              },
              child: const Text('View Tenants'),
            ),
          ],
        ),
      ),
    );
  }
}