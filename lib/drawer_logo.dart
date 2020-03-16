import 'package:flutter/material.dart';

class DrawerLogo extends StatefulWidget {
  //color
  Color color;
  bool gradientCheck;
  List<double> stops;
  List<Color> gradientColors = [Colors.blue, Colors.white];
  Alignment end;
  Alignment begin;

  // avater
  String circleAvatarImageurl;
  bool checkNetworkAssets;
  double avatarradius;
  Color avatarBackgroundColor;

  // text widgets list
  List<Widget> customTextwidgets;
  bool customTextwidgetsCheck;

  // defult text widget style
  String text;
  FontStyle fontStyle;
  double fontSize;
  Color textColor;
  String fontfamily;

  DrawerLogo({
    Key key,
    @required this.circleAvatarImageurl,
    @required this.checkNetworkAssets,
    @required this.avatarradius,
    this.avatarBackgroundColor = Colors.white,
    this.color = Colors.white,
    this.gradientCheck = false,
    this.stops,
    this.gradientColors,
    this.begin = Alignment.centerLeft,
    this.end = Alignment.centerRight,
    this.customTextwidgets,
    this.customTextwidgetsCheck = false,
    this.text = "",
    this.fontStyle = FontStyle.normal,
    this.fontSize = 20,
    this.textColor = Colors.black,
    this.fontfamily = "roboto",
  })  : assert(circleAvatarImageurl != null),
        assert(checkNetworkAssets != null),
        assert(avatarradius != null);

  @override
  _DrawerLogoState createState() => _DrawerLogoState();
}

class _DrawerLogoState extends State<DrawerLogo> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: widget.gradientCheck ? null : widget.color,
      decoration: widget.gradientCheck
          ? BoxDecoration(
              gradient: LinearGradient(
                  begin: widget.begin,
                  end: widget.end,
                  stops: widget.stops,
                  colors: widget.gradientColors))
          : null,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(top: 50, left: 8),
            child: Row(
              children: <Widget>[
                Flexible(
                  flex: 20,
                  child: Container(
                      child: CircleAvatar(
                    minRadius: widget.avatarradius,
                    maxRadius: widget.avatarradius,
                    backgroundImage: widget.checkNetworkAssets
                        ? NetworkImage(widget.circleAvatarImageurl)
                        : Image.asset(widget.circleAvatarImageurl),
                    backgroundColor: widget.avatarBackgroundColor,
                  )),
                ),
              ],
            ),
          ),
          widget.customTextwidgetsCheck
              ? Column(
                  children: widget.customTextwidgets,
                )
              : Padding(
                  padding: const EdgeInsets.only(top: 30, left: 10, bottom: 20),
                  child: Text(
                    widget.text,
                    style: TextStyle(
                        fontSize: widget.fontSize,
                        fontFamily: widget.fontfamily,
                        color: widget.textColor,
                        fontStyle: widget.fontStyle),
                  ),
                ),
          new Divider()
        ],
      ),
    );
  }
}
