class Post {
  int userId;
  int id;
  String title;
  String body;

  Post({
    required this.userId,
    required this.id,
    required this.title,
    required this.body,
  });

  factory Post.fromJson(Map<String, dynamic> jsonData) {
    return Post(
      userId: jsonData['userId'],
      id: jsonData['id'],
      title: jsonData['title'],
      body: jsonData['body'],
    );
  }
}
