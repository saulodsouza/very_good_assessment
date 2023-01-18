import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:very_good_coffee/app/app.dart';
import 'package:very_good_coffee/feed/feed.dart';
import 'package:very_good_coffee/l10n/l10n.dart';

class Favorites extends StatelessWidget {
  const Favorites({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    return ColoredBox(
      color: favoritesBackground,
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              Text(
                l10n.favoritesTitle,
                style: GoogleFonts.sourceSansPro(
                  fontWeight: FontWeight.bold,
                  color: favoritesTitle,
                  fontSize: 40,
                ),
              ),
              BlocConsumer<FavoriteBloc, FavoriteState>(
                listener: (context, state) {
                  state.whenOrNull(
                    deleted: () =>
                        context.read<FavoriteBloc>().add(const CoffeeLoaded()),
                  );
                },
                builder: (context, state) {
                  return state.maybeWhen(
                    orElse: () => const SizedBox.shrink(),
                    loaded: (coffees) => Expanded(
                      child: GridView.count(
                        physics: const ScrollPhysics(),
                        crossAxisCount: 2,
                        crossAxisSpacing: 8,
                        mainAxisSpacing: 8,
                        shrinkWrap: true,
                        children: coffees
                            .toList()
                            .map((Coffee coffee) => CoffeeCard(coffee: coffee))
                            .toList(),
                      ),
                    ),
                    loading: () => const Center(
                      child: CircularProgressIndicator(),
                    ),
                    error: (errorMessage) => Center(
                      child: Text(
                        '${l10n.favoritesErrorMessage} $errorMessage',
                      ),
                    ),
                  );
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
