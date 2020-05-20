class BibleModel {
  final String bookName;
  final String author;
  final String message;
  final String image;
  bool isFavorite;

  BibleModel(
      {this.bookName,
      this.author,
      this.message,
      this.isFavorite = false,
      this.image});
}
