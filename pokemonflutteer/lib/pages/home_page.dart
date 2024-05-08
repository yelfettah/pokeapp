import 'package:flutter/material.dart';
import 'package:pokemonflutteer/widgets/app_title.dart';
import 'package:pokemonflutteer/widgets/pokemon_list.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: OrientationBuilder(
        builder: (context, orientation) => Column(children: [
          AppTitle(),
          Expanded(child: PokemonList())
        ],),
      ),
    );
  }
}
