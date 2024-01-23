import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_example/models/username_provider.dart';

class ChangeName extends StatefulWidget {
  const ChangeName({Key? key}) : super(key: key);

  @override
  State<ChangeName> createState() => _ChangeNameState();
}

class _ChangeNameState extends State<ChangeName> {
  TextEditingController textEditingController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Text(context.watch<UserProvider>().userName),
          const SizedBox(
            height: 30,
          ),
          TextField(
            controller: textEditingController,
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          ElevatedButton(
              onPressed: () {
                context
                    .read<UserProvider>()
                    .changeUsername(newUserName: textEditingController.text);
                FocusManager.instance.primaryFocus?.unfocus();
                textEditingController.clear();
              },
              child: const Text('Save'))
        ],
      ),
    );
  }
}
