import 'package:demoapp/screens/offlinePage.dart';
import 'package:flutter/material.dart';

class CustomBottomSheetContent extends StatelessWidget {
  const CustomBottomSheetContent({super.key});

  Widget _buildCardTile({
    required IconData icon,
    required String title,
    required String subtitle,
    required VoidCallback onTap,
  }) {
    return Container(
      margin: const EdgeInsets.only(bottom: 12),
      padding: const EdgeInsets.symmetric(horizontal: 12),
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: Colors.grey.shade300),
        borderRadius: BorderRadius.circular(12),
      ),
      child: ListTile(
        leading: Icon(icon, color: Colors.black),
        title: Text(title, style: const TextStyle(fontWeight: FontWeight.bold)),
        subtitle: Text(subtitle),
        trailing: const Icon(Icons.arrow_forward_ios, size: 16),
        onTap: onTap,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            // Header Row
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "¿Qué deseas solicitar?",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                IconButton(
                  icon: const Icon(Icons.close),
                  onPressed: () => Navigator.pop(context),
                ),
              ],
            ),
            const SizedBox(height: 10),

            const Text(
              "Descubre y elige la opción que te ayudará a lograr tus metas.",
              style: TextStyle(fontSize: 14),
            ),
            const SizedBox(height: 16),

            // Option Cards with Border
            _buildCardTile(
              icon: Icons.monetization_on,
              title: "Crédito de consumo",
              subtitle: "Simula y solicita tu crédito.",
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (_) => const OfflineScreen()));
              },
            ),
            _buildCardTile(
              icon: Icons.credit_card,
              title: "Tarjeta de crédito",
              subtitle: "Solicita y disfruta de beneficios",
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (_) => const OfflineScreen()));
              },
            ),
            _buildCardTile(
              icon: Icons.savings,
              title: "Cuenta de ahorros",
              subtitle: "Abre una cuenta de inmediato y sin costo",
             onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (_) => const OfflineScreen()));
              },
            ),
            _buildCardTile(
              icon: Icons.account_balance_wallet,
              title: "Cuenta Nómina",
              subtitle: "Abre una cuenta para recibir tu sueldo de forma automática.",
             onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (_) => const OfflineScreen()));
              },
            ),

            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
