import 'package:demoapp/components/custom_button_sheet.dart';
import 'package:demoapp/components/seeMore.dart';
import 'package:demoapp/components/virtualKey_menu.dart';
import 'package:demoapp/screens/UserCreationScreen%20.dart';
import 'package:demoapp/screens/loginScreen.dart';
import 'package:flutter/material.dart';
import '../components/option_tile.dart';
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
    void _showCustomBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.white,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
      ),
      builder: (context) => const CustomBottomSheetContent(),
    );
  }
   void openVirtualkeyModal(BuildContext context) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.white,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
      ),
      builder: (context) => const virtualScreen (),
    );
  }
void openSeeMoreModal(BuildContext context) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.white,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
      ),
      builder: (context) =>  SeeMore (),
    );
  }
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    print('Width: $width'); // Debugging line to check the width
    return Scaffold(
    appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 255, 255, 255),
        toolbarHeight: 50, // Increase height of AppBar
        leadingWidth: 250, // Give more space for the leading widget
        leading: Padding(
          padding: const EdgeInsets.only(left: 16.0),
          child: Image.asset(
            'assets/images/logo-bb-mobile.png',
            fit: BoxFit.contain,
          ),
        ),
      ),

     
      resizeToAvoidBottomInset: true,
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 16),
          
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
             // Add your top logo/header image
             Row(
                children: [
                  Icon(Icons.sunny_snowing, color: const Color.fromARGB(255, 150, 158, 157), size: 40),
                  const SizedBox(width: 8),
                  const Text(
                    '¡Bienvenido!',
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 20),
              Container(
                padding: const EdgeInsets.all(24),
                decoration: BoxDecoration(
                  color: const Color(0xFFE6F8F5),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  children:  [
                    Container(
                      width: 70,
                      height: 70,
                      decoration: BoxDecoration(
                        gradient: const LinearGradient(
                          colors: [Color(0xFF60E2C2), Color(0xFF3DB6E5)],
                          begin: Alignment.bottomLeft,
                          end: Alignment.topRight,
                        ),
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: Center(
                        child: Image.asset(
                          'assets/images/Card.png',
                          height: 30,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    SizedBox(height: 12),
                    Text(
                      '¿No tienes tu tarjeta para retirar efectivo? No hay problema, ingresa y utiliza QuickPay.',
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.teal, fontSize: 14),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const LoginScreen()));
                },
                style: ElevatedButton.styleFrom(
                  minimumSize: const Size(double.infinity, 50),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  backgroundColor: const Color(0xFF15998E),
                ),
                child: const Text("Ingresar ahora",style: TextStyle(color: Colors.white),),
              ),
              const SizedBox(height: 10),
              OutlinedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const UserCreationScreen()));
                },
                style: OutlinedButton.styleFrom(
                  minimumSize: const Size(double.infinity, 50),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  side: const BorderSide(color: Color(0xFF15998E)),
                ),
                child: const Text(
                  "Generar Clave Virtual",
                  style: TextStyle(color:Colors.black),
                ),
              ),
              const SizedBox(height: 30),
              Wrap(
                alignment: WrapAlignment.center,
                spacing: 12,
                runSpacing: 12,
                children:  [
                  OptionTile(
                    icon: Icons.qr_code,
                    text: 'Solicitar\nproductos',
                    isNew: true,
                    onTap: () => _showCustomBottomSheet(context), 
                  ),
                  OptionTile(
                    icon: Icons.remove_red_eye,
                    text: 'Mostrar\nQuickview',
                    onTap: () => openVirtualkeyModal(context),
                  ),
                  OptionTile(
                    icon: Icons.layers,
                    text: 'Ver más\nopciones',
                    onTap: () => openSeeMoreModal(context),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}