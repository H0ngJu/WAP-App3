class Book{
  final String title;
  final String keyword;
  final String poster;
 // final bool like; 찜기능

  Book.fromMap(Map<String, dynamic> map)
  :title = map['title'],
  keyword = map['keyword'],
  poster = map['poster'];
  // like = map['like']; 찜기능능
  @override
  String toString() => "Movie<$title:$keyword>";
}