import 'package:flutter/material.dart';

class BancoHomePage extends StatelessWidget {
  const BancoHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          // ✅ Top Promo Bar (responsive)
          Container(
            color: const Color(0xFFE9F4F6),
            padding: EdgeInsets.symmetric(
              horizontal: screenWidth < 600 ? 16 : screenWidth * 0.1,
              vertical: 12,
            ),
            child: Center(
              child: RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                  text: 'Invierte \$500 y podrías ganar \$10,000. ',
                  style: const TextStyle(color: Colors.black87, fontSize: 14),
                  children: [
                    TextSpan(
                      text: 'Certificado de Depósito.',
                      style: TextStyle(
                        color: Colors.teal[800],
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const TextSpan(text: ' | '),
                    TextSpan(
                      text: 'Conoce cómo participar',
                      style: TextStyle(
                        color: Colors.teal[800],
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),

          // ✅ App Bar Section (responsive)
          Container(
            color: Colors.white,
            padding: EdgeInsets.symmetric(
              horizontal: screenWidth < 600 ? 16 : screenWidth * 0.1,
              vertical: 14,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // Logo & Title
                Row(
                  children: [
                    Container(
                      width: 30,
                      height: 30,
                      decoration: BoxDecoration(
                        color: Colors.teal[800],
                        borderRadius: BorderRadius.circular(4),
                      ),
                      alignment: Alignment.center,
                      child: const Text(
                        'BB',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    const SizedBox(width: 8),
                    Text(
                      'Banco Bolivariano',
                      style: TextStyle(
                        color: Colors.teal[800],
                        fontSize: screenWidth < 400 ? 14 : 16,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),

                // Hamburger menu
                Icon(Icons.menu, color: Colors.teal[800]),
              ],
            ),
          ),

          // ✅ Responsive Body (Demo)
          Expanded(
            child: Center(
              child: Text(
                "Contenido principal",
                style: TextStyle(
                  fontSize: screenWidth < 600 ? 16 : 24,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}