import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:sos_express_flutter_version/app_consts.dart';
import 'package:toast/toast.dart';

class IntroScreen extends StatelessWidget {
  // Lista de páginas da introdução
  List<PageViewModel> listPageViewModel = [
    PageViewModel(
      titleWidget: Text(
        "Seu veículo quebrou?",
        style: TextStyle(color: Colors.white, fontSize: 18.0),
      ),
      bodyWidget: Text(
        "Agora chegou a solução para esse problema, e ele está na palma da sua mão, apenas um toque!",
        style: TextStyle(color: Colors.white),
        textAlign: TextAlign.center,
      ),
      decoration: PageDecoration(
        pageColor: appPrimaryColor,
      ),
      image: Padding(
        padding: const EdgeInsets.only(top: 100.0),
        child: Center(
          child: Image.asset(
            'assets/images/carro_quebrado.png',
            height: 150.0,
          ),
        ),
      ),
    ),
    PageViewModel(
      titleWidget: Text(
        "É muito simples",
        style: TextStyle(color: Colors.black87, fontSize: 18.0),
      ),
      bodyWidget: Text(
        "Você só precisa clicar em um dos pontos no mapa de uma oficina mais próxima a você, preencher com os dados do veículo e pronto, é só aguardar o socorro.",
        style: TextStyle(color: Colors.black87),
        textAlign: TextAlign.center,
      ),
      decoration: PageDecoration(pageColor: appGreenColor),
      image: AnimatedPadding(
        curve: Curves.linear,
        duration: Duration(microseconds: 500),
        padding: const EdgeInsets.only(top: 100.0),
        child: Center(
          child:
              Image.asset("assets/images/arte_mapa_intro.png", height: 150.0),
        ),
      ),
    ),
    PageViewModel(
      titleWidget: Text(
        "Tem uma oficina?",
        style: TextStyle(color: Colors.white, fontSize: 18.0),
      ),
      bodyWidget: Text(
        "Cadastre-a e prepare-se para receber solicitações de clientes inúmeras vezes ao dia",
        style: TextStyle(color: Colors.white),
        textAlign: TextAlign.center,
      ),
      decoration: PageDecoration(pageColor: appRedColor),
      image: AnimatedPadding(
        curve: Curves.linear,
        duration: Duration(microseconds: 500),
        padding: const EdgeInsets.only(top: 100.0),
        child: Center(
          child:
              Image.asset("assets/images/singup.png", height: 500.0,),
        ),
      ),
    ),
  ];

  @override
  build(BuildContext context) {
    return IntroductionScreen(
      
      pages: listPageViewModel,
      onDone: () {
        Toast.show("Introdução finalizada", context,
            duration: Toast.LENGTH_SHORT, gravity: Toast.BOTTOM);
      },
      done: const Text("Done", style: TextStyle(fontWeight: FontWeight.w600)),
      dotsDecorator: DotsDecorator(
        size: const Size.square(10.0),
        activeSize: const Size(20.0, 10.0),
        activeColor: Colors.white,
        color: Colors.grey.shade300,
        spacing: const EdgeInsets.symmetric(horizontal: 3.0),
        activeShape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(25.0)),
      ),
     isProgress: true,
      next: ClipOval(
        child: Material(
          color: Colors.blue.shade200.withOpacity(0.3), // button color
          child: SizedBox(
            width: 30.0,
            height: 30.0,
            child: Icon(
              Icons.arrow_forward_ios,
              color: Colors.white,
              size: 15.0,
            ),
          ),
        ),
      ),
      
      
    );
  }
}
