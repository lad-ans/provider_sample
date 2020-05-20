import 'package:flutter/widgets.dart';
import 'package:hello_world/bible_model.dart';
import 'package:hello_world/const.dart';

class BibleController extends ChangeNotifier {
  List<BibleModel> bible = [
    BibleModel(
      image: Const.jhon,
      bookName: "Gospel of Jhon",
      author: "Apostle Jhon",
      message: "Jesus is the Son of God",
    ),
    BibleModel(
        image: Const.paul,
        bookName: "Romans",
        author: "Apostle Paul",
        message: "We are save by Grace only"),
    BibleModel(
        image: Const.paul,
        bookName: "Galatians",
        author: "Apostle Paul",
        message: "Depart from you all works to be recommended to God"),
    BibleModel(
        image: Const.jhon,
        bookName: "Revelation",
        author: "Apostle Jhon",
        message: "The World Sinopsis"),
    BibleModel(
        image: Const.paul,
        bookName: "Hebrews",
        author: "Apostle Paul",
        message: "God speak today by His Son"),
  ];

  checkFavorite(BibleModel bibleModel) {
    bibleModel.isFavorite = !bibleModel.isFavorite;
    notifyListeners();
  }
}
