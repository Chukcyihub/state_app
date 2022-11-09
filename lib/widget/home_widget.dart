import 'package:flutter/material.dart';

class HomeWidget extends StatelessWidget {
  const HomeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Center(
        child: ContactList(),
      ),
    );
  }
}

class ContactList extends StatelessWidget {
  const ContactList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 10,
      itemBuilder: ((context, index) {
        return ListTile(
          leading: const Icon(Icons.person_add_alt_1_outlined),
          title: const Text(
            "stephanie Okereke",
            style: TextStyle(color: Colors.blue),
          ),
          subtitle: const Text("+234-702-6881-411"),
          trailing: ElevatedButton.icon(
              onPressed: () {},
              icon: const Icon(Icons.add),
              label: const Text("Add")),
        );
      }),
    );
  }
}
