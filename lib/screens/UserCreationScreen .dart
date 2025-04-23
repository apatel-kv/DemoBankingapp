import 'package:demoapp/screens/IdentificationScreen.dart';
import 'package:flutter/material.dart';

class UserCreationScreen extends StatefulWidget {
  const UserCreationScreen({super.key});

  @override
  State<UserCreationScreen> createState() => _UserCreationScreenState();
}

class _UserCreationScreenState extends State<UserCreationScreen> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {
            Navigator.pop(context); // Go back to previous screen
          },
        ),
      ),
      body: LayoutBuilder(
        builder: (context, constraints) {
          final isDesktop = constraints.maxWidth >= 800;

          return SafeArea(
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 24.0, vertical: 20),
              child: isDesktop
                  ? Row(
                      children: [
                        Expanded(
                          child: Center(
                            child: Image.asset(
                              'assets/images/autoad_laptop.png',
                              height: 300,
                            ),
                          ),
                        ),
                        const SizedBox(width: 40),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Text(
                                'Creación de usuario',
                                style: TextStyle(
                                  fontSize: 22,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black87,
                                ),
                              ),
                              const SizedBox(height: 16),
                              const Text(
                                'Transacciona fácilmente con Clave Virtual,\ndescubre cómo hacer retiros sin tu tarjeta y\nrealiza avances de efectivo.',
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.black54,
                                  height: 1.5,
                                ),
                              ),
                              const SizedBox(height: 40),
                              Row(
                                children: [
                                  Checkbox(
                                    value: isChecked,
                                    onChanged: (val) {
                                      setState(() {
                                        isChecked = val ?? false;
                                      });
                                    },
                                    activeColor: const Color(0xFF15998E),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(4),
                                    ),
                                  ),
                                  Expanded(
                                    child: RichText(
                                      text: const TextSpan(
                                        text: 'Acepto los ',
                                        style: TextStyle(
                                            color: Colors.black54,
                                            fontSize: 14),
                                        children: [
                                          TextSpan(
                                            text: 'Términos y Condiciones',
                                            style: TextStyle(
                                              color: Color(0xFF15998E),
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(height: 20),
                              Align(
                                alignment: Alignment.centerLeft,
                                child: SizedBox(
                                  width: 200,
                                  child: ElevatedButton(
                                    onPressed: isChecked
                                        ? () {
                                            Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                builder: (context) =>
                                                    const IdentificationScreen(),
                                              ),
                                            );
                                          }
                                        : null,
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor: const Color(0xFF15998E),
                                      minimumSize: const Size(200, 50),
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(30),
                                      ),
                                      disabledBackgroundColor:
                                          Colors.grey.shade300,
                                    ),
                                    child: const Text(
                                      'Continuar',
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    )
                  : Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const Spacer(),
                        Center(
                          child: Image.asset(
                            'assets/images/autoad_laptop.png',
                            height: 200,
                          ),
                        ),
                        const SizedBox(height: 20),
                        const Text(
                          'Creación de usuario',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.black87,
                          ),
                        ),
                        const SizedBox(height: 12),
                        const Text(
                          'Transacciona fácilmente con Clave Virtual,\ndescubre cómo hacer retiros sin tu tarjeta y\nrealiza avances de efectivo.',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.black54,
                            height: 1.4,
                          ),
                        ),
                        const Spacer(),
                        Row(
                          children: [
                            Checkbox(
                              value: isChecked,
                              onChanged: (val) {
                                setState(() {
                                  isChecked = val ?? false;
                                });
                              },
                              activeColor: const Color(0xFF15998E),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(4),
                              ),
                            ),
                            Expanded(
                              child: RichText(
                                text: const TextSpan(
                                  text: 'Acepto los ',
                                  style: TextStyle(
                                      color: Colors.black54, fontSize: 13),
                                  children: [
                                    TextSpan(
                                      text: 'Términos y Condiciones',
                                      style: TextStyle(
                                        color: Color(0xFF15998E),
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 20),
                        ElevatedButton(
                          onPressed: isChecked
                              ? () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) =>
                                          const IdentificationScreen(),
                                    ),
                                  );
                                }
                              : null,
                          style: ElevatedButton.styleFrom(
                            backgroundColor: const Color(0xFF15998E),
                            minimumSize: const Size(double.infinity, 50),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30),
                            ),
                            disabledBackgroundColor: Colors.grey.shade300,
                          ),
                          child: const Text(
                            'Continuar',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        const SizedBox(height: 20),
                      ],
                    ),
            ),
          );
        },
      ),
    );
  }
}
