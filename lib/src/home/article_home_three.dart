import 'package:flutter/material.dart';
import 'package:flutter_application_2/src/home/article_three.dart';

import '../../main.dart';
import '../source/image_container.dart';
import '../source/source.dart';
import 'article.dart';

class HomeArticleThree extends StatelessWidget {
  const HomeArticleThree({Key? key}) : super(key: key);
  static const routeName = '/article3';
  final index = 1;
  @override
  Widget build(BuildContext context) {
    Article article = Article.articles3[0];
    return Scaffold(
      appBar: AppBar(),
      extendBodyBehindAppBar: true,
      body: ListView(
        children: [
          _newsOfArticle(article: article),
          _ListOfArticles(articles: Article.articles3),
        ],
      ),
    );
  }
}

class _ListOfArticles extends StatelessWidget {
  const _ListOfArticles({
    Key? key,
    required this.articles,
  }) : super(key: key);
  final List<Article> articles;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Articles",
                style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          SizedBox(
            height: 250,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: articles.length,
              itemBuilder: (contex, index) {
                return Container(
                  margin: const EdgeInsets.only(right: 10),
                  child: InkWell(
                    onTap: () {
                      reklama();
                      Navigator.pushNamed(
                        context,
                        ArticleScreenThree.routeName,
                        arguments: articles[index],
                      );
                    },
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ImageContainer(
                          width: MediaQuery.of(context).size.width * 0.4,
                          image: articles[index].image,
                        ),
                        Text(
                          articles[index].title,
                          maxLines: 3,
                          style: Theme.of(context)
                              .textTheme
                              .bodyLarge!
                              .copyWith(
                                  fontWeight: FontWeight.bold, height: 1.4),
                        )
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

class _newsOfArticle extends StatelessWidget {
  const _newsOfArticle({
    Key? key,
    required this.article,
  }) : super(key: key);

  final Article article;

  @override
  Widget build(BuildContext context) {
    return ImageContainer(
      image: article.image,
      width: double.infinity,
      height: MediaQuery.of(context).size.height * 0.45,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 10,
          ),
          Text(article.title,
              style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                    fontWeight: FontWeight.bold,
                    height: 1.25,
                    color: Colors.amber,
                  )),
          TextButton(
            onPressed: () {
              reklama();
            },
            child: Text('кнопочка',
                style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                      fontWeight: FontWeight.bold,
                      height: 1.25,
                      color: Colors.amber,
                    )),
          )
        ],
      ),
    );
  }
}
