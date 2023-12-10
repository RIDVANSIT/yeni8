import 'package:flutter/material.dart';
import 'package:yeni8/gen/assets.gen.dart';

class UserModel {
  String name;
  Image userPic;
  Color boxColor;

  UserModel({
    required this.name,
    required this.userPic,
    required this.boxColor,
  });

  static List<UserModel> getCategories() {
    List<UserModel> categories = [];

    categories.add(UserModel(
        name: 'ali',
        userPic: Assets.images.round.image(scale: 2),
        boxColor: Color.fromARGB(255, 255, 255, 255)));

    categories.add(UserModel(
        name: 'veli',
         userPic: Assets.images.round2.image(scale: 2),
        boxColor: Color.fromARGB(255, 255, 255, 255)));

    categories.add(UserModel(
        name: 'şevket',
         userPic: Assets.images.round2.image(scale: 2),
        boxColor: Color.fromARGB(255, 255, 255, 255)));

    categories.add(UserModel(
        name: 'trt',
         userPic: Assets.images.round.image(scale: 2),
        boxColor: Color.fromARGB(255, 255, 255, 255)));
        categories.add(UserModel(
        name: 'Salfdad',
        userPic: Assets.images.round.image(scale: 2),
        boxColor: Color.fromARGB(255, 255, 255, 255)));

    categories.add(UserModel(
        name: 'rt',
         userPic: Assets.images.round2.image(scale: 2),
        boxColor: Color.fromARGB(255, 255, 255, 255)));

    categories.add(UserModel(
        name: 'htrhtr',
         userPic: Assets.images.round2.image(scale: 2),
        boxColor: Color.fromARGB(255, 255, 255, 255)));

    categories.add(UserModel(
        name: 'fdvf',
         userPic: Assets.images.round.image(scale: 2),
        boxColor: Color.fromARGB(255, 255, 255, 255)));

    return categories;
  }
}
