import 'package:carousel_slider/carousel_slider.dart';
import 'package:demoapp/components/blog_card.dart';
import 'package:demoapp/components/carousel_card.dart';
import 'package:flutter/material.dart';
// Adjust path accordingly

class PromoCarousel extends StatelessWidget {
  const PromoCarousel({super.key});

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    final List<Widget> promoItems = [
      const CarouselCard(
        imagePath: 'assets/images/la-taquiza-perrona.png',
        title: 'La Taquiza Perrona',
        description: 'Comida Mexicana',
        tagText: 'Promo 2x1',
      ),
      const CarouselCard(
        imagePath: 'assets/images/el-carapacho-guayaco.png',
        title: 'La Taquiza Perrona',
        description: 'Comida Mexicana',
        tagText: 'Promo 2x1',
      ),
      const CarouselCard(
        imagePath: 'assets/images/charros.png',
        title: 'La Taquiza Perrona',
        description: 'Comida Mexicana',
        tagText: 'Promo 2x1',
      ),
    ];

    return Container(
      color: const Color(0xFFF8FEFF),
      padding: const EdgeInsets.symmetric(vertical: 32),
      child: Column(
        children: [
          const Text(
            "Promociones Visa Débito",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ),
          const SizedBox(height: 4),
          const Text(
            "Descubre las promociones disponibles",
            style: TextStyle(color: Colors.grey),
          ),
          const SizedBox(height: 24),
          CarouselSlider(
  options: CarouselOptions(
              height: screenHeight * 0.4, // 40% of screen height
              enableInfiniteScroll: true,
              enlargeCenterPage: true,
              viewportFraction: 0.6,
              autoPlay: true,
            ),
            items: promoItems,
          ),

        ],
      ),
    );
  }
}
