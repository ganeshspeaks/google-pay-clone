import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final Widget icon;
  final String text;
  final VoidCallback onPressed;

  const CustomButton({Key? key, required this.icon, required this.text, required this.onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: SizedBox(
        width: 70,
        child: Column(
          children: [
            icon,
            const SizedBox(height: 5), 
            Align(
              alignment: Alignment.center,
              child: Text(
                text,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  color: Colors.white,
                ), 
                overflow: TextOverflow.clip,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
