import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:state_app/providers/favorite_provider.dart';

class FavoriteWidget extends StatefulWidget {
  const FavoriteWidget({super.key});

  @override
  State<FavoriteWidget> createState() => _FavoriteWidgetState();
}

class _FavoriteWidgetState extends State<FavoriteWidget> {
  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: ContactList(),
    );
  }
}

class ContactList extends StatelessWidget {
  const ContactList({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<FavoriteProvider>(builder: (context, index, child) {
      return ListView.builder(
          itemCount: index.favoriteContacts.length,
          itemBuilder: (context, ind) {
            return ListTile(
              leading: ClipRRect(
                borderRadius: BorderRadius.circular(30),
                child: Image.asset("assets/images/ayra.jpeg"),
              ),
              title: Text(
                "Ayra Starr ${index.favoriteContacts[ind]}",
                style: const TextStyle(color: Colors.blue),
              ),
              subtitle: const Text("+234-702-6881-411"),
              trailing: IconButton(
                onPressed: () {
                  Provider.of<FavoriteProvider>(context, listen: false)
                      .removeFavorite(index.favoriteContacts[ind]);
                },
                icon: const Icon(
                  Icons.cancel_sharp,
                  color: Colors.red,
                ),
              ),
            );
          });
    });
  }
}
