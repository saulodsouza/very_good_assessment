import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:very_good_coffee/app/app.dart';
import 'package:very_good_coffee/feed/feed.dart';

class CoffeeCard extends StatelessWidget {
  const CoffeeCard({super.key, required this.coffee});

  final Coffee coffee;

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        image: DecorationImage(
          image: FileImage(File(coffee.localFilePath)),
          fit: BoxFit.cover,
        ),
      ),
      child: Align(
        alignment: Alignment.topRight,
        child: IconButton(
          icon: const Icon(
            Icons.delete_outline_rounded,
            color: primaryColor,
          ),
          style: IconButton.styleFrom(backgroundColor: secondaryColor),
          onPressed: () =>
              context.read<FavoriteBloc>().add(CoffeeDeleted(coffee)),
        ),
      ),
    );
  }
}
