class Post {
  final int userId;
  final int id;
  final String title;
  final String body;
  final String description;

  Post(
      {required this.userId,
      required this.id,
      required this.title,
      required this.body,
      required this.description});

  factory Post.fromJson(Map<String, dynamic> json) {
    return Post(
        userId: json['userId'],
        id: json['id'],
        title: json['title'],
        description: json['description'],
        body: json['body']);
  }
}
