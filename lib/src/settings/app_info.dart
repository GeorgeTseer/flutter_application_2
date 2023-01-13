import 'package:flutter/material.dart';

class AppInfo extends StatelessWidget {
  const AppInfo({Key? key}) : super(key: key);

  static const routeName = '/info';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('app info'),
      ),
      body: SafeArea(
        child: Column(
          children: [
            const Spacer(),
            Text(
              'App_info',
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
              style: TextStyle(fontSize: 18),
              textAlign: TextAlign.center,
            ),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}
