class MUPText {

  MUPText({
    this.id,
    this.title,
    this.subtitle,
    this.autor,
    this.text,
  });

  final int id;
  final String title;
  final String subtitle;
  final String autor;
  final String text;

  factory MUPText.fromJson(Map<String, dynamic> json) {
    return MUPText(
      id: json['id'],
      title: json['title'],
      subtitle: json['subtitle'],
      autor: json['author'],
      text: json['text'],
    );
  }
}


