
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:pokemonflutteer/model/pokemonModel.dart';

class PokeImageAndBall extends StatelessWidget {
  PokemonModel pokemon;
   PokeImageAndBall({super.key, required this.pokemon});
  String pokeballImage = "images/pokeball.png";
  @override
  Widget build(BuildContext context) {
    return  Stack(
      children: [Image.asset(pokeballImage),
      CachedNetworkImage(imageUrl:  pokemon.img ?? '')],
    );
  }
}
