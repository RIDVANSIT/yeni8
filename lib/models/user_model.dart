import 'package:flutter/material.dart';

class UserModel {
  String name;
  String iconPath;
  Color boxColor;

  UserModel({
    required this.name,
    required this.iconPath,
    required this.boxColor,
  });

  static List<UserModel> getCategories() {
    List<UserModel> categories = [];

    categories.add(UserModel(
        name: 'Salad',
        iconPath: 'assets/icons/plate.svg',
        boxColor: const Color(0xff9DCEFF)));

    categories.add(UserModel(
        name: 'Cake',
        iconPath: 'assets/icons/pancakes.svg',
        boxColor: const Color(0xffEEA4CE)));

    categories.add(UserModel(
        name: 'Pie',
        iconPath: 'assets/icons/pie.svg',
        boxColor: const Color(0xff9DCEFF)));

    categories.add(UserModel(
        name: 'Smoothies',
        iconPath: 'assets/icons/orange-snacks.svg',
        boxColor: const Color(0xffEEA4CE)));

    return categories;
  }
}
