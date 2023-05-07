import 'package:counter_app/model/todo.dart';
import 'package:counter_app/providers/todo_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:get/get_core/get_core.dart';
import 'package:get/get_navigation/get_navigation.dart';

class TodoPage extends StatelessWidget {
  TodoPage({super.key});

  final todoController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Consumer(
          builder: (context, ref, child) {
            final todos = ref.watch(todoProvider);
            return Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  TextFormField(
                    controller: todoController,
                    onFieldSubmitted: (value) {
                      final newTodo = Todo(
                        datetime: DateTime.now().toString(),
                        label: value,
                      );
                      ref.read(todoProvider.notifier).addTodo(newTodo);
                      todoController.clear();
                    },
                    keyboardType: TextInputType.text,
                    decoration: const InputDecoration(
                      label: Text('Add New Todo '),
                    ),
                  ),
                  Expanded(
                    child: ListView.builder(
                      itemCount: todos.length,
                      itemBuilder: (context, index) {
                        final todo = todos[index];
                        return Card(
                          elevation: 2,
                          child: ListTile(
                            title: Text(
                              todo.label,
                            ),
                            subtitle: Text(
                              todo.datetime.toString(),
                            ),
                            trailing: Container(
                              width: 98,
                              child: Row(
                                children: [
                                  IconButton(
                                    onPressed: () {
                                      Get.defaultDialog(
                                        title: 'Edit',
                                        content: Container(
                                          child: Column(
                                            children: [
                                              TextFormField(
                                                initialValue: todo.label,
                                                onFieldSubmitted: (val) {
                                                  Navigator.of(context).pop();
                                                  final newTodo = Todo(
                                                      datetime: todo.datetime,
                                                      label: val);
                                                  ref
                                                      .read(
                                                          todoProvider.notifier)
                                                      .updateTodo(newTodo);
                                                  todoController.clear();
                                                },
                                                keyboardType:
                                                    TextInputType.text,
                                                decoration: InputDecoration(
                                                  hintText: 'add some todo',
                                                ),
                                              ),
                                              TextButton(
                                                  onPressed: () {
                                                    Navigator.of(context).pop();
                                                  },
                                                  child: Text('Close'))
                                            ],
                                          ),
                                        ),
                                      );
                                    },
                                    icon: const Icon(Icons.edit),
                                  ),
                                  IconButton(
                                    onPressed: () {
                                      ref
                                          .read(todoProvider.notifier)
                                          .removeTodo(todo);
                                    },
                                    icon: const Icon(Icons.delete),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
