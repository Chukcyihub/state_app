import 'package:flutter/material.dart';

class ProfileWidget extends StatefulWidget {
  const ProfileWidget({super.key});

  @override
  State<ProfileWidget> createState() => _ProfileWidgetState();
}

class _ProfileWidgetState extends State<ProfileWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(200, 204, 204, 255),
      body: Center(
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.only(top: 20),
              height: 190,
              width: 200,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage("assets/images/photo3.jpeg"),
                ),
                borderRadius: BorderRadius.all(
                  Radius.circular(70),
                ),
              ),
            ),
            const SizedBox(height: 10),
            const Text(
              "Stephanie Milton",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),
              onPressed: (() {}),
              child: const Text(
                "Favorite",
                style: TextStyle(color: Colors.white),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              height: 303.8,
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(60),
                  topRight: Radius.circular(60),
                ),
              ),
              child: Column(
                children: const [
                  Padding(
                    padding: EdgeInsets.all(8),
                    child: ListTile(
                      leading: Icon(
                        Icons.chat_bubble_outline_rounded,
                        color: Colors.pinkAccent,
                      ),
                      title: Text(
                        "Start a chat",
                      ),
                      trailing: Icon(Icons.arrow_forward_ios_rounded),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8),
                    child: ListTile(
                      leading: Icon(
                        Icons.person_outline_rounded,
                        color: Colors.green,
                      ),
                      title: Text(
                        "Expert replies",
                      ),
                      trailing: Icon(
                        Icons.arrow_forward_ios_rounded,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8),
                    child: ListTile(
                      leading: Icon(
                        Icons.star,
                        color: Colors.red,
                      ),
                      title: Text(
                        "Review Rating",
                      ),
                      trailing: Icon(Icons.arrow_forward_ios_rounded),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8),
                    child: ListTile(
                      leading: Icon(
                        Icons.account_tree_outlined,
                        color: Colors.blue,
                      ),
                      title: Text(
                        "Asked questions",
                      ),
                      trailing: Icon(Icons.arrow_forward_ios_rounded),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
