import 'package:demoapp/components/blog_card.dart';
import 'package:demoapp/components/primarybutton.dart';
import 'package:flutter/material.dart';

class BlogPage extends StatelessWidget {
  const BlogPage({super.key});

  @override
  Widget build(BuildContext context) {
    return 
    Container(
      color: const Color(0xFFF2FBFD), // Light blue background
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal:25),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Center(
            child: Text(
              "Blog",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const SizedBox(height: 20),
          BlogCard(
            imagePath: 'assets/images/influencers.png',
            tagText: 'Manejo de deuda',
            title: '¿Pagan Impuestos los Influencers en Ecuador?',
            description:
                'Ser influencer no es solo tener muchos seguidores y subir fotos bonitas. Según...',
          ),
           const SizedBox(height: 20),
          BlogCard(
            imagePath: 'assets/images/img-bola-nieve.png',
            tagText: 'Ahorro',
            title: '¿Cómo ahorrar para tu jubilación?',
            description:
                'La jubilación es una etapa importante en la vida de cualquier persona. Es...',
          ),
           const SizedBox(height: 20),
          BlogCard(
            imagePath: 'assets/images/historial_crediticio.png',
            tagText: 'Educación Financiera',
            title: '¿Qué es la educación financiera?',
            description:
                'La educación financiera es el proceso de adquirir conocimientos y habilidades...',
          ),
          SizedBox(height: 20,),
          Primarybutton(
                text: 'Ir a Blog',
                onPressed: () {
                },
              ),
        ],
      ),
    );
  }
}
