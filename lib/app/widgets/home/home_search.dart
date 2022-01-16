import 'package:flutter/material.dart';

class HomeSearch extends StatelessWidget {
  const HomeSearch({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20) +
          const EdgeInsets.only(top: 48),
      child: _body(),
    );
  }

  Widget _body() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
      decoration: const BoxDecoration(
        color: Color(0XFF2E3138),
        borderRadius: BorderRadius.all(
          Radius.circular(16),
        ),
      ),
      child: IntrinsicHeight(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            _searchIcon(),
            _text(),
            _verticalDividir(),
            _settingsIcon(),
          ],
        ),
      ),
    );
  }

  Widget _searchIcon() {
    return const Icon(
      Icons.search,
      color: Colors.grey,
    );
  }

  Widget _text() {
    return const Text(
      'Pesquise por empresa, título...',
      style: TextStyle(
        color: Colors.grey,
        fontSize: 16,
        fontWeight: FontWeight.w400,
        fontFamily: 'Lato',
      ),
    );
  }

  Widget _verticalDividir() {
    return const VerticalDivider(
      color: Colors.grey,
    );
  }

  Widget _settingsIcon() {
    return const Icon(
      Icons.tune,
      color: Colors.grey,
    );
  }
}
