import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../constants.dart';

class AppBarX extends StatelessWidget {
  const AppBarX({
    Key key,
    @required this.size,
  }) : super(key: key);
  final Size size;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SvgPicture.asset('assets/logo.svg'),
        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Olá Alice',
              style: TextStyle(color: Colors.black54),
            ),
            Row(
              children: [
                Icon(
                  Icons.report_problem,
                  color: Colors.red,
                  size: 14,
                ),
                Text(
                  '2 contas atrasadas',
                  style: TextStyle(
                      color: Colors.red,
                      fontSize: 14,
                      decoration: TextDecoration.underline),
                ),
              ],
            ),
            Text(
              'Risco de corte',
              style: TextStyle(color: Colors.red, fontSize: 14),
            ),
          ],
        ),
        Row(
          children: [
            Stack(children: [
              CircleAvatar(
                radius: 20,
                backgroundImage: AssetImage('assets/alice.png'),
              ),
              Positioned(
                  top: 0,
                  left: 0,
                  child: Container(
                    width: 15,
                    height: 15,
                    decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(20)),
                    child: Center(
                      child: Text(
                        '3',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 13,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ))
            ]),
            SizedBox(
              width: size.width * 0.02,
            ),
            Icon(
              Icons.menu,
              color: kprimaryColor,
              size: 25,
            )
          ],
        ),
      ],
    );
  }
}
