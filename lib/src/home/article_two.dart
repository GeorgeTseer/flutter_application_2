import 'package:flutter/material.dart';

import '../source/image_container.dart';
import '../source/source.dart';

class ArticleScreenTwo extends StatelessWidget {
  const ArticleScreenTwo({Key? key}) : super(key: key);
  static const routeName = '/articleTwo';
  @override
  Widget build(BuildContext context) {
    final article = ModalRoute.of(context)!.settings.arguments as Article;
    return ImageContainer(
      width: double.infinity,
      image: article.image,
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        extendBodyBehindAppBar: true,
        body: ListView(
          children: [
            _Head(
              article: article,
            ),
            Container(
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(10)),
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: [
                  Text(article.subtitle,
                      style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                            fontWeight: FontWeight.bold,
                            color: const Color.fromARGB(255, 11, 9, 3),
                          )),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _Head extends StatelessWidget {
  const _Head({Key? key, required this.article}) : super(key: key);
  final Article article;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(20.0),
      child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.1,
            ),
            CustomTag(
              backgroundColor: Colors.grey.withAlpha(150),
              children: [
                Text(
                  article.category,
                  style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                        color: Colors.amber,
                      ),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Text(article.title,
                style: Theme.of(context).textTheme.headline2!.copyWith(
                      fontWeight: FontWeight.bold,
                      height: 1.5,
                      color: Colors.amber,
                    )),
            const SizedBox(
              height: 20,
            ),
          ]),
    );
  }
}
