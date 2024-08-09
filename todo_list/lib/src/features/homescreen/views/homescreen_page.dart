import 'package:flutter/material.dart';
import 'package:todo_list/src/app_logger.dart';

class HomescreenPage extends StatelessWidget {
  const HomescreenPage({super.key});

  void _onDismissed(DismissDirection direction) {
    if (direction == DismissDirection.startToEnd) {
      AppLogger.debug("Dismis berhasil");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Todo List"),
      ),
      body: ListView.builder(
        itemCount: 20,
        itemBuilder: (context, index) {
          return Dismissible(
            direction: DismissDirection.startToEnd,
            onDismissed: _onDismissed,
            key: Key(index.toString()),
            child: ListTile(
              title: Text("Title ${index + 1}"),
              subtitle: Text("Subtitle ${index + 1}"),
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.add),
      ),
    );
  }
}
