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
    final isDesktop = MediaQuery.of(context).size.width >= 800;

    if (isDesktop) {
      showDialog(
        context: context,
        builder: (_) => Dialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
          child: const CustomBottomSheetContent(),
        ),
      );
    } else {
      showModalBottomSheet(
        context: context,
        isScrollControlled: true,
        backgroundColor: Colors.white,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
        ),
        builder: (_) => const CustomBottomSheetContent(),
      );
    }
  }

  void openVirtualkeyModal(BuildContext context) {
    final isDesktop = MediaQuery.of(context).size.width >= 800;

    if (isDesktop) {
      showDialog(
        context: context,
        builder: (_) => Dialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
          child: ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 500),
            child: const virtualScreen(),
          ),
        ),
      );
    } else {
      showModalBottomSheet(
        context: context,
        isScrollControlled: true,
        backgroundColor: Colors.white,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
        ),
        builder: (_) => virtualScreen(),
      );
    }
  }

  void openSeeMoreModal(BuildContext context) {
    final isDesktop = MediaQuery.of(context).size.width >= 800;

    if (isDesktop) {
      showDialog(
        context: context,
        builder: (_) => Dialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
          child: ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 500),
            child: SeeMore(),
          ),
        ),
      );
    } else {
      showModalBottomSheet(
        context: context,
        isScrollControlled: true,
        backgroundColor: Colors.white,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
        ),
        builder: (_) => SeeMore(),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final isDesktop = constraints.maxWidth >= 800;

        return Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.white,
            toolbarHeight: 50,
            elevation: 0,
            automaticallyImplyLeading: false,
            surfaceTintColor: Colors.transparent,
            shadowColor: Colors.transparent,
            title: Row(
              children: [
                Builder(
                  builder: (context) {
                    final isDesktop = MediaQuery.of(context).size.width >= 1024;
                    final canPop = Navigator.canPop(context);
                    if (isDesktop && canPop) {
                      return IconButton(
                        icon: const Icon(Icons.arrow_back, color: Colors.black),
                        onPressed: () => Navigator.pop(context),
                        tooltip: 'Volver',
                      );
                    }
                    return const SizedBox.shrink();
                  },
                ),
                const SizedBox(width: 8),
                Image.asset(
                  'assets/images/logo-bb-mobile.png',
                  height: 30,
                  fit: BoxFit.contain,
                ),
              ],
            ),
          ),
          backgroundColor: Colors.white,
          body: Align(
            alignment: Alignment.topCenter,
            child: ConstrainedBox(
              constraints: const BoxConstraints(maxWidth: 1000),
              child: SingleChildScrollView(
                physics: const ClampingScrollPhysics(),
                padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(
                      children: const [
                        Icon(
                          Icons.sunny_snowing,
                          color: Color.fromARGB(255, 150, 158, 157),
                          size: 40,
                        ),
                        SizedBox(width: 8),
                        Text(
                          '¡Bienvenido!',
                          style: TextStyle(fontSize: 16),
                        ),
                      ],
                    ),
                    const SizedBox(height: 24),
                    Container(
                      width: double.infinity,
                      padding: const EdgeInsets.all(24),
                      decoration: BoxDecoration(
                        color: const Color(0xFFE6F8F5),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Column(
                        children: [
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
                          const SizedBox(height: 12),
                          const Text(
                            '¿No tienes tu tarjeta para retirar efectivo? No hay problema, ingresa y utiliza QuickPay.',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.teal,
                              fontSize: 14,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 20),
                    if (isDesktop)
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                            width: 200,
                            child: ElevatedButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => const LoginScreen(),
                                  ),
                                );
                              },
                              style: ElevatedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(30),
                                ),
                                backgroundColor: const Color(0xFF15998E),
                              ),
                              child: const Text(
                                "Ingresar ahora",
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          ),
                          const SizedBox(width: 20),
                          SizedBox(
                            width: 200,
                            child: OutlinedButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) =>
                                        const UserCreationScreen(),
                                  ),
                                );
                              },
                              style: OutlinedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(30),
                                ),
                                side:
                                    const BorderSide(color: Color(0xFF15998E)),
                              ),
                              child: const Text(
                                "Generar Clave Virtual",
                                style: TextStyle(color: Colors.black),
                              ),
                            ),
                          ),
                        ],
                      )
                    else ...[
                      ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const LoginScreen(),
                            ),
                          );
                        },
                        style: ElevatedButton.styleFrom(
                          minimumSize: const Size(double.infinity, 50),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30),
                          ),
                          backgroundColor: const Color(0xFF15998E),
                        ),
                        child: const Text(
                          "Ingresar ahora",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                      const SizedBox(height: 10),
                      OutlinedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const UserCreationScreen(),
                            ),
                          );
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
                          style: TextStyle(color: Colors.black),
                        ),
                      ),
                    ],
                    const SizedBox(height: 30),
                    if (isDesktop)
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(
                            width: 260,
                            child: OptionTile(
                              icon: Icons.qr_code,
                              text: 'Solicitar\nproductos',
                              isNew: true,
                              onTap: () => _showCustomBottomSheet(context),
                            ),
                          ),
                          SizedBox(
                            width: 260,
                            child: OptionTile(
                              icon: Icons.remove_red_eye,
                              text: 'Mostrar\nQuickview',
                              onTap: () => openVirtualkeyModal(context),
                            ),
                          ),
                          SizedBox(
                            width: 260,
                            child: OptionTile(
                              icon: Icons.layers,
                              text: 'Ver más\nopciones',
                              onTap: () => openSeeMoreModal(context),
                            ),
                          ),
                        ],
                      )
                    else
                      Wrap(
                        alignment: WrapAlignment.center,
                        spacing: 12,
                        runSpacing: 12,
                        children: [
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
                      ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
