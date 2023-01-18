import 'dart:io';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:photo_view/photo_view.dart';
import 'package:very_good_coffee/app/app.dart';
import 'package:very_good_coffee/feed/bloc/feed_bloc.dart';

class Feed extends StatelessWidget {
  const Feed({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;

    return BlocConsumer<FeedBloc, FeedState>(
      listener: (context, state) {
        final errorMessage = state.errorMessage;

        if (errorMessage.isNotEmpty) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text(errorMessage)),
          );
        }
      },
      builder: (context, state) {
        return CarouselSlider(
          options: CarouselOptions(
            height: height,
            viewportFraction: 1,
            initialPage: context.read<FeedBloc>().state.currentIndex,
            scrollDirection: Axis.vertical,
            enableInfiniteScroll: false,
            onPageChanged: (index, _) => context
                .read<FeedBloc>()
                .add(RandomCoffeePhotoFetched(currentIndex: index)),
          ),
          items: state.coffees
              .map(
                (coffee) => Center(
                  child: PhotoView(
                    backgroundDecoration: const BoxDecoration(
                      color: feedBackground,
                    ),
                    imageProvider: FileImage(File(coffee.localFilePath)),
                  ),
                ),
              )
              .toList(),
        );
      },
    );
  }
}
