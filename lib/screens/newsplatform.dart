import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:newsapp/model/newsplatforminfo.dart';
import 'package:newsapp/shared/component/component.dart';

class NewsPlatform extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemBuilder: (BuildContext context, int index) => buildCardNews(
        context,
        url: date[index].url,
        urlImage: date[index].urlImage,
        name: date[index].name,
      ),
      itemCount: date.length,
      gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          crossAxisSpacing: 20,
          mainAxisSpacing: 20,
          maxCrossAxisExtent: 200,
          mainAxisExtent: 200),
    );
  }
}
