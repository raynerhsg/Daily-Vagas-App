import 'package:flutter/material.dart';

class RecommendedsCards extends StatelessWidget {
  const RecommendedsCards({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 16.0),
      child: Container(
        decoration: const BoxDecoration(
          color: Color(0XFF2E3138),
          borderRadius: BorderRadius.all(Radius.circular(16)),
        ),
        child: _body(),
      ),
    );
  }

  Widget _body() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
        children: [
          // _bookMarkIcon(),

          _logo(),
          _mainInformations(),
          _secondaryInformation(),
        ],
      ),
    );
  }

  // Widget _bookMarkIcon() {
  //   return const Icon(
  //     Icons.bookmark_border_outlined,
  //     color: Colors.grey,
  //   );
  // }

  Widget _logo() {
    return Padding(
      padding: const EdgeInsets.only(top: 14.0),
      child: CircleAvatar(
        backgroundColor: Colors.transparent,
        child: Image.asset('assets/images/google_logo.png'),
      ),
    );
  }

  Widget _mainInformations() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const SizedBox(height: 24),
        const Text(
          'UI designer SR',
          style: TextStyle(
            color: Colors.white,
            fontSize: 18,
            fontWeight: FontWeight.w700,
          ),
        ),
        const SizedBox(height: 8),
        const Text(
          'Google, São Paulo - SP',
          style: TextStyle(
            color: Colors.grey,
            fontSize: 16,
            fontWeight: FontWeight.w400,
          ),
        ),
        const SizedBox(height: 8),
        Text(
          'há 12 horas',
          style: TextStyle(
            color: Colors.grey.withOpacity(0.6),
            fontSize: 14,
            fontWeight: FontWeight.w400,
          ),
        ),
      ],
    );
  }

  Widget _secondaryInformation() {
    return Padding(
      padding: const EdgeInsets.only(top: 24.0, bottom: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          _radiusContainer(title: 'Integral', color: const Color(0xff7FCEAD)),
          const SizedBox(width: 8),
          _radiusContainer(title: 'Sênior', color: const Color(0xffDFC3F5)),
        ],
      ),
    );
  }

  Widget _radiusContainer({
    required String title,
    required Color color,
  }) {
    return Container(
      decoration: BoxDecoration(
        color: color,
        borderRadius: const BorderRadius.all(Radius.circular(8)),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4),
        child: Text(
          title,
          style: const TextStyle(
            color: Color(0xff4B4E51),
          ),
        ),
      ),
    );
  }
}
