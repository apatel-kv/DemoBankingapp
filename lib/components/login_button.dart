import 'package:demoapp/screens/home_screen.dart';
import 'package:flutter/material.dart';

class Loginbutton extends StatelessWidget {
  const Loginbutton();

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) => const HomeScreen()));
      },
      style: OutlinedButton.styleFrom(
        side: const BorderSide(color: Colors.white),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 14),
        foregroundColor: Colors.white,
      ),
      child: const Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text("Ingresar a la Banca Digital"),
          SizedBox(width: 10),
          Icon(Icons.arrow_forward,color: Colors.white,),
        ],
      ),
    );
  }
}