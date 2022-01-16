import 'package:daily_vagas_app/app/widgets/home/secondary/recommendeds_card.dart';
import 'package:flutter/material.dart';

class HomeRecommendeds extends StatelessWidget {
  const HomeRecommendeds({Key? key}) : super(key: key);

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
        children: [
          _header(),
          _list(),
        ],
      ),
    );
  }

  Widget _header() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: const [
        Text(
          'Recomendados',
          style: TextStyle(
            color: Colors.white,
            fontSize: 18,
            fontWeight: FontWeight.w700,
          ),
        ),
        TextButton(
          onPressed: null,
          child: Text(
            'Ver todos',
            style: TextStyle(
              color: Color(0XFFA1ACD7),
              fontSize: 16,
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
      ],
    );
  }

  Widget _list() {
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      scrollDirection: Axis.horizontal,
      child: Row(
        children: const [
          RecommendedsCards(),
          RecommendedsCards(),
          RecommendedsCards(),
        ],
      ),
    );
  }
}
