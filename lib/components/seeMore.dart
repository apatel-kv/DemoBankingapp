import 'package:demoapp/screens/offlinePage.dart';
import 'package:flutter/material.dart';

class SeeMore extends StatelessWidget {
  const SeeMore({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          // Top row: title and close icon
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const SizedBox(width: 24), // Spacer to center title
              const Expanded(
                child: Text(
                  'Más opciones',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              IconButton(
                icon: const Icon(Icons.close),
                onPressed: () => Navigator.pop(context),
              ),
            ],
          ),

          const SizedBox(height: 4),
          const Text(
            '¿Qué necesitas hacer hoy?',
            style: TextStyle(fontSize: 14, color: Colors.black54),
          ),

          const SizedBox(height: 4),
          // Yellow underline
          Container(
            height: 3,
            width: 20,
            decoration: BoxDecoration(
              color: Colors.orangeAccent,
              borderRadius: BorderRadius.circular(2),
            ),
          ),

          const SizedBox(height: 20),

          // List options with trailing arrows
          ListTile(
            leading: const Icon(Icons.person_add),
            title: const Text('Crear usuario'),
            subtitle: const Text('Realiza pagos y transferencias.'),
            trailing: const Icon(Icons.arrow_forward_ios, size: 16),
           onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (_) => const OfflineScreen()));
              },
          ),
          ListTile(
            leading: const Icon(Icons.location_on),
            title: const Text('Cajeros y oficinas'),
            subtitle: const Text('Localiza el cajero más cercano'),
            trailing: const Icon(Icons.arrow_forward_ios, size: 16),
           onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (_) => const OfflineScreen()));
              },
          ),
          ListTile(
            leading: const Icon(Icons.chat),
            title: const Text('Avi24'),
            subtitle: const Text('Escríbenos por WhatsApp'),
            trailing: const Icon(Icons.arrow_forward_ios, size: 16),
           onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (_) => const OfflineScreen()));
              },
          ),
          ListTile(
            leading: const Icon(Icons.info),
            title: const Text('Más información'),
            subtitle: const Text('Preguntas frecuentes y contactos'),
            trailing: const Icon(Icons.arrow_forward_ios, size: 16),
           onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (_) => const OfflineScreen()));
              },
          ),
        ],
      ),
    );
  }
}
