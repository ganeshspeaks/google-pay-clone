import 'package:flutter/material.dart';
import 'package:google_pay/components/pages/custom_page.dart';

class MobileRecharge extends StatelessWidget {
  const MobileRecharge({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomPage(
      title: 'Mobile Recharge', 
      description: 'Enter mobile number'
    );
  }
}