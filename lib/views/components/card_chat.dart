import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../constants.dart';

class CardChat extends StatelessWidget {
  const CardChat({
    Key key,
    @required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
          horizontal: size.width * 0.16, vertical: size.height * 0.06),
      child: Row(
        children: [
          Container(
            height: size.height * 0.08,
            width: size.width * 0.14,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(size.width * 0.8),
              color: koneColor,
            ),
            child: SvgPicture.asset('assets/bot.svg'),
          ),
          Container(
            padding: EdgeInsets.symmetric(
                horizontal: size.width * 0.1, vertical: size.height * 0.006),
            margin: EdgeInsets.only(left: size.width * 0.04),
            height: size.height * 0.04,
            width: size.width * 0.5,
            decoration: BoxDecoration(
                color: kchatColor,
                borderRadius: BorderRadius.circular(size.width * 0.02)),
            child: Text(
              'Posso ajudar?',
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 14),
            ),
          )
        ],
      ),
    );
  }
}
