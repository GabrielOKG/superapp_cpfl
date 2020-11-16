import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CardOfertas extends StatelessWidget {
  const CardOfertas({
    Key key,
    @required this.size,
  }) : super(key: key);
  final Size size;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
          margin: EdgeInsets.only(
              top: size.height * 0.05, bottom: size.height * 0.05),
          color: Colors.white,
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                    width: size.width * 0.03,
                  ),
                  Text(
                    'Compre produtos com o selo procel ',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                  SvgPicture.asset('assets/selo.svg')
                ],
              ),
              Row(
                children: [
                  SizedBox(
                    width: size.width * 0.05,
                  ),
                  Text(
                    'Compre e ganhe ',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
                  ),
                  Text(
                    'descontos na sua conta de energia',
                    style: TextStyle(fontSize: 12),
                  ),
                ],
              ),
              Container(
                margin: EdgeInsets.only(top: size.height * 0.06),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      buildAcessoR(
                          img: 'lavar',
                          preco: '1.520,10',
                          parc: '168,90',
                          descr:
                              'Lavadora de Roupas Electrolux LAC12 - 12Kg Cesto Inox 12 Programas de Lavagem'),
                      buildAcessoR(
                          img: 'geladeira',
                          preco: '2,024,10',
                          parc: '224,90',
                          descr:
                              'Geladeira/Refrigerador Consul Frost Free Duplex - Branca 340L CRM39ABANA'),
                      buildAcessoR(
                          img: 'microondas',
                          preco: '588,05',
                          parc: '58,90',
                          descr:
                              'Micro-ondas Consul 32 Litros Branco com Função Descongelar'),
                      buildAcessoR(
                          img: 'ar',
                          preco: '1.680,55',
                          parc: '176,90',
                          descr:
                              'Ar Condicionado Split Inverter High Wall 9000 BTUs Philco Quente/Frio 220V PAC9000IQFM9'),
                    ],
                  ),
                ),
              )
            ],
          )),
    );
  }

  Column buildAcessoR({String img, String descr, String preco, String parc}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          margin: EdgeInsets.all(15),
          height: size.height * 0.15,
          width: size.width * 0.3,
          child: Center(child: Image.asset('assets/$img.webp')),
        ),
        Container(
          width: size.width * 0.3,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                descr,
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w400,
                    fontSize: 10),
              ),
              Text(
                'R\$$preco à vista',
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 14),
              ),
              Text(
                'em ate 10x de R\$$parc sem juros',
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w400,
                    fontSize: 10),
              ),
            ],
          ),
        )
      ],
    );
  }
}
