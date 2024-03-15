import 'package:flutter/material.dart';
import 'package:google_pay/components/pages/custom_page.dart';

class PayContact extends StatelessWidget {
  const PayContact({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomPage(
      title: 'Contact Number', 
      description: 'Pay your contact using number'
    );
  }
}