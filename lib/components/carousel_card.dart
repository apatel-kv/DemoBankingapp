import 'package:flutter/material.dart';

class CarouselCard extends StatelessWidget {
  final String imagePath;
  final String tagText;
  final String title;
  final String description;

  const CarouselCard({
    super.key,
    required this.imagePath,
    required this.tagText,
    required this.title,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final double cardWidth = screenWidth < 600 ? screenWidth * 0.9 : 400;

    return Center(
      child: Container(
        width: cardWidth,
        child: Card(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
          elevation: 4,
          clipBehavior: Clip.antiAlias,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min, // Allows card height to adapt
            children: [
              Image.asset(
                imagePath,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
              Center(
                child: Text(
                        title,
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
