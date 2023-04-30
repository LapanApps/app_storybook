import 'package:flutter/material.dart';

import 'author.dart';
import 'story_page_1.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Storybook')),
      body: SizedBox(
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 15),
            const SizedBox(
              width: 100,
              height: 100,
              child: Hero(
                tag: 'profile-page',
                child: CircleAvatar(
                  backgroundImage: NetworkImage(
                      'https://www.hollywoodreporter.com/wp-content/uploads/2022/02/Daredevil-Charlie-Cox-Marvel-Everett-TCDDARE_EC009-H-2022.jpg?w=1296&h=730&crop=1&resize=681%2C383'),
                ),
              ),
            ),
            const SizedBox(height: 15),
            const Text('Matt', style: TextStyle(fontSize: 34)),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Card(
                  child: InkWell(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (_) => const StoryPage1()));
                    },
                    child: const Padding(
                      padding: EdgeInsets.all(18.0),
                      child: Text('My Story'),
                    ),
                  ),
                ),
                Card(
                  child: InkWell(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (_) => const AuthorPage(
                              authorName: 'Matt',
                              authorBio:
                                  'Matt is a successful author with a sharp mind and a passion for storytelling. His writing style is both imaginative and thought-provoking, and his books have garnered critical acclaim from readers and critics alike.',
                              authorImage:
                                  'https://www.hollywoodreporter.com/wp-content/uploads/2022/02/Daredevil-Charlie-Cox-Marvel-Everett-TCDDARE_EC009-H-2022.jpg?w=1296&h=730&crop=1&resize=681%2C383')));
                    },
                    child: const Padding(
                      padding: EdgeInsets.all(18.0),
                      child: Text('Contact me'),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
