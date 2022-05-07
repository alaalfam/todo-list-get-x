import 'package:flutter/material.dart';

class TodoModel {
  final UniqueKey id = UniqueKey();
  final bool isChecked;
  final String title;
  final String text;
  final TextEditingController titleController = TextEditingController();
  final TextEditingController textController = TextEditingController();

  TodoModel({
    this.isChecked = false,
    required this.title,
    required this.text,
  });
}
