import 'package:flutter/material.dart';
import 'package:flutter_pokeball/widgets/app_title.dart';
import 'package:flutter_pokeball/widgets/pokemon_list.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //Telefonu yan çevirdiğimiz zaman, bütün yapının tekrar build edilmesi için "OrientationBuilder" yapısını kullanıyoruz
      body: OrientationBuilder(
        builder: (context, orientation) => Column(
          children: [
            AppTitle(),
            Expanded(child: PokemonList()),
          ],
        ),
      ),
    );
  }
}
