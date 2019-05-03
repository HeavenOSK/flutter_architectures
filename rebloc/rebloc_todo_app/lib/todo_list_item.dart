import 'package:flutter/material.dart';

class TodoListItem extends StatefulWidget {
  const TodoListItem({
    Key key,
    this.onChanged,
  }) : super(key: key);

  final ValueChanged<bool> onChanged;

  @override
  _TodoListItemState createState() => _TodoListItemState();
}

class _TodoListItemState extends State<TodoListItem> {
  @override
  Widget build(BuildContext context) {
    final todo = Todo(
      modelId: 1,
      title: 'kkk',
      subTitle: 'kkk',
    );
    return RadioListTile<bool>(
      value: false,
      title: const Text('kkk'),
      subtitle: const Text('kkk'),
      groupValue: null,
      onChanged: (value) {
        setState(() {
          widget.onChanged(value);
        });
      },
    );
  }
}

class Todo {
  Todo({
    this.subTitle,
    this.modelId,
    this.title,
  }) : createdTime = DateTime.now();

  final int modelId;
  final String title;
  final String subTitle;
  final DateTime createdTime;
}
