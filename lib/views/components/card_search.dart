import 'package:flutter/material.dart';

import '../../constants.dart';

class CardSearch extends StatelessWidget {
  const CardSearch({
    Key key,
    @required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        width: size.width * 0.9,
        height: size.height * 0.07,
        child: TextField(
          decoration: InputDecoration(
            contentPadding:
                const EdgeInsets.symmetric(vertical: 8, horizontal: 12),
            hintText: 'pesquisa',
            hintStyle:
                TextStyle(color: Colors.grey.withOpacity(0.8), fontSize: 22),
            suffixIcon: Icon(
              Icons.search,
              size: 25,
              color: Colors.grey.withOpacity(0.8),
            ),
            border: InputBorder.none,
            enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.grey),
                borderRadius: BorderRadius.all(Radius.circular(30))),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.grey),
              borderRadius: BorderRadius.all(Radius.circular(30)),
            ),
            filled: true,
          ),
        ),
      ),
    );
  }
}
