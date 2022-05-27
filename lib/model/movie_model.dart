class MovieModel {
  final int id;
  final String urlPoster;
  final String title;
  final String duration;

  const MovieModel({
    required this.id,
    required this.urlPoster,
    required this.title,
    required this.duration,
  });

  factory MovieModel.fromJson(Map<String, dynamic> json) {
    return MovieModel(
      id: json['id'],
      urlPoster: json['urlPoster'],
      title: json['title'],
      duration: json['duration'],
    );
  }
}