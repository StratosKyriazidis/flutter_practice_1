import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'button_template.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey[900],
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            CircleAvatar(
              backgroundImage: AssetImage('assets/images/test.jpg'),
              radius: 50.0,
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'Efstratios',
              style: TextStyle(
                fontFamily: 'Amethysta',
                fontSize: 50,
                color: Colors.white,
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              'Soon to be',
              style: TextStyle(
                fontFamily: 'KleeOne',
                fontSize: 26,
                color: Colors.white30,
              ),
            ),
            Divider(
              thickness: 2,
              indent: 100,
              endIndent: 100,
              color: Colors.white30,
            ),
            SizedBox(
              height: 15,
            ),
            Button(
                icon: Icon(
                  Icons.call,
                  color: Colors.black,
                ),
                string: '+30 695 568 9388',
                onTap: call),
            SizedBox(
              height: 10,
            ),
            Button(
                icon: Icon(
                  Icons.mail,
                  color: Colors.black,
                ),
                string: 'stratoskyriazidis@gmail.com',
                onTap: mail),
          ],
        ),
      ),
    );
  }
}

void call() {
  launch('tel: +306955689388');
}

void mail() {
  var address = 'mailto:stratoskyriazidis@gmail.com?body=Hi';
  launch(address);
}
