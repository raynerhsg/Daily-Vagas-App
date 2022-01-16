import 'package:daily_vagas_app/app/widgets/home/secondary/vacancies_applied_card.dart';
import 'package:flutter/material.dart';

class HomeVacanciesApplied extends StatelessWidget {
  const HomeVacanciesApplied({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: _body(),
    );
  }

  Widget _body() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0) +
          const EdgeInsets.only(top: 40),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          _header(),
          _list(),
        ],
      ),
    );
  }

  Widget _header() {
    return const Text(
      'Vagas aplicadas',
      style: TextStyle(
        color: Colors.white,
        fontSize: 18,
        fontWeight: FontWeight.w700,
      ),
    );
  }

  Widget _list() {
    return Padding(
      padding: const EdgeInsets.only(top: 24.0),
      child: Column(
        children: const [
          VacanciesAppliedCard(),
          VacanciesAppliedCard(),
          VacanciesAppliedCard(),
          VacanciesAppliedCard(),
        ],
      ),
    );
  }
}
