import 'package:flutter/material.dart';

class TenantList extends StatelessWidget {
  const TenantList({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tenant List'),
      ),
      body: const Center(
        child: Text(
          'Tenant List Coming Soon!',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}