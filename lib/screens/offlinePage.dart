import 'package:flutter/material.dart';

class OfflineScreen extends StatelessWidget {
  const OfflineScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF4F6FA),
      body: LayoutBuilder(
        builder: (context, constraints) {
          final isDesktop =
              constraints.maxWidth >= 800; // Check for desktop size

          return Center(
            child: Container(
              padding: const EdgeInsets.all(32),
              margin: const EdgeInsets.all(24),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  //  Back Button
                  Align(
                    alignment: Alignment.topLeft,
                    child: IconButton(
                      icon: const Icon(Icons.arrow_back,
                          color: Color(0xFF00A39D)),
                      onPressed: () => Navigator.pop(context),
                    ),
                  ),
                  const SizedBox(height: 8),
                  const Center(
                    child: Icon(
                      Icons.timer_outlined,
                      size: 64,
                      color: Color(0xFF00A39D),
                    ),
                  ),
                  const SizedBox(height: 24),
                  // Adjust text size based on screen width (desktop vs mobile)
                  Center(
                    child: Text(
                      'Vuelve a intentarlo más tarde',
                      style: TextStyle(
                        fontSize:
                            isDesktop ? 24 : 18, // Larger text for desktop
                        fontWeight: FontWeight.bold,
                        color: Colors.black87,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Center(
                    child: Text(
                      'El servicio se encuentra fuera de línea.',
                      style: TextStyle(
                        fontSize:
                            isDesktop ? 16 : 14, // Adjusted for desktop size
                        color: Colors.black54,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
