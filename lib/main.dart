import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ui_trace_2021_10_05/switch_card.dart';
import 'package:ui_trace_2021_10_05/wide_width_button.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {

  static const String testText = '''
  One last thing! You'll need to grant the following app permissions to enable the features you've chosen.
  ''';

  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Spacer(),
            Column(
              children: const [
                Text(
                  'App Permissions',
                  style: TextStyle(
                    fontSize: 36,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 12,
                    right: 12,
                  ),
                  child: Text(
                    testText,
                    style: TextStyle(
                        fontSize: 20
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
            Column(
              children: const [
                SwitchCard(
                    title: '💬 Notifications',
                    description: 'For important activity that takes place in your Cocoon'
                ),
                SwitchCard(
                    title: '🏠Location',
                    description: 'Required to power your map, and precise or city-level updates'
                        ''
                ),
                SwitchCard(
                    title: '💪 Activity',
                    description: 'For important activity that takes place in your Cocoon'
                ),
              ],
            ),
            const Spacer(),
            Padding(
              padding: const EdgeInsets.only(
                left: 24,
                right: 24,
              ),
              child: WideWidthButton(
                text: 'Done',
                textColor: Colors.white,
                backgroundColor: Colors.blue,
                tapped: () {},
              ),
            ),
            const SizedBox(
              height: 44,
            ),
          ],
        ),
      ),
    );
  }
}

