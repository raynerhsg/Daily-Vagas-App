import 'package:daily_vagas_app/app/screens/home/home_recommendeds.dart';
import 'package:daily_vagas_app/app/screens/home/home_vacancies_applied.dart';
import 'package:daily_vagas_app/app/widgets/home/home_appbar.dart';
import 'package:daily_vagas_app/app/widgets/home/home_search.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF171A22),
      appBar: const HomeAppBar(),
      body: _body(),
    );
  }

  Widget _body() {
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Column(
        children: const [
          HomeSearch(),
          HomeRecommendeds(),
          HomeVacanciesApplied(),
        ],
      ),
    );
  }
}
