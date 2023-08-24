// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class RankModel {
  final String name;
  final String username;
  final String profileImage;
  final String rank;
  final String noOfSales; 
  RankModel({
    required this.name,
    required this.username,
    required this.profileImage,
    required this.rank,
    required this.noOfSales, 
  });

  RankModel copyWith({
    String? name,
    String? username,
    String? profileImage,
    String? rank,
    String? noOfSales,
  }) {
    return RankModel(
      name: name ?? this.name,
      username: username ?? this.username,
      profileImage: profileImage ?? this.profileImage,
      rank: rank ?? this.rank,
      noOfSales: noOfSales ?? this.noOfSales,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'username': username,
      'profileImage': profileImage,
      'rank': rank,
      'noOfSales': noOfSales,
    };
  }

  factory RankModel.fromMap(Map<String, dynamic> map) {
    return RankModel(
      name: map['name'] as String,
      username: map['username'] as String,
      profileImage: map['profileImage'] as String,
      rank: map['rank'] as String,
      noOfSales: map['noOfSales'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory RankModel.fromJson(String source) =>
      RankModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'RankModel(name: $name, username: $username, profileImage: $profileImage, rank: $rank, noOfSales: $noOfSales)';
  }

  @override
  bool operator ==(covariant RankModel other) {
    if (identical(this, other)) return true;

    return other.name == name &&
        other.username == username &&
        other.profileImage == profileImage &&
        other.rank == rank &&
        other.noOfSales == noOfSales;
  }

  @override
  int get hashCode {
    return name.hashCode ^
        username.hashCode ^
        profileImage.hashCode ^
        rank.hashCode ^
        noOfSales.hashCode;
  }
}
