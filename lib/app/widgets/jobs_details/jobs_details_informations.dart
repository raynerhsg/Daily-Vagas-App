import 'package:daily_vagas_app/app/widgets/jobs_details/secondary/job_main_information_card.dart';
import 'package:flutter/material.dart';

class JobsDetailsInformations extends StatelessWidget {
  const JobsDetailsInformations({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: _body(),
    );
  }

  Widget _body() {
    return Column(
      children: [
        _jobAndLocation(),
        _jobMainInformations(),
        _about(),
      ],
    );
  }

  Widget _jobAndLocation() {
    return Column(
      children: const [
        Text(
          'UI designer SR',
          style: TextStyle(
            color: Colors.white,
            fontSize: 16,
            fontWeight: FontWeight.w700,
          ),
        ),
        SizedBox(height: 16),
        Text(
          'Google, São Paulo - SP',
          style: TextStyle(
            color: Colors.grey,
            fontSize: 16,
            fontWeight: FontWeight.w400,
          ),
        ),
      ],
    );
  }

  Widget _jobMainInformations() {
    return const Padding(
      padding: EdgeInsets.only(top: 32.0, bottom: 40),
      child: JobMainInformationCard(),
    );
  }

  Widget _about() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: const [
        Text(
          'Sobre a vaga',
          style: TextStyle(
            color: Colors.white,
            fontSize: 18,
            fontWeight: FontWeight.w600,
          ),
        ),
        SizedBox(height: 24),
        Text(
          'Missão: transformar a experiência dos nossos clientes de ponta a ponta, do primeiro sketch à implementação, contribuindo diretamente para a digitalização de produtos e humanização de interações.',
          style: TextStyle(
            color: Colors.white,
            fontSize: 16,
          ),
        ),
      ],
    );
  }
}
