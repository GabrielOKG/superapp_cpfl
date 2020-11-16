import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:fl_chart/fl_chart.dart';

import '../../constants.dart';

class CardResumo extends StatefulWidget {
  const CardResumo({
    Key key,
    this.size,
  }) : super(key: key);
  final Size size;

  @override
  _CardResumoState createState() => _CardResumoState();
}

class _CardResumoState extends State<CardResumo> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
          padding: EdgeInsets.symmetric(
            vertical: 15,
            horizontal: 5,
          ),
          color: Colors.white,
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: widget.size.width * 0.001,
                  ),
                  Text(
                    'Por aparelho',
                    style: TextStyle(fontWeight: FontWeight.w500, fontSize: 22),
                  ),
                  SizedBox(
                    width: widget.size.width * 0.60,
                  ),
                ],
              ),
              Container(
                margin: EdgeInsets.only(top: widget.size.height * 0.02),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      buildConsA(size: widget.size, text: 'Top Consumo'),
                      buildCompare(
                        text: 'Comparação',
                        size: widget.size,
                      )
                    ],
                  ),
                ),
              )
            ],
          )),
    );
  }

  Column buildConsA({Size size, String text}) {
    return Column(children: [
      Container(
        margin: EdgeInsets.all(10),
        decoration: BoxDecoration(
            color: kprimaryColor, borderRadius: BorderRadius.circular(10)),
        child: Card(
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.symmetric(
                    horizontal: size.width * 0.02,
                    vertical: size.height * 0.01),
                color: kprimaryColor,
                height: size.height * 0.08,
                width: size.width * 0.78,
                child: Text(
                  text,
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 28,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                color: Colors.white,
                height: size.height * 0.38,
                width: size.width * 0.78,
                child: Row(
                  children: [
                    Container(
                        margin: EdgeInsets.only(left: size.width * 0.03),
                        child: SvgPicture.asset('assets/piechart.svg',
                            width: size.width * 0.4)),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Container(
                          margin: EdgeInsets.symmetric(
                              horizontal: size.width * 0.04,
                              vertical: size.height * 0.02),
                          child: Row(
                            children: [
                              Container(
                                margin: EdgeInsets.symmetric(
                                    horizontal: size.width * 0.02),
                                height: size.height * 0.02,
                                width: size.width * 0.03,
                                color: Colors.green,
                              ),
                              Text('TV')
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.symmetric(
                              horizontal: size.width * 0.04,
                              vertical: size.height * 0.02),
                          child: Row(
                            children: [
                              Container(
                                margin: EdgeInsets.symmetric(
                                    horizontal: size.width * 0.02),
                                height: size.height * 0.02,
                                width: size.width * 0.03,
                                color: Colors.blue,
                              ),
                              Text('Ar')
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.symmetric(
                              horizontal: size.width * 0.04,
                              vertical: size.height * 0.02),
                          child: Row(
                            children: [
                              Container(
                                margin: EdgeInsets.symmetric(
                                    horizontal: size.width * 0.02),
                                height: size.height * 0.02,
                                width: size.width * 0.03,
                                color: Colors.orange,
                              ),
                              Text('Geladeira')
                            ],
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    ]);
  }

  Column buildCompare({Size size, String text}) {
    return Column(children: [
      Container(
        margin: EdgeInsets.all(10),
        decoration: BoxDecoration(
            color: kprimaryColor, borderRadius: BorderRadius.circular(10)),
        child: Card(
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.symmetric(
                    horizontal: size.width * 0.02,
                    vertical: size.height * 0.01),
                color: kprimaryColor,
                height: size.height * 0.08,
                width: size.width * 0.78,
                child: Text(
                  text,
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 28,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                color: Colors.white,
                height: size.height * 0.38,
                width: size.width * 0.78,
                child: Row(
                  children: [
                    Container(
                      margin:
                          EdgeInsets.symmetric(horizontal: size.width * 0.03),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Row(children: [
                            Icon(
                              Icons.arrow_drop_up,
                              color: Colors.red,
                              size: 26,
                            ),
                            Text('Aumento',
                                style:
                                    TextStyle(color: Colors.red, fontSize: 26)),
                          ]),
                          SizedBox(
                            height: size.height * 0.01,
                          ),
                          Row(children: [
                            SvgPicture.asset(
                              'assets/geladeira.svg',
                              color: Colors.red,
                            ),
                            Text(' Geladeira (aumento de 40%)')
                          ]),
                          SizedBox(
                            height: size.height * 0.01,
                          ),
                          Row(children: [
                            SvgPicture.asset(
                              'assets/ar.svg',
                              color: Colors.red,
                            ),
                            Text(' Ar condicionado (aumento de 40%)')
                          ]),
                          SizedBox(
                            height: size.height * 0.01,
                          ),
                          Row(children: [
                            Icon(
                              Icons.arrow_drop_down,
                              color: Colors.green,
                              size: 26,
                            ),
                            Text(
                              'Redução',
                              style:
                                  TextStyle(color: Colors.green, fontSize: 26),
                            ),
                          ]),
                          SizedBox(
                            height: size.height * 0.01,
                          ),
                          Row(children: [
                            SvgPicture.asset(
                              'assets/tv.svg',
                              color: Colors.green,
                            ),
                            Text(' TV (redução de 10%)')
                          ]),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    ]);
  }
}
