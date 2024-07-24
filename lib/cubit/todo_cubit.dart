import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo/models/todo_models.dart';

class TodoCubit extends Cubit<List<Todo>> {
  TodoCubit() : super([]);
  void addTodo(String title) {
    if (title.isEmpty) {
      addError("Title cannot be empty");
      return;
    }
    final todo = Todo(name: title, createdAt: DateTime.now());
    emit([...state, todo]);
  }
}
