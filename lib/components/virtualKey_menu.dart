import 'package:flutter/material.dart';

class virtualScreen extends StatefulWidget {
  const virtualScreen({super.key});
 
  @override
  _virtualScreenState createState() => _virtualScreenState();
}
 
class _virtualScreenState extends State<virtualScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<Offset> _slideAnimation;
 
  @override
  void initState() {
    super.initState();
 
    _controller = AnimationController(
      duration: Duration(milliseconds:200),
      vsync: this,
    );
 
    _slideAnimation = Tween<Offset>(
      begin: Offset(0, 1),
      end: Offset(0, 0),
    ).animate(CurvedAnimation(parent: _controller, curve: Curves.easeOut));
 
    _controller.forward();
  }
 
  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
 
  @override
  Widget build(BuildContext context) {
    return SlideTransition(
      position: _slideAnimation,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 24),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.vertical(top: Radius.circular(30)),
        ),
        child: SafeArea(
          top: false,
          child: Stack(
            children: [
              // Main Column content
              Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  // Drag handle centered
                  Center(
                    child: Container(
                      width: 50,
                      height: 5,
                      margin: EdgeInsets.only(bottom: 16),
                      decoration: BoxDecoration(
                        color: Colors.grey[300],
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                  Image.asset(
                    'assets/images/lock.png',
                    width: 200,
                    height: 200,
                  ),
                  SizedBox(height: 24),
                  Text(
                    'No tienes activo la Clave Virtual',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.black87,
                    ),
                  ),
                  SizedBox(height: 12),
                  Text(
                    'Ingresa a tu 24móvil y activa el dispositivo desde el menú Otros - Clave Virtual',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.grey[700],
                    ),
                  ),
                ],
              ),
              // Close button at top right
              Positioned(
                top: 0,
                right: 0,
                child: IconButton(
                  icon: Icon(Icons.close, color: Colors.black54),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}