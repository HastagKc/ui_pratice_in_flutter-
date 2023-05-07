import 'package:counter_app/model/todo.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

List<Todo> todos = [
  Todo(datetime: DateTime.now().toString(), label: 'Playing Game'),
  Todo(datetime: DateTime.now().toString(), label: 'Watching Movie'),
  Todo(datetime: DateTime.now().toString(), label: 'Watching Football'),
];

// creating an instance of the TodoProvider

final todoProvider = StateNotifierProvider<TodoProvider, List<Todo>>(
    (ref) => TodoProvider(todos));

class TodoProvider extends StateNotifier<List<Todo>> {
  TodoProvider(super.state);

  void addTodo(Todo todo) {
    state = [...state, todo];
  }

  void removeTodo(Todo todo) {
    state.remove(todo);
    state = [...state];
  }

  void updateTodo(Todo todo) {
    state = [
      for (final t in state) t.datetime == todo.datetime ? todo : t,
    ];
  }
}
