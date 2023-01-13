import 'package:flutter/material.dart';

class Policy extends StatelessWidget {
  const Policy({Key? key}) : super(key: key);

  static const routeName = '/policy';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('policy'),
      ),
      body: SafeArea(
        child: Column(
          children: [
            const Spacer(),
            Text(
              'policy',
              style: Theme.of(context)
                  .textTheme
                  .headline5!
                  .copyWith(fontWeight: FontWeight.w500),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 16,
            ),
            Text(
              'asjdhskjdhlsacahsdlJASHDLAJSNjkdj',
              style: TextStyle(fontSize: 23),
              textAlign: TextAlign.center,
            ),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}
