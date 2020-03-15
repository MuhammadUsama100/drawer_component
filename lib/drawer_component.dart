library drawer_component;

import 'package:flutter/material.dart';

class DrawerComponent extends StatefulWidget {
  String name;
  Widget child;
  bool divideravailabilityCheck;
  double dividerheight;
  double dividerThickness;
  Color dividercolor;
  Key dividerkey;
  Widget trailing;
  double textSize;
  FontStyle fontStyle;
  String tralingSelection;
  double tileSize;
  Widget leading;
  FontWeight fontWeight;
  bool checkBoxValue;
  Color textColor;
  TextOverflow textOverflow;
  int maxline;
  Function onChangeFuncCheckbox;
  String fontfamily;
  DrawerComponent(
      {@required this.name,
      @required this.child,
      @required this.tileSize,
      @required this.textOverflow,
      this.trailing,
      this.fontfamily = "roboto",
      this.checkBoxValue = false,
      this.leading,
      this.textSize = 14,
      this.textColor = Colors.black,
      this.tralingSelection = "Icon",
      this.maxline = 1,
      this.dividerheight = 10,
      this.dividerThickness = 2,
      this.fontStyle = FontStyle.normal,
      this.dividerkey,
      this.onChangeFuncCheckbox,
      this.fontWeight = FontWeight.normal,
      this.divideravailabilityCheck =
          true, //  If you required a divider set it True otherwise set it False
      this.dividercolor})
      : assert(name != null),
        assert(child != null),
        assert(tileSize != null),
        assert(textOverflow != null),
        assert(divideravailabilityCheck != null);

  @override
  _DrawerComponentState createState() => _DrawerComponentState();
}

class _DrawerComponentState extends State<DrawerComponent> {
  @override
  Widget build(BuildContext context) {
    return new Wrap(
      children: <Widget>[
        new InkWell(
            onTap: () {
              Navigator.push(context,
                  new MaterialPageRoute(builder: (context) => widget.child));
            },
            child: Padding(
              padding: EdgeInsets.only(
                  top: widget.tileSize, bottom: widget.tileSize),
              child: new ListTile(
                  leading: widget.leading,
                  title: new Text(
                    widget.name,
                    maxLines: widget.maxline,
                    overflow: widget.textOverflow,
                    style: TextStyle(
                        fontSize: widget.textSize,
                        fontWeight: widget.fontWeight,
                        fontFamily: widget.fontfamily,
                        color: widget.textColor,
                        fontStyle: widget.fontStyle),
                  ),
                  trailing: widget.tralingSelection == "Icon"
                      ? widget.trailing
                      : Checkbox(
                          value: widget.checkBoxValue,
                          onChanged: (val) {
                            setState(() {
                              widget.checkBoxValue = val;
                            });
                          })),
            )),
        widget.divideravailabilityCheck
            ? new Divider(
                height: widget.dividerheight,
                thickness: widget.dividerThickness,
                color: widget.dividercolor,
                key: widget.key)
            : new Container(),
      ],
    );
  }
}
