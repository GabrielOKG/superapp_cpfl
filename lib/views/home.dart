import 'dart:ui';

import 'package:flutter/material.dart';

import 'components/app_bar.dart';
import 'components/card_acesso_rapido.dart';
import 'components/card_chat.dart';

import 'components/card_consumo.dart';
import 'components/card_notficacoes.dart';
import 'components/card_ofertas.dart';
import 'components/card_resumo.dart';
import 'components/card_search.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        brightness: Brightness.light,
        title: AppBarX(
          size: size,
        ),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(
                    top: size.height * 0.01, bottom: size.height * 0.03),
                width: size.width * 0.25,
                height: size.height * 0.028,
                decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(size.width * 0.012)),
                child: Center(
                  child: Text(
                    'Pagar agora',
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              CardSearch(size: size),
              CardNotificacoes(
                size: size,
              ),
              CardConsumo(size: size),
              CardAcessoR(size: size),
              CardChat(size: size),
              CardResumo(size: size),
              CardOfertas(
                size: size,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
