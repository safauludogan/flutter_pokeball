import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_pokeball/constants/constants.dart';
import 'package:flutter_pokeball/model/pokemon_model.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PokeNameType extends StatelessWidget {
  final PokemonModel pokemon;

  const PokeNameType({Key? key, required this.pokemon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      //sh: ekran yüksekliği kadar padding
      padding: EdgeInsets.symmetric(horizontal: 0.05.sh),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Expanded(
                child: Text(
                  pokemon.name ?? '',
                  style: Constants.getPokemonNameTextStyle(),
                ),
              ),
              Text(
                '#${pokemon.num}',
                style: Constants.getPokemonNameTextStyle(),
              ),
            ],
          ),
          SizedBox(
            height: 0.02.sh,
          ),
          Chip(
              label: Text(
            //Listelerde, içeride birden fazla özellik olursa aralarına virgül koy
            pokemon.type?.join(' , ') ?? '',
            style: Constants.getTypeChipTextStyle(),
          )),
        ],
      ),
    );
  }
}
