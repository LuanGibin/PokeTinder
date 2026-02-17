import 'package:flutter/material.dart';

class ContextButton extends StatelessWidget {
  final String label;
  final VoidCallback onTap;

  //construtor passa o label (texto do botão) e a função onTap (ação ao clicar).
  const ContextButton({super.key, required this.label, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Ink(
        padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 40),
        decoration: ShapeDecoration(
          gradient: const LinearGradient(
            begin: Alignment(0.00, 0.50),
            end: Alignment(1.00, 0.50),
            colors: [Color(0xFFCC201F), Color(0xFFE52D27), Color(0xFFFF6A00)],
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(32),
          ),
          shadows: const [
            BoxShadow(
              color: Color(0x7F000000),
              blurRadius: 10,
              offset: Offset(5, 10),
              spreadRadius: 2,
            ),
          ],
        ),
        child: Text(
          label,
          textAlign: TextAlign.center,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
