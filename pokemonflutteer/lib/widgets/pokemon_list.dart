import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pokemonflutteer/model/pokemonModel.dart';
import 'package:pokemonflutteer/services/pokemon_api.dart';
import 'package:pokemonflutteer/widgets/pokelist_item.dart';

class PokemonList extends StatefulWidget {
  const PokemonList({super.key});

  @override
  State<PokemonList> createState() => _PokemonListState();
}

class _PokemonListState extends State<PokemonList> {
  @override
  void initState() {
    super.initState();
    _pokemonListFuture = PokeApi.getPokemonData();
  }

  late Future<List<PokemonModel>> _pokemonListFuture;
  Widget build(BuildContext context) {
    return FutureBuilder<List<PokemonModel>>(
      future: _pokemonListFuture,
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          List<PokemonModel> _listem = snapshot.data!;
          return GridView.builder(
            gridDelegate:  SliverGridDelegateWithFixedCrossAxisCount
              (crossAxisCount: ScreenUtil().orientation == Orientation.portrait ? 2:3), itemBuilder: (context, index) => PokeListItem(pokemon: _listem[index]),
              
            );
           
        } else if (snapshot.hasError) {
          return Center(
            child: Text("Hata çıktı :("),
          );
        } else {
          return Center(
            child: CircularProgressIndicator(),
          );
        }
      },
    );
  }
}