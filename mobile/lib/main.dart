import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'screens/livestock_screen.dart';
import 'screens/treatment_screen.dart';
import 'screens/notification_screen.dart';

import 'screens/login_screen.dart';
import 'screens/dashboard_screen.dart';

void main() {
  runApp(const LivestockComplianceApp());
}

class LivestockComplianceApp extends StatelessWidget {
  const LivestockComplianceApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Livestock Compliance Platform',
      theme: ThemeData(
        useMaterial3: true,
        colorSchemeSeed: Colors.green,
        textTheme: GoogleFonts.poppinsTextTheme(),
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const LoginScreen(),
        '/dashboard': (context) => const DashboardScreen(),
        '/livestock': (context) => const LivestockScreen(),
        '/treatment': (context) => const TreatmentScreen(),
        '/notifications': (context) => const NotificationScreen(),
      },
    );
  }
}