import 'package:daily_vagas_app/app/widgets/jobs_details/jobs_details_apply_button.dart';
import 'package:daily_vagas_app/app/widgets/jobs_details/jobs_details_header.dart';
import 'package:daily_vagas_app/app/widgets/jobs_details/jobs_details_informations.dart';
import 'package:flutter/material.dart';

class JobsDetailsScreen extends StatelessWidget {
  const JobsDetailsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Color(0XFF2E3138),
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(32),
        ),
      ),
      child: _body(),
    );
  }

  Widget _body() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          _header(),
          _informations(),
          _applyButton(),
        ],
      ),
    );
  }

  Widget _header() {
    return const Padding(
      padding: EdgeInsets.only(top: 36.0),
      child: JobsDetailsHeader(),
    );
  }

  Widget _informations() {
    return const Padding(
      padding: EdgeInsets.only(top: 64.0),
      child: JobsDetailsInformations(),
    );
  }

  Widget _applyButton() {
    return const Padding(
      padding: EdgeInsets.symmetric(vertical: 32.0),
      child: JobsDetailsApplyButton(),
    );
  }
}
