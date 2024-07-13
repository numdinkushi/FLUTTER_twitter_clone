import 'dart:convert';

import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
@immutable

class UserModel {
  final String email;
  final String name;
  final List<String> followers;
  final List<String> following;
  final String profilePicture;
  final String bannerPicture;
  final String userId;
  final String bio;
  final bool isTwitterBlue;
  
 const UserModel({
    required this.email,
    required this.name,
    required this.followers,
    required this.following,
    required this.profilePicture,
    required this.bannerPicture,
    required this.userId,
    required this.bio,
    required this.isTwitterBlue,
  });

  UserModel copyWith({
    String? email,
    String? name,
    List<String>? followers,
    List<String>? following,
    String? profilePicture,
    String? bannerPicture,
    String? userId,
    String? bio,
    bool? isTwitterBlue,
  }) {
    return UserModel(
      email: email ?? this.email,
      name: name ?? this.name,
      followers: followers ?? this.followers,
      following: following ?? this.following,
      profilePicture: profilePicture ?? this.profilePicture,
      bannerPicture: bannerPicture ?? this.bannerPicture,
      userId: userId ?? this.userId,
      bio: bio ?? this.bio,
      isTwitterBlue: isTwitterBlue ?? this.isTwitterBlue,
    );
  }


    Map<String, dynamic> toMap() {
    final result = <String, dynamic>{};

    result.addAll({'email': email});
    result.addAll({'name': name});
    result.addAll({'followers': followers});
    result.addAll({'following': following});
    result.addAll({'profilePicture': profilePicture});
    result.addAll({'bannerPicture': bannerPicture});
    result.addAll({'bio': bio});
    result.addAll({'isTwitterBlue': isTwitterBlue});

    return result;
  }

  factory UserModel.fromMap(Map<String, dynamic> map) {
    return UserModel(
      email: map['email'] ?? '',
      name: map['name'] ?? '',
      followers: List<String>.from(map['followers'] as List),
      following: List<String>.from(map['following'] as List),
      profilePicture: map['profilePicture'] as String,
      bannerPicture: map['bannerPicture'] as String,
      userId: map['\$id'] as String,
      bio: map['bio'] as String,
      isTwitterBlue: map['isTwitterBlue'] as bool,
    );
  }

  @override
  String toString() {
    return 'UserModel(email: $email, name: $name, followers: $followers, following: $following, profilePicture: $profilePicture, bannerPicture: $bannerPicture, userId: $userId, bio: $bio, isTwitterBlue: $isTwitterBlue)';
  }

  @override
  bool operator ==(covariant UserModel other) {
    if (identical(this, other)) return true;
    final listEquals = const DeepCollectionEquality().equals;
  
    return 
      other.email == email &&
      other.name == name &&
      listEquals(other.followers, followers) &&
      listEquals(other.following, following) &&
      other.profilePicture == profilePicture &&
      other.bannerPicture == bannerPicture &&
      other.userId == userId &&
      other.bio == bio &&
      other.isTwitterBlue == isTwitterBlue;
  }

  @override
  int get hashCode {
    return email.hashCode ^
      name.hashCode ^
      followers.hashCode ^
      following.hashCode ^
      profilePicture.hashCode ^
      bannerPicture.hashCode ^
      userId.hashCode ^
      bio.hashCode ^
      isTwitterBlue.hashCode;
  }
}