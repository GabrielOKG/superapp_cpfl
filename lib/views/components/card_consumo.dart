import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

import '../../constants.dart';
import 'card_chart_bar.dart';

class CardConsumo extends StatelessWidget {
  CardConsumo({
    Key key,
    this.size,
  }) : super(key: key);
  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: size.height * 0.05),
      padding: EdgeInsets.symmetric(
        vertical: 15,
        horizontal: 20,
      ),
      color: Colors.white,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                width: size.width * 0.03,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Consumo',
                    textAlign: TextAlign.left,
                    style: TextStyle(fontWeight: FontWeight.w500, fontSize: 22),
                  ),
                  SizedBox(
                    height: size.height * 0.02,
                  ),
                  Row(
                    children: [
                      Text(
                        'Por Endereço',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 16),
                      ),
                      SizedBox(
                        width: size.width * 0.02,
                      ),
                      Container(
                        margin: EdgeInsets.only(right: size.width * 0.042),
                        width: size.width * 0.18,
                        height: size.height * 0.025,
                        decoration: BoxDecoration(
                            border: Border.fromBorderSide(
                                BorderSide(color: Colors.grey)),
                            borderRadius: BorderRadius.circular(5)),
                        child: Center(
                            child: Text(
                          '+ Endereços',
                          style: TextStyle(fontSize: 10),
                        )),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: size.height * 0.02,
                  ),
                  Text(
                    'Rua Feliz,123'.toUpperCase(),
                    style: TextStyle(fontSize: 14),
                  ),
                ],
              ),
              SizedBox(
                width: size.width * 0.02,
              ),
            ],
          ),
          buildAcessoR(
            size: size,
          ),
        ],
      ),
    );
  }

  Column buildAcessoR({List data, Size size}) {
    return Column(children: [
      Container(
        margin: EdgeInsets.all(10),
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
            color: kprimaryColor, borderRadius: BorderRadius.circular(12)),
        height: size.height * 0.35,
        width: size.width * 0.848,
        child: Expanded(child: BarChartOne()),
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Container(
            height: size.height * 0.02,
            width: size.width * 0.03,
            color: Colors.orange,
          ),
          Text(
            ' Consumo previsto',
          ),
          SizedBox(width: size.width * 0.028)
        ],
      ),
      Container(
        width: size.width * 0.89,
        margin: EdgeInsets.only(top: size.height * 0.04),
        decoration: BoxDecoration(
            color: Colors.red, borderRadius: BorderRadius.circular(12)),
        child: Card(
          child: Row(
            children: [
              buildContainerMMT(size,
                  cor: Colors.red,
                  textCor: Colors.white,
                  text: 'Maior Consumo',
                  icon: Icons.arrow_drop_up),
              buildContainerMMD(size,
                  cor: Colors.red,
                  text1: 'Jun',
                  text2: '489 KWh',
                  valor: '340,43')
            ],
          ),
        ),
      ),
      Container(
        width: size.width * 0.9,
        margin: EdgeInsets.only(top: size.height * 0.01),
        decoration: BoxDecoration(
            color: Colors.green, borderRadius: BorderRadius.circular(12)),
        child: Card(
          child: Row(
            children: [
              buildContainerMMT(size,
                  cor: Colors.green,
                  textCor: Colors.white,
                  text: 'Menor Consumo',
                  icon: Icons.arrow_drop_down),
              buildContainerMMD(size,
                  cor: Colors.green,
                  text1: 'Mar',
                  text2: '139 KWh',
                  valor: '120,80')
            ],
          ),
        ),
      )
    ]);
  }

  Container buildContainerMMT(Size size,
      {Color cor = Colors.white, Color textCor, String text, IconData icon}) {
    return Container(
      height: size.height * 0.06,
      width: size.width * 0.376,
      color: cor,
      child: Center(
          child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Text(
            text,
            style: TextStyle(
                color: textCor, fontWeight: FontWeight.bold, fontSize: 14),
          ),
          Icon(
            icon,
            color: Colors.white,
            size: 28,
          ),
        ],
      )),
    );
  }

  Container buildContainerMMD(Size size,
      {Color cor = Colors.white, String text1, String text2, String valor}) {
    return Container(
      height: size.height * 0.06,
      width: size.width * 0.48,
      color: Colors.white,
      child: Center(
          child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Text(
            text1,
            style: TextStyle(
                fontWeight: FontWeight.bold, fontSize: 14, color: cor),
          ),
          Container(
            height: size.height * 0.05,
            width: 1,
            color: cor,
          ),
          Text(
            text2,
            style: TextStyle(
                fontWeight: FontWeight.bold, fontSize: 14, color: cor),
          ),
          Container(
            height: size.height * 0.05,
            width: 1,
            color: cor,
          ),
          Text(
            'R\$$valor',
            style: TextStyle(
                fontWeight: FontWeight.bold, fontSize: 14, color: cor),
          )
        ],
      )),
    );
  }
}
