// ignore_for_file: avoid_web_libraries_in_flutter

import 'dart:js';

import 'package:flutter/material.dart';

class Image extends StatefulWidget {
  const Image({super.key, required int image});

  @override
  State<Image> createState() => _ImageState();
}

class _ImageState extends State<Image> {
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }

  Widget buildArtistScreen(BuildContext context, List<Image> image) =>
      GridView.builder(
        // itemCount: ,
        itemBuilder: (context, index) =>
            buildImageCard(index, const Image(image: 8)),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 8,
          crossAxisSpacing: 8,
        ),
      );

  Widget buildImageCard(int index, Image image) => Card(
        margin: EdgeInsets.zero,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
        child: Container(
          margin: const EdgeInsets.all(8),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(Image as String),
                  fit: BoxFit.cover,
                ),
              ),
              child: Align(
                alignment: Alignment.bottomRight,
                child: Container(
                  margin: const EdgeInsets.all(4),
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      color: Theme.of(context as BuildContext).primaryColor,
                      borderRadius: BorderRadius.circular(100)),
                  child: const Icon(
                    Icons.play_arrow,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
        ),
      );
}
