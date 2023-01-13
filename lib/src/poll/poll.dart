import 'package:flutter/material.dart';
import 'package:flutter_application_2/main.dart';
import 'package:flutter_application_2/src/home/grid.dart';
import '/src/source/source.dart';
import '../../main.dart';

class Poll extends StatefulWidget {
  const Poll({Key? key}) : super(key: key);

  static const routeName = '/poll';

  @override
  State<Poll> createState() => _PollState();
}

class _PollState extends State<Poll> {
  PageController? _controller = PageController(initialPage: 0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 2, 77, 114),
        body: Padding(
          padding: EdgeInsets.all(18),
          child: PageView.builder(
            controller: _controller,
            itemCount: 10,
            itemBuilder: (context, index) {
              return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'Question ${index + 1} /10',
                    style: const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w400,
                      fontSize: 30.0,
                    ),
                  ),
                  Divider(
                    color: Colors.white,
                    height: 8,
                    thickness: 1,
                  ),
                  Text(
                    questions[index].question,
                    style: const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w400,
                      fontSize: 20.0,
                    ),
                  ),
                  SizedBox(
                    height: 25.0,
                  ),
                  for (var i = 0; i < questions[index].answer.length; i++)
                    Container(
                      width: double.infinity,
                      margin: EdgeInsets.all(18),
                      child: MaterialButton(
                        shape: StadiumBorder(),
                        color: Colors.blue,
                        padding: EdgeInsets.all(18),
                        onPressed: () {},
                        child: Text(
                          questions[index].answer[i],
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                      ),
                    ),
                  SizedBox(
                    height: 30,
                  ),
                  OutlinedButton(
                    style:
                        OutlinedButton.styleFrom(backgroundColor: Colors.blue),
                    onPressed: index + 1 == 10
                        ? () {
                            reklama();
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => GridViewPage()));
                          }
                        : () {
                            reklama();
                            _controller!.nextPage(
                                duration: Duration(milliseconds: 300),
                                curve: Curves.ease);
                          },
                    child: Text('Next', style: TextStyle(color: Colors.white)),
                  ),
                ],
              );
            },
          ),
        ));
  }
}
