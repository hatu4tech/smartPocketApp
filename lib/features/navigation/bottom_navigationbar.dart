import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BottomNavigationbar extends StatefulWidget {
  const BottomNavigationbar({super.key});

  @override
  State<BottomNavigationbar> createState() => _BottomNavigationbarState();
}

class _BottomNavigationbarState extends State<BottomNavigationbar> {
  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      color: Colors.grey,
      child: Row(
        children: [
          MaterialButton(
            onPressed: () {},
            child: SvgPicture.asset('assets/images/home.svg'),
          ),
        ],
      ),
    );
  }
}
