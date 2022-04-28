import 'package:flutter/material.dart';
import 'package:gamekrub/models/popular_games_model.dart';

class GameDetailScreen extends StatelessWidget {
  const GameDetailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            left: 0,
            right: 0,
            child: Container(
            width: double.maxFinite,
            height: 250,
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.fill,
                image: NetworkImage(
                  popularGamesList[0].img
                ),
              )
            ),
          ),),
        ],
      ),
    );
  }
}
