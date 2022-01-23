import 'package:flutter/material.dart';

class JobMainInformationCard extends StatelessWidget {
  const JobMainInformationCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          _card(
            img: 'money',
            text1: 'Salário',
            text2: 'R\$ 8.500,00',
          ),
          _card(
            img: 'clock',
            text1: 'Tipo',
            text2: 'Integral',
          ),
          _card(
            img: 'steps',
            text1: 'Posição',
            text2: 'Sênior',
          ),
        ],
      ),
    );
  }

  Widget _card({
    required String img,
    required String text1,
    required String text2,
  }) {
    return Container(
      decoration: const BoxDecoration(
        color: Color(0xff43464b),
        borderRadius: BorderRadius.all(
          Radius.circular(16),
        ),
      ),
      margin: const EdgeInsets.only(right: 8),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 8),
        child: Column(
          children: [
            Image.asset('assets/images/$img.png'),
            const SizedBox(height: 8),
            Text(
              text1,
              style: const TextStyle(
                color: Color(0xffD2D4D3),
                fontSize: 14,
                fontWeight: FontWeight.w400,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              text2,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
