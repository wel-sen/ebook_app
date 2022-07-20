class Book {
  String type;
  String name;
  String publisher;
  DateTime date;
  String imgUrl;
  num score;
  num rating;
  String review;
  num height;
  Book(this.type, this.name, this.publisher, this.date, this.imgUrl, this.score,
      this.rating, this.review, this.height);

  static List<Book> generateBooks() {
    return [
      Book(
        'Hostory',
        'Always forgive your enemies,\nnothing annoys. ',
        'iStudio',
        DateTime(2019, 3, 23),
        'assets/images/book1.jpeg',
        4.7,
        892,
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum',
        449.0,
      ),
      Book(
        'Black Widow',
        'This is the way how Man City has won the trophy',
        'Marvel',
        DateTime(2019, 3, 23),
        'assets/images/book2.jpeg',
        4.7,
        892,
        "I can't wait to read the second part.",
        320.0,
      ),
      Book(
        'Salvation 404',
        'This is the way',
        'DC Comic',
        DateTime(2019, 3, 23),
        'assets/images/book3.jpeg',
        4.7,
        892,
        'What an outstanding work of art is it.',
        380.0,
      ),
      Book(
        'Salvation 404',
        'This is the way',
        'iStudio',
        DateTime(2019, 3, 23),
        'assets/images/book4.jpeg',
        4.7,
        892,
        'bla bla bla bla',
        331.0,
      ),
      Book(
        'Salvation 404',
        'This is the way',
        'iStudio',
        DateTime(2019, 3, 23),
        'assets/images/book5.jpeg',
        4.7,
        892,
        'bla bla bla bla',
        450.0,
      ),
    ];
  }
}
