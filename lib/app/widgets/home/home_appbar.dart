import 'package:flutter/material.dart';

class HomeAppBar extends StatelessWidget implements PreferredSizeWidget {
  const HomeAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: AppBar(
        automaticallyImplyLeading: false,
        elevation: 0,
        centerTitle: false,
        toolbarHeight: 84,
        backgroundColor: const Color(0xFF171A22),
        title: const Padding(
          padding: EdgeInsets.only(top: 8.0),
          child: Text(
            'Encontre o seu\nnovo trabalho',
            maxLines: 2,
            style: TextStyle(
              color: Colors.white,
              fontSize: 32,
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 16.0),
            child: CircleAvatar(
              backgroundColor: Colors.orange,
              child: Image.asset('assets/images/ap.png'),
            ),
          ),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => AppBar(toolbarHeight: 84).preferredSize;
}
