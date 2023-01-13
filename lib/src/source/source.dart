import 'package:equatable/equatable.dart';

//Наполнение Онбординга
class OnBoard {
  final String image, title, description;

  OnBoard(
      {required this.image, required this.title, required this.description});
}

final List<OnBoard> demo_data = [
  OnBoard(
      image: 'assets/images/asd.webp',
      title: 'Welcome',
      description: 'Text what u want'),
  OnBoard(
      image: 'assets/images/images.jpeg',
      title: 'our posts',
      description: 'read our posts'),
  OnBoard(
      image: 'assets/images/Portrait_authority.webp',
      title: 'our soundboard',
      description: 'listen the sounds'),
];

//Наполнение опроса
List<Question> questions = [
  Question('what?', ['21123', '12123', 'a2sda', '121']),
  Question('what2?', ['24в1', '1фыв2', 'asфda', '1а2']),
  Question('what3?', ['23ч1', '1ч22', 'asс2da', '1м22']),
  Question('what4?', ['и421', 'правда', 'неправда', '12']),
  Question('what5?', ['да', 'скорее да', 'нет', 'скорее нет']),
  Question('are you wining sun?', ['Yes', 'No', 'IDK', 'maybe']),
  Question('are you wining sun?', ['Yes', 'No', 'IDK', 'maybe']),
  Question('what8?', ['21', '12', 'asda', '12']),
  Question('what9?', ['21', '12', 'asda', '12']),
  Question('are you wining sun?', ['Yes', 'No', 'IDK', 'maybe']),
];

class Question {
  String question;
  List<String> answer;
  Question(this.question, this.answer);
}

//наполнение статей

class Article extends Equatable {
  final String title;
  final String subtitle;
  final String image;
  final String category;
  const Article(this.title, this.subtitle, this.image, this.category);
  @override
  List<Object?> get props => [];

  static const List<Article> articles = [
    Article('1234', 'fsdfsdf', 'assets/images/images-7.jpeg', 'category'),
    Article('4123', 'fsdfsdf', 'assets/images/images-4.jpeg', 'category NAME'),
    Article('123', 'fsdfsdf', 'assets/images/images-6.jpeg', 'CATEGORY name'),
    Article('123', 'fsdfsdf', 'assets/images/images-5.jpeg', 'category name'),
  ];
  static const List<Article> articles2 = [
    Article('sdfsf', 'fsdfxcvxcsdf', 'assets/images/Portrait_empathy.webp',
        'category'),
    Article('sfsdds', 'fsdfxcvxsdf',
        'assets/images/Portrait_conceptualization_rank1.webp', 'category NAME'),
    Article('123', 'fsdfsdf', 'assets/images/Portrait_authority.webp',
        'CATEGORY name'),
    Article('123', 'fsdfsdf', 'assets/images/images.jpeg', 'category name'),
  ];
  static const List<Article> articles3 = [
    Article(
        '1234', 'fsdfsdf', 'assets/images/Portrait_authority.webp', 'category'),
    Article('4123', 'fsdfsdf',
        'assets/images/f247cd1e485992425e5e77d1b587a24e.jpg', 'category NAME'),
    Article(
        '123',
        'fsdfsdf',
        'assets/images/e5b6dfc030ab22d9b633130a68be03d3_2bb8df8b870e787b7167a69f18e5d15b.webp',
        'CATEGORY name'),
    Article('123', 'fsdfsdf', 'assets/images/asd.webp', 'category name'),
  ];
  static const List<Article> articles4 = [
    Article('1234', 'fsdfsdf', 'assets/images/images-7.jpeg', 'category'),
    Article('123', 'fsdfsdf', 'assets/images/images-5.jpeg', 'category name'),
    Article('4123', 'fsdfsdf', 'assets/images/images-4.jpeg', 'category NAME'),
    Article('123', 'fsdfsdf', 'assets/images/images-6.jpeg', 'CATEGORY name'),
  ];
  static const List<Article> articles5 = [
    Article('1234', 'fsdfsdf', 'assets/images/images-7.jpeg', 'category'),
    Article('4123', 'fsdfsdf', 'assets/images/images-4.jpeg', 'category NAME'),
    Article('123', 'fsdfsdf', 'assets/images/images-6.jpeg', 'CATEGORY name'),
    Article('123', 'fsdfsdf', 'assets/images/images-5.jpeg', 'category name'),
  ];
}
