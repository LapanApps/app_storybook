import 'package:flutter/material.dart';

class AuthorPage extends StatelessWidget {
  final String authorName;
  final String authorBio;
  final String authorImage;

  const AuthorPage(
      {super.key,
      required this.authorName,
      required this.authorBio,
      required this.authorImage});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('About the Author'),
      ),
      body: SizedBox(
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Hero(
              tag: 'profile-page',
              child: Image.network(
                authorImage,
                height: 200,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(height: 16),
            Text(
              authorName,
              style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 8),
            Text(
              authorBio,
              style: const TextStyle(fontSize: 16),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 35),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                Icon(Icons.facebook, size: 34),
                Icon(Icons.mail, size: 34),
                Icon(Icons.phone_android, size: 34),
              ],
            )
          ],
        ),
      ),
    );
  }
}
