import 'package:flutter/material.dart';

class UserModel {
  final String name;
  final String email;
  final String phone;
  final Gender gender;
  final Color color;

  UserModel({
    this.name,
    this.email,
    this.phone,
    this.gender,
    this.color,
  });
}

enum Gender { MALE, FEMALE, OTHER }
