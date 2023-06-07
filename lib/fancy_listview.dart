library fancy_listview;

import 'package:flutter/material.dart';

class FancyListview extends StatelessWidget {
  final double listviewHeight;
  final EdgeInsetsGeometry listItemPadding;
  final Color listItemBackgroundColor;
  final ShapeBorder listItemShape;
  final List<ListTile> widgets;
  const FancyListview(
      {super.key,
      required this.listviewHeight,
      this.listItemPadding = const EdgeInsets.fromLTRB(10, 5, 10, 10),
      this.listItemBackgroundColor = Colors.black,
      this.listItemShape = const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(10.0))),
      required this.widgets});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: listviewHeight,
        child: ListView.builder(
            itemCount: widgets.length,
            itemBuilder: (context, int index) {
              return Column(children: [
                Padding(
                    padding: listItemPadding,
                    child: Card(
                        color: listItemBackgroundColor,
                        shape: listItemShape,
                        borderOnForeground: true,
                        elevation: 5.0,
                        child: Container(
                          alignment: Alignment.center,
                          child: widgets[index],
                        )))
              ]);
            }));
  }
}
