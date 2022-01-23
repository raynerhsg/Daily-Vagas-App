import 'package:flutter/material.dart';

class JobsDetailsApplyButton extends StatelessWidget {
  const JobsDetailsApplyButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all<Color>(
          const Color(0xffEC7B57),
        ),
        shape: MaterialStateProperty.all<OutlinedBorder>(
          const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(16),
            ),
          ),
        ),
      ),
      onPressed: () {
        Navigator.pop(context);
      },
      child: const Padding(
        padding: EdgeInsets.symmetric(vertical: 16.0),
        child: Text(
          'Aplicar',
          style: TextStyle(
            color: Colors.white,
            fontSize: 18,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
    );
  }
}
