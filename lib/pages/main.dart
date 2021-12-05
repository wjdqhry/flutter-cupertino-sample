import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        backgroundColor: CupertinoColors.white,
        middle: Text('Sample Code', style: TextStyle(color: Colors.black),),
        trailing: CupertinoButton(
            padding: EdgeInsets.all(10),
            child: Text("Click me"),
            onPressed: () {
              Navigator.of(context)
                  .push(CupertinoPageRoute(builder: (_) => const SubPage()));
            }),
      ),
      child: const Center(
          child: Text(
        "hello~",
        style: TextStyle(fontSize: 12, color: Colors.black),
      )),
    );
  }
}

class SubPage extends StatefulWidget {
  const SubPage({Key? key}) : super(key: key);

  @override
  _SubPageState createState() => _SubPageState();
}

class _SubPageState extends State<SubPage> {
  @override
  Widget build(BuildContext context) {
    return const CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        backgroundColor: CupertinoColors.white,
        middle: Text('fcking flutter', style: TextStyle(color: Colors.black),),
      ),
      child: Center(child: Text("HOW NATURAL")),
    );
  }
}
