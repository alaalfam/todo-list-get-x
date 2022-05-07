import 'package:get/get.dart';
import 'package:todo_list_get_x/modules/home/models/todo_model.dart';

class TodoController extends GetxController {
  List<TodoModel> todos = <TodoModel>[].obs;

  void createTodo() {}
}
