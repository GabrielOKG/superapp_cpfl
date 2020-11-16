import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CardNotificacoes extends StatelessWidget {
  const CardNotificacoes({
    Key key,
    this.size,
  }) : super(key: key);
  final Size size;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
          padding: EdgeInsets.symmetric(
            vertical: 15,
            horizontal: 15,
          ),
          color: Colors.white,
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Avisos'.toUpperCase(),
                    style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16),
                  ),
                  Icon(Icons.expand_more)
                ],
              ),
              notificacao(
                  text: 'Duas contas atrasadas - Risco de corte',
                  icon: 'corte',
                  data: ' 15/11',
                  size: size),
              notificacao(
                  text: 'Tempestade - Desligue seus aparelhos ',
                  icon: 'tempestade',
                  data: ' 15/11',
                  size: size),
              notificacao(
                  text: 'Acidente na rede - retorno previsto às 23:00',
                  icon: 'acidente',
                  data: ' 12/11',
                  size: size),
              notificacao(
                  text: 'Chuva forte - risco de queda de energia',
                  icon: 'chuva',
                  data: ' 11/11',
                  size: size),
            ],
          )),
    );
  }

  Column notificacao({String icon, String text, Size size, String data}) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.only(top: size.height * 0.009),
          height: size.height * 0.06,
          width: size.width * 0.9,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SvgPicture.asset('assets/$icon.svg'),
              Text(
                data,
                style:
                    TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
              ),
              Container(
                width: size.width * 0.7,
                height: size.height * 0.05,
                decoration: BoxDecoration(
                    color: Colors.grey.withOpacity(0.5),
                    borderRadius: BorderRadius.circular(8)),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 7, vertical: 7),
                  child: Text(
                    text,
                    style: TextStyle(color: Colors.black, fontSize: 14),
                  ),
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
