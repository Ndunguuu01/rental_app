import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'screens/login_screen.dart';
import 'screens/tenant_dashboard.dart';
import 'screens/payment_screen.dart';
import 'screens/bills_screen.dart';
import 'screens/receipts_screen.dart';
import 'screens/receipt_detail_screen.dart';
import 'screens/settings_screen.dart';
import 'screens/registration_screen.dart';

void main() {
  runApp(const KodiPayApp());
}

class KodiPayApp extends StatelessWidget {
  const KodiPayApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, 
      title: 'KodiPay',
      theme: ThemeData(
        primaryColor: const Color(0xFFA3BFFA), // Light blue
        scaffoldBackgroundColor: const Color(0xFFF5E6E6), // Light pink
        useMaterial3: true,
      ),
      home: const SplashScreen(),
      routes: {
        '/login': (context) => const LoginScreen(),
        '/dashboard': (context) => const TenantDashboard(),
        '/payment': (context) => const PaymentScreen(),
        '/bills': (context) => const BillsScreen(),
        '/receipts': (context) => const ReceiptsScreen(),
        '/receipt_detail': (context) => const ReceiptDetailScreen(),
        '/settings': (context) => const SettingsScreen(),
        '/registration': (context) => const RegistrationScreen(),
      },
    );
  }
}

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.pushReplacementNamed(context, '/login');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Container(
            color: const Color(0xFFA3BFFA), // Placeholder for house image
            // Uncomment if you have the image
            // decoration: const BoxDecoration(
            //   image: DecorationImage(
            //     image: AssetImage('assets/images/house.jpg'),
            //     fit: BoxFit.cover,
            //   ),
            // ),
          ),
          Center(
            child: Text(
              'KodiPay',
              style: TextStyle(
                fontSize: 48,
                fontWeight: FontWeight.bold,
                color: Colors.white,
                shadows: [
                  Shadow(
                    color: Colors.black.withOpacity(0.3),
                    offset: const Offset(2, 2),
                    blurRadius: 4,
                  ),
                ],
              ),
            ),
          ),
          const Positioned(
            bottom: 50,
            left: 0,
            right: 0,
            child: SpinKitCircle(
              color: Colors.white,
              size: 50,
            ),
          ),
        ],
      ),
    );
  }
}