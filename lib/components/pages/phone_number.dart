import 'package:flutter/material.dart';
import 'package:google_pay/components/pages/custom_page.dart';

class PayPhoneNumber extends StatelessWidget {
  const PayPhoneNumber({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomPage(
      title: 'Enter a phone number', 
      description: 'Pay using phone number'
    );
  }
}