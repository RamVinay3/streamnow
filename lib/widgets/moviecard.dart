import 'package:flutter/material.dart';
import 'package:streamnow/color.dart';
import 'package:streamnow/widgets/category.dart';
import 'package:streamnow/widgets/roboto_text.dart';
import 'package:streamnow/widgets/svg.dart';

class MovieCard extends StatelessWidget {
  const MovieCard(
      {super.key,
      required this.movieName,
      required this.year,
      required this.hours,
      required this.category,
      required this.minutes,
      required this.story,
      required this.imageUrl,
      required this.streamingUrl});
  final String movieName, year, hours, minutes, story, imageUrl, streamingUrl;
  final List<String> category;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image.network(
          imageUrl,
          width: double.infinity,
          height: 250,
          fit: BoxFit.cover,
        ),
        Container(
          padding: EdgeInsets.only(left: 7, right: 7, top: 10),
          color: Colors.white,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextRoboto(
                title: movieName,
                fontsize: 22,
                weight: FontWeight.w700,
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  TextRoboto(
                    title: year,
                    fontsize: 16,
                    color: appColors.subText,
                  ),
                  const SizedBox(
                    width: 14,
                  ),
                  SVG(svgPath: 'lib/svg/clockIcon.svg'),
                  const SizedBox(
                    width: 6,
                  ),
                  TextRoboto(
                    title: '${hours} hr ${minutes} min',
                    fontsize: 16,
                    color: appColors.subText,
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              const TextRoboto(
                title: 'Categories',
                fontsize: 20,
              ),
              const SizedBox(
                height: 10,
              ),
              Wrap(
                children: [for (var genre in category) Category(cat: genre)],
              ),
              const SizedBox(
                height: 10,
              ),
              TextRoboto(
                title: story,
              ),
              const SizedBox(
                height: 10,
              ),
            ],
          ),
        ),
        Container(
          color: appColors.primary,
          height: 50,
          child: const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SVG(svgPath: 'lib/svg/playIcon.svg'),
              SizedBox(
                width: 6,
              ),
              TextRoboto(
                title: 'Play',
                color: Colors.white,
                fontsize: 22,
                weight: FontWeight.w500,
              )
            ],
          ),
        )
      ],
    );
  }
}
