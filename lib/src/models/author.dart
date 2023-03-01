import 'dart:convert';

import 'package:equatable/equatable.dart';

class Author extends Equatable {
  final String name;
  final String picture;
  const Author({
    required this.name,
    required this.picture,
  });
  
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
    final result = <String, dynamic>{};
  
    result.addAll({'name': name});
    result.addAll({'picture': picture});
  
    return result;
  }

  factory Author.fromMap(Map<String, dynamic> map) {
    return Author(
      name: map['name'] ?? '',
      picture: map['picture'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory Author.fromJson(String source) => Author.fromMap(json.decode(source));
}
