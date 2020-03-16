# drawer_component

A Flutter implementation of easy useable component used in drawer to design beautiful Applications.

![Drawer Component](DisplayImageLogo.jpg)

## Features

This library will allow you to design the drawer components without any additional hastle. The major type of componnets that could be designed include buttons, icons buttons, widgets, dividers and boolean check buttons. The basic idea is to use this libarary to reduce the coding effort while designing the drawer componnets of your android and IOS applications. New version 0.2.0 include an beautiful logo for Drawer as will the newer version also had fixed issue in ComponentDrawer and updrated it to DrawerTile which is more flexible . Furthermore Logo contains many fetures that cout customize the drawer including the gradient and custom text designing making programmers job easier .

## How to use this Component

### Drawer

![Drawer Component](DisplayImage2.jpg)

```
 DrawerLogo(
                    avatarBackgroundColor: Colors.white,
                    circleAvatarImageurl:
                        "https://i.ytimg.com/vi/sK-8k1Dq1xM/hqdefault.jpg",
                    checkNetworkAssets: true,
                    color: Colors.blue,
                    text: "qwerty",
                    avatarradius: 50,
                  ),
```

### Drawer Tile

![Drawer Component](DisplayImage.jpg)

```
drawer: new Drawer(
    child: ListView(
    children: <Widget>[
            DrawerTile(
                    name: "call",
                    textOverflow: TextOverflow.ellipsis,
                    child: TestWidget(),
                    leading: Icon(Icons.call),
                    tileSize: 10,
                    dividerheight: 5,
                    dividerThickness: 1,
                    dividercolor: Colors.black,
                  ),
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
