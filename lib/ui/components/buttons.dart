import 'package:flutter/material.dart';

class PrimaryButton extends StatelessWidget {
  final String label;
  final Function onTap;

  //construtor passa o label (texto do botão) e a função onTap (ação ao clicar).
  const PrimaryButton({super.key, required this.label, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        onTap();
      },
      child: Ink(
        padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 40),
        width: MediaQuery.of(context).size.width * 0.6,
        decoration: BoxDecoration(
          gradient: const LinearGradient(
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
            colors: [Color(0xFFCC201F), Color(0xFFE52D27), Color(0xFFFF6A00)],
            stops: [
              0.1, // ...e já começa a virar vermelho aos 10% da linha do gradiente
              0.4, // O vermelho escuro domina até os 40%
              1.0, // O restante da tela é preenchido pela transição para o laranja
            ],
          ),
          borderRadius: BorderRadius.circular(32),
          boxShadow: const [
            BoxShadow(
              color: Color(0x7F000000),
              blurRadius: 10,
              offset: Offset(5, 10),
              spreadRadius: 2,
            ),
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Text(
              label,
              textAlign: TextAlign.center,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
