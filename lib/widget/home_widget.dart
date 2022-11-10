import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:state_app/providers/favorite_provider.dart';

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
    final myFav = Provider.of<FavoriteProvider>(context);

    return ListView.builder(
      itemCount: 10,
      itemBuilder: ((context, index) {
        return ListTile(
          leading: const Icon(
            Icons.person,
            size: 30,
          ),
          title: const Text(
            "stephanie Okereke",
            style: TextStyle(color: Colors.blue),
          ),
          subtitle: const Text("+234-702-6881-411"),
          trailing: myFav.favoriteContacts.contains(index)
              ? const Icon(
                  Icons.favorite,
                  color: Colors.red,
                )
              : ElevatedButton.icon(
                  onPressed: () {
                    myFav.addFavorite(index);
                  },
                  icon: const Icon(Icons.add),
                  label: const Text("Add")),
        );
      }),
    );
  }
}
