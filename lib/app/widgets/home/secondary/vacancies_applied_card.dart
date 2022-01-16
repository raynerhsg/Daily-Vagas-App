import 'package:flutter/material.dart';

class VacanciesAppliedCard extends StatelessWidget {
  const VacanciesAppliedCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0),
      child: Container(
        padding: const EdgeInsets.all(16),
        decoration: const BoxDecoration(
          color: Color(0XFF2E3138),
          borderRadius: BorderRadius.all(Radius.circular(16)),
        ),
        child: _body(),
      ),
    );
  }

  Widget _body() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        _logo(),
        _informations(),
        _secondaryInformation(),
      ],
    );
  }

  Widget _logo() {
    return Image.asset('assets/images/microsoft_logo.png');
  }

  Widget _informations() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const [
        Text(
          'Product designer',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w600,
            fontSize: 16,
          ),
        ),
        SizedBox(height: 4),
        Text(
          'Microsoft',
          style: TextStyle(
            color: Colors.grey,
            fontWeight: FontWeight.w400,
            fontSize: 14,
          ),
        ),
      ],
    );
  }

  Widget _secondaryInformation() {
    return const Text(
      'Dinâmica em grupo',
      style: TextStyle(
        color: Color(0xffA1ACD7),
        fontWeight: FontWeight.w400,
        fontSize: 14,
      ),
    );
  }
}
