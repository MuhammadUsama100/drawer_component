# drawer_component

A Flutter implementation of easy useable component used in drawer to design beautiful Applications.

![Drawer Component](DisplayImage.jpg | height = 30 )

## Features

This library will allow you to design the drawer components without any additional hastle. The major type of componnets that could be designed include buttons, icons buttons, widgets, dividers and boolean check buttons. The basic idea is to use this libarary to reduce the coding effort while designing the drawer componnets of your android and IOS applications.

## How to use this Component

```
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
            tralingSelection: "Icon",
            dividerheight: 5,
            dividerThickness: 1,
            dividercolor: Colors.black,
                  )
                ],
        ),
);

```

## geting started

1. Add this to your package's pubspec.yaml file:

```
dependencies:
  drawer_component: ^0.0.1

```

2. Install it
   You can install packages from the command line:
   with Flutter:

```
$ flutter pub get

```

Alternatively, your editor might support flutter pub get. Check the docs for your editor to learn more.

3. Import it
   Now in your Dart code, you can use:

```
import 'package:flutter_slidable/flutter_slidable.dart';
```
