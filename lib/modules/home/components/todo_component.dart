import 'package:flutter/material.dart';

import 'package:todo_list_get_x/modules/home/models/todo_model.dart';

class TodoComponent extends StatelessWidget {
  final TodoModel todoModel;
  final TextEditingController titleController;
  final void Function(bool?)? onChanged;
  final void Function()? onDelete;

  const TodoComponent({
    Key? key,
    required this.todoModel,
    required this.titleController,
    this.onChanged,
    this.onDelete,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Row(
        children: [
          Checkbox(
            value: todoModel.isChecked,
            onChanged: onChanged,
          ),
          const SizedBox(
            width: 8,
          ),
          Expanded(
            child: TextField(
              controller: titleController,
              decoration: const InputDecoration(hintText: 'List item'),
            ),
          ),
          const SizedBox(
            width: 8,
          ),
          IconButton(
            onPressed: onDelete,
            icon: const Icon(
              Icons.close_sharp,
            ),
          )
        ],
      ),
    );
  }
}
