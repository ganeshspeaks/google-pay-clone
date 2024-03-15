import 'package:flutter/material.dart';
import 'package:google_pay/components/pages/custom_page.dart';

class BankTransfer extends StatelessWidget {
  const BankTransfer({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomPage(
      title: 'Enter recipient details', 
      description: ''
    );
  }
}