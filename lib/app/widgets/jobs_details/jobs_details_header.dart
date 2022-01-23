import 'package:flutter/material.dart';

class JobsDetailsHeader extends StatelessWidget {
  const JobsDetailsHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: const [
        Icon(Icons.chat_rounded, color: Color(0XFFA1ACD7)),
        Icon(Icons.bookmark, color: Color(0XFFA1ACD7)),
      ],
    );
  }
}
