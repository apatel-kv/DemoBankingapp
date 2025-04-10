import 'package:flutter/material.dart';

class IdTypeButton extends StatelessWidget {
  final String label;
  final String selectedIdType;
  final VoidCallback onTap;

  const IdTypeButton({
    super.key,
    required this.label,
    required this.selectedIdType,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final bool isSelected = label == selectedIdType;

    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 12),
        decoration: BoxDecoration(
          border: Border.all(color: const Color(0xFF15998E)),
          color: isSelected ? Colors.white : const Color(0xFFE5E5E5),
          borderRadius: BorderRadius.circular(10),
        ),
        alignment: Alignment.center,
        child: Text(
          label,
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}
