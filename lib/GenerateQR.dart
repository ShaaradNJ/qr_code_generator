import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';

class GenerateQR extends StatefulWidget {
  const GenerateQR({super.key});

  @override
  State<GenerateQR> createState() => _GenerateQRState();
}

class _GenerateQRState extends State<GenerateQR> {
  final GlobalKey globalKey = GlobalKey();
  String qrData = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff1F1F1F),
      appBar: AppBar(
        backgroundColor: const Color(0xff1F1F1F),
        title: const Center(
          child: Text(
            "Generate a QR code",
            style: TextStyle(
              color: Color(0xffBCEE82),
              fontWeight: FontWeight.bold,
              fontSize: 32,
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              const SizedBox(height: 30),
              RepaintBoundary(
                key: globalKey,
                child: Container(
                  color: const Color(0xff1F1F1F),
                  child: Center(
                    child: qrData.isEmpty
                        ? Image.asset(
                            'assets/QR-Code-pana.png',
                            width: 300,
                            height: 300,
                          )
                        : QrImageView(
                            data: qrData,
                            version: QrVersions.auto,
                            size: 300,
                            foregroundColor: Colors.white, // Set the QR code color to white
                          ),
                  ),
                ),
              ),
              const SizedBox(height: 30),
              SizedBox(
                width: MediaQuery.sizeOf(context).width * 0.8,
                child: TextField(
                  style: const TextStyle(color: Color(0xffBCEE82)),
                  decoration: const InputDecoration(
                    hintText: "Enter Your data here",
                    hintStyle: TextStyle(color: Colors.white),
                    border: OutlineInputBorder(),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Color(0xffBCEE82)),
                    ),
                  ),
                  onChanged: (value) {
                    setState(() {
                      qrData = value;
                    });
                  },
                ),
              ),
              const SizedBox(height: 30),
              Text(
                "Scan the QR code above with your phone's camera.",
                style: TextStyle(
                  color: Colors.white.withOpacity(0.7),
                  fontSize: 16,
                ),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ElevatedButton(
          onPressed: () {
            // Add functionality to save or share the QR code
          },
          style: ElevatedButton.styleFrom(
            backgroundColor: Color(0xffBCEE82), // Background color
            foregroundColor: Color(0xff1F1F1F), // Text color
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
            textStyle: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          child: const Text("Save/Share QR Code"),
        ),
      ),
    );
  }
}
