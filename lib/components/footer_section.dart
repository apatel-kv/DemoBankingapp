 
import 'package:demoapp/components/info_section.dart';
import 'package:flutter/material.dart';

class FooterSection extends StatelessWidget {
  const FooterSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          InfoSection(
            title: "Acerca de Banco Bolivariano",
            items: [
              "Gobierno Corporativo",
              "Programa de prevención de lavado de Activos",
              "Defensor de Cliente",
              "Sostenibilidad",
              "Donaciones",
              "Información Institucional",
              "Transparencia de la Información",
              "Términos Legales",
            ],
          ),
          InfoSection(
            title: "Información para Clientes",
            items: [
              "Noticias y Novedades",
              "Aula BB",
              "Blog de Seguridad",
              "Protección de Datos",
              "Atención al Cliente",
              "Quejas y Reclamaciones",
            ],
          ),
          InfoSection(
            title: "Acerca del Sitio Web",
            items: [
              "Mapa del sitio",
              "Configurar Cookies",
            ],
          ),
        ],
      ),
    );
  }
}
