import 'package:flutter/material.dart';

class Taglist extends StatefulWidget {
  @override
  _TaglistState createState() => _TaglistState();
}

class _TaglistState extends State<Taglist> {
  final tagsList = <String>['All', '✨ Popular', '🔥Featured', 'Development'];
  var selected = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 18),
      height: 40,
      child: ListView.separated(
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) => GestureDetector(
              onTap: () {
                setState(() {
                  selected = index;
                });
              },
              child: Container(
                decoration: BoxDecoration(
                    color: selected == index
                        ? Theme.of(context).primaryColor.withOpacity(0.2)
                        : Colors.transparent,
                    borderRadius: BorderRadius.circular(30),
                    border: Border.all(
                        color: selected == index
                            ? Colors.transparent
                            : Theme.of(context).primaryColor)),
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: Text(tagsList[index]),
              )),
          separatorBuilder: (_, index) => SizedBox(width: 15),
          itemCount: tagsList.length),
    );
  }
}
