import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:very_good_coffee/app/app.dart';
import 'package:very_good_coffee/feed/feed.dart';
import 'package:very_good_coffee/injection.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (_) => getIt<FeedBloc>()
            ..add(const FeedEvent.randomCoffeePhotoFetched()),
        ),
        BlocProvider(create: (_) => getIt<FavoriteBloc>()),
      ],
      child: const MainView(),
    );
  }
}

class MainView extends StatelessWidget {
  const MainView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        physics: const BouncingScrollPhysics(),
        onPageChanged: (index) {
          if (index == 1) {
            context.read<FavoriteBloc>().add(const CoffeeLoaded());
          }
        },
        children: const [
          Feed(),
          Favorites(),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => _onFabPressed(context),
        backgroundColor: primaryColor,
        child: const Icon(
          Icons.favorite,
          color: secondaryColor,
        ),
      ),
    );
  }

  void _onFabPressed(BuildContext context) {
    final feedBlocState = context.read<FeedBloc>().state;
    final currentIndex = feedBlocState.currentIndex;
    final coffee = feedBlocState.coffees.toIterable().elementAt(currentIndex);
    context.read<FavoriteBloc>().add(CoffeePhotoSaved(coffee));
  }
}
