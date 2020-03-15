import 'package:drawer_component/drawer_component.dart';
import 'package:flutter/material.dart';

void main() => runApp(TestDrawer());

class TestDrawer extends StatefulWidget {
  TestDrawer({Key key}) : super(key: key);

  @override
  _TestDrawerState createState() => _TestDrawerState();
}

class _TestDrawerState extends State<TestDrawer> {
  bool checkbox = true;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: new Scaffold(
            appBar: AppBar(
              title: Text("Demo Component"),
            ),
            drawer: new Drawer(
              child: ListView(
                children: <Widget>[
                  DrawerComponent(
                    name: "hello",
                    textOverflow: TextOverflow.ellipsis,
                    child: TestWidget(),
                    leading: Icon(Icons.account_box),
                    trailing: Icon(Icons.adb),
                    tileSize: 10,
                    checkBoxValue: checkbox,
                    tralingSelection: "check",
                    dividerheight: 5,
                    dividerThickness: 1,
                    dividercolor: Colors.black,
                  )
                ],
              ),
            )));
  }
}

class TestWidget extends StatefulWidget {
  TestWidget({Key key}) : super(key: key);

  @override
  _TestWidgetState createState() => _TestWidgetState();
}

class _TestWidgetState extends State<TestWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text("hello world"),
    );
  }
}
