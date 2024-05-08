import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pokemonflutteer/constants/constants.dart';
import 'package:pokemonflutteer/constants/ui_helper.dart';

class AppTitle extends StatefulWidget {
  const AppTitle({super.key});

  @override
  State<AppTitle> createState() => _AppTitleState();
}

class _AppTitleState extends State<AppTitle> {
  String _pokeballImageUrl = "images/pokeball.png";
  @override
  Widget build(BuildContext context) {
    return SizedBox(
    
      height: UIHelper.getAppTitleWidgetHeight(),
      child: Stack(
        children: [
          Padding(
            padding:  UIHelper.getDefaultPadding(),
            child: Align(
              child: Text(
                Constants.title,
                style: Constants.getTitleTextStyle(),
              ),
              alignment: Alignment.centerLeft,
            ),
          ),
          Align(
            child: Image.asset(
              _pokeballImageUrl,
              width: ScreenUtil().orientation   == Orientation.portrait ? 0.2.sh : 0.2.sw,
           
              fit: BoxFit.fitWidth,
            ),
            alignment: Alignment.topRight,
          )
        ],
      ),
    );
  }
}
