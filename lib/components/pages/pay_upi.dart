import 'package:flutter/material.dart';
import 'package:google_pay/components/pages/custom_page.dart';

class PayUpi extends StatelessWidget {
  const PayUpi({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomPage(
      title: 'Enter UPI ID or number', 
      description: 'Pay any UPI using UPI ID or phone number'
    );
  }
}