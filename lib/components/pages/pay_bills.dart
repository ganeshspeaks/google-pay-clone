import 'package:flutter/material.dart';
import 'package:google_pay/components/pages/custom_page.dart';

class PayBills extends StatelessWidget {
  const PayBills({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomPage(
      title: 'Pay bills', 
      description: 'Enter billers number'
    );
  }
}