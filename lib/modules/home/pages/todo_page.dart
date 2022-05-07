import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:todo_list_get_x/modules/home/components/todo_component.dart';
import 'package:todo_list_get_x/modules/home/states/todo_controller.dart';

class TodoPage extends StatelessWidget {
  const TodoPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final todoController = Get.put(TodoController());
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Todo list'),
      ),
      body: Obx(
        () => ListView.separated(
          itemCount: todoController.todos.length,
          itemBuilder: (context, index) => TodoComponent(
            titleController: todoController.todos[index].titleController,
            todoModel: todoController.todos[index],
          ),
          separatorBuilder: (BuildContext context, int index) => Container(
            margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
            height: 2,
            color: Colors.black45,
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        elevation: 10,
        onPressed: todoController.createTodo,
        backgroundColor: Colors.white,
        child: Icon(
          Icons.add,
          color: Theme.of(context).colorScheme.primary,
          size: 45,
        ),
      ),
    );
  }
}
