import 'package:flutter/material.dart';
import 'package:qr_code_scanner/qr_code_scanner.dart';

class ScanQr extends StatefulWidget {
  const ScanQr({super.key});

  @override
  State<ScanQr> createState() => _ScanQrState();
}

class _ScanQrState extends State<ScanQr> {
  final GlobalKey qrKey = GlobalKey(debugLabel: 'QR');
  Barcode? result;
  QRViewController? controller;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: const [
          Icon(Icons.flashlight_on_outlined),
          Icon(Icons.qr_code_2),
          Icon(Icons.more_vert),
        ],
      ),
      body: Stack(
        children: [
          QRView(
            key: qrKey,
            onQRViewCreated: (controller) {
              controller.scannedDataStream.listen((scanData) {
                setState(() {
                  result = scanData;
                });
              });
            },
          ),
          Positioned(
            bottom: 16,
            left: 0,
            right: 0,
            child: Center(
              child: result != null
                  ? Text(
                      'QR Code Data: ${result!.code}',
                      style:const TextStyle(color: Colors.white),
                    )
                  : const Text(
                      'Scanning...',
                      style: TextStyle(color: Colors.white),
                    ),
            ),
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
    // QRViewController qrViewController = qrKey.currentState!.controller as QRViewController;
    // qrViewController.dispose();
  }
}
