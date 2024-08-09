import 'package:flutter/material.dart';
import 'package:todo_list/src/app_logger.dart';
import 'package:todo_list/src/common/widgets/text_field/custom_text_field.dart';

class HomescreenPage extends StatefulWidget {
  const HomescreenPage({super.key});

  @override
  State<HomescreenPage> createState() => _HomescreenPageState();
}

class _HomescreenPageState extends State<HomescreenPage> {
  final emailController = TextEditingController();

  void _onDismissed(DismissDirection direction) {
    if (direction == DismissDirection.startToEnd) {
      AppLogger.debug("Dismis berhasil");
    }
  }

  String _validator(String? value) {
    return "";
  }

  void _onPressed(TextEditingController email) {
    showModalBottomSheet(
      enableDrag: true,
      showDragHandle: true,
      isScrollControlled: true,
      useSafeArea: true,
      context: context,
      builder: (context) {
        return SizedBox(
            child: Column(
          children: [
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 10),
              child: CustomTextField(
                labelText: "Email",
                counterText: "example@gmail.com",
                controller: email,
                validator: _validator,
              ),
            )
          ],
        ));
      },
    );
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
        onPressed: () => _onPressed(emailController),
        child: const Icon(Icons.add),
      ),
    );
  }
}
