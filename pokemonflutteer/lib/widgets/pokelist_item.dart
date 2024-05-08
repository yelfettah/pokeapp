import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pokemonflutteer/constants/constants.dart';
import 'package:pokemonflutteer/constants/ui_helper.dart';
import 'package:pokemonflutteer/model/pokemonModel.dart';
import 'package:pokemonflutteer/widgets/poke_img_and_ball.dart';

class PokeListItem extends StatelessWidget {
  final PokemonModel pokemon;
  const PokeListItem({super.key, required this.pokemon});

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.w)),
      elevation: 3,
      shadowColor: Colors.white,
      color: Colors.red.shade100,
      child: Padding(
        padding: UIHelper.getDefaultPadding(),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(pokemon.name ?? "N/A", style: Constants.getPokemonNameTextStyle(),),
            Chip(label: Text(pokemon.type![0]), labelStyle: Constants.getTypeChipTextStyle(),),
            Expanded(child: PokeImageAndBall(pokemon :pokemon)),
          ],
        ),
      ),
    );
  }
}
