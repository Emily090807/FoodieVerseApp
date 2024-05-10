class Recipe {
  final String name;
  final String imageUrl;
  final String videoId;
  final List<String> instructions;

  Recipe({
    required this.name,
    required this.videoId,
    required this.imageUrl,
    required this.instructions,
  });

  factory Recipe.fromJson(Map<String, dynamic> json) {
    return Recipe(
      name: json['name'],
      videoId: json['videoId'],
      imageUrl: json['imageUrl'],
      instructions: List<String>.from(json['instructions']),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'videoId': videoId,
      'imageUrl': imageUrl,
      'instructions': instructions,
    };
  }
}