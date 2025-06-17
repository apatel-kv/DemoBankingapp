import 'package:demoapp/components/footer_section.dart';
import 'package:demoapp/components/google_maps.dart';
import 'package:demoapp/components/login_button.dart';
import 'package:demoapp/components/promoCarousel%20.dart';
import 'package:demoapp/screens/blog_screen.dart';
import 'package:flutter/material.dart';

class Landingscreen extends StatefulWidget {

  const Landingscreen({super.key});

  @override
  State<Landingscreen> createState() => _LandingscreenState();
}

class _LandingscreenState extends State<Landingscreen> {
  final Color tealColor = const Color(0xFF007F8B); 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        surfaceTintColor:
            Colors.transparent,
        toolbarHeight: 50,
        leadingWidth: 250,
        leading: Padding(
          padding: const EdgeInsets.only(left: 16.0),
          child: Image.asset(
            'assets/images/logo-bb-mobile.png',
            fit: BoxFit.contain,
          ),
        ),
      ),

      body: Scrollbar(
        thumbVisibility: true,
        child: SingleChildScrollView(
          
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              
              Stack(
                children: [
                  Image.asset(
                    'assets/images/herobanner.png',
                    width: double.infinity,
                    height: 250,
                    fit: BoxFit.cover,
                  ),
                  Positioned(
                    bottom: 40,
                    left: 20,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          "45 años",
                          style: TextStyle(
                            fontSize: 30,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          "Eres lo que nos mueve",
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
           Container(
                color: const Color(0xFF007F8B), // Your desired background color
                padding: const EdgeInsets.all(20),
                child: const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Abre una cuenta de ahorros en línea, sin depósito inicial",
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      "Solo necesitas tu cédula y 5 minutos",
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.white70,
                      ),
                    ),
                    SizedBox(height: 10),
                    Loginbutton(),
                  ],
                ),
              ),

              const BlogPage(),
              
              PromoCarousel(),
              const GoogleMapSection(),
              const FooterSection()
            ],
          ),
        ),
      ),
    );
  }
}
