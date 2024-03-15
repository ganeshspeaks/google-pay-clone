import 'package:flutter/material.dart';
import 'package:google_pay/components/pages/custom_page.dart';

class SelfTransfer extends StatelessWidget {
  const SelfTransfer({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomPage(
      title: 'Self transfer', 
      description: 'Enter bank account number'
    );
  }
}