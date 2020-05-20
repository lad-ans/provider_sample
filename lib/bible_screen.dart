import 'package:flutter/material.dart';
import 'package:hello_world/bible_controller.dart';
import 'package:hello_world/bible_model.dart';
import 'package:provider/provider.dart';

class BibleScreen extends StatelessWidget {
  _buildListItem(BibleModel bibleModel, context) {
    BibleController bibleController = Provider.of<BibleController>(context);
    return ListTile(
      onTap: () {
        bibleController.checkFavorite(bibleModel);
      },
      leading: Image.asset(bibleModel.image),
      title: Text(bibleModel.bookName),
      subtitle: Text(bibleModel.message),
      trailing: bibleModel.isFavorite
          ? Icon(Icons.star, color: Colors.amber)
          : Icon(Icons.star_border),
    );
  }

  _buildList(BibleController bibleController, context) {
    BibleController bibleController = Provider.of<BibleController>(context);
    return ListView.builder(
      itemCount: bibleController.bible.length,
      itemBuilder: (_, index) {
        return _buildListItem(bibleController.bible[index], context);
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Consumer<BibleController>(
            builder: (context, bibleController, widget) {
          return Center(
            child: Text(
              "${bibleController.bible.where(
                (i) {
                  return i.isFavorite;
                },
              ).length}",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.bold),
            ),
          );
        }),
        title: Text("Provider Tutorial"),
      ),
      body: Consumer<BibleController>(
          builder: (context, bibleController, widget) {
        return _buildList(bibleController, context);
      }),
    );
  }
}
