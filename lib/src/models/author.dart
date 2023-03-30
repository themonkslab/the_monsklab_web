import 'dart:convert';

import 'package:equatable/equatable.dart';

class Author extends Equatable {
  const Author({
    required this.name,
    required this.picture,
  });

  factory Author.fromMap(Map<String, dynamic> map) {
    return Author(
      name: map['name'] ?? '',
      picture: map['picture'] ?? '',
    );
  }

  factory Author.fromJson(String source) => Author.fromMap(json.decode(source));
  final String name;
  final String picture;

  @override
  List<Object?> get props => [name, picture];

  Author copyWith({
    String? name,
    String? picture,
  }) {
    return Author(
      name: name ?? this.name,
      picture: picture ?? this.picture,
    );
  }

  Map<String, dynamic> toMap() {
    final result = <String, dynamic>{}
      ..addAll({'name': name})
      ..addAll({'picture': picture});

    return result;
  }

  String toJson() => json.encode(toMap());
}
