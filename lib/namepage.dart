import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_example/models/username_provider.dart';


class NamePage extends StatelessWidget {
  const NamePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        context.watch<UserProvider>().userName,
      ),
    );
  }
}
