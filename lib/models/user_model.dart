import 'dart:convert';

// ignore_for_file: public_member_api_docs, sort_constructors_first
class UserModel {
  final String profilePic;
  final String email;
  final String name;
  final String uid;
  final String token;
  UserModel({
    required this.profilePic,
    required this.email,
    required this.name,
    required this.uid,
    required this.token,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'profilePic': profilePic,
      'email': email,
      'name': name,
      'uid': uid,
      'token': token,
    };
  }

  factory UserModel.fromMap(Map<String, dynamic> map) {
    return UserModel(
      profilePic: map['profilePic'] as String,
      email: map['email'] as String,
      name: map['name'] as String,
      uid: map['_id'] as String,
      token: map['token'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory UserModel.fromJson(String source) => UserModel.fromMap(json.decode(source) as Map<String, dynamic>);

  UserModel copyWith({
    String? profilePic,
    String? email,
    String? name,
    String? uid,
    String? token,
  }) {
    return UserModel(
      profilePic: profilePic ?? this.profilePic,
      email: email ?? this.email,
      name: name ?? this.name,
      uid: uid ?? this.uid,
      token: token ?? this.token,
    );
  }
}
