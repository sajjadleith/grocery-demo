import 'dart:ui';
import 'package:flutter/material.dart';

class BlurryGradientBackground extends StatelessWidget {
  const BlurryGradientBackground({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(color: const Color.fromARGB(255, 245, 245, 247)),
        Positioned(
          top: -100,
          right: 200,
          child: _buildBlob(const Color.fromARGB(255, 240, 193, 198), 250),
        ),

        Positioned(top: -100, left: 100, child: _buildBlob(const Color(0xFF6EE7B7), 250)),

        Positioned(bottom: -120, right: -80, child: _buildBlob(const Color(0xFF93C5FD), 280)),

        Positioned(top: 50, right: 30, child: _buildBlob(const Color(0xFFFDA4AF), 120)),

        BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 80, sigmaY: 80),
          child: Container(color: Colors.transparent),
        ),
      ],
    );
  }

  Widget _buildBlob(Color color, double size) {
    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        gradient: RadialGradient(colors: [color.withOpacity(0.6), color.withOpacity(0.0)]),
      ),
    );
  }
}
