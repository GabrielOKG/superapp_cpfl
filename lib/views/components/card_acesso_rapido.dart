import 'package:flutter/material.dart';

import '../../constants.dart';

class CardAcessoR extends StatelessWidget {
  const CardAcessoR({
    Key key,
    @required this.size,
  }) : super(key: key);
  final Size size;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
          margin: EdgeInsets.only(top: size.height * 0.05),
          color: Colors.white,
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: size.width * 0.03,
                  ),
                  Text(
                    'Acesso Rápido',
                    style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16),
                  ),
                  SizedBox(
                    width: size.width * 0.59,
                  ),
                  Icon(Icons.expand_more)
                ],
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    buildAcessoR(icon: Icons.attach_money, text: 'Pagar'),
                    buildAcessoR(icon: Icons.receipt, text: 'Extrato'),
                    buildAcessoRB(
                        icon: Icons.format_align_justify, text: 'Boletos'),
                    buildAcessoR(icon: Icons.support_agent, text: 'Contato'),
                  ],
                ),
              )
            ],
          )),
    );
  }

  Column buildAcessoR({IconData icon, String text}) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.all(15),
          height: 80,
          width: 80,
          decoration: BoxDecoration(
              color: koneColor, borderRadius: BorderRadius.circular(12)),
          child: Icon(icon, size: 60, color: Colors.white),
        ),
        Text(
          text.toUpperCase(),
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.w400),
          textAlign: TextAlign.center,
        )
      ],
    );
  }

  Column buildAcessoRB({IconData icon, String text}) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.all(15),
          height: 80,
          width: 80,
          decoration: BoxDecoration(
              color: koneColor, borderRadius: BorderRadius.circular(12)),
          child: Transform.rotate(
            angle: 1.56,
            child: IconButton(
              icon: Icon(
                icon,
                color: Colors.white,
                size: 60,
              ),
              onPressed: null,
            ),
          ),
        ),
        Text(
          text.toUpperCase(),
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.w400),
          textAlign: TextAlign.center,
        )
      ],
    );
  }
}
