import 'package:flutter/material.dart';

import 'author.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Storybook'),
        ),
        body: SizedBox(
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 15),
              //TODO: Replace Placeholder widget with image
              const SizedBox(
                width: 60,
                height: 60,
                child: Placeholder(),
              ),
              const SizedBox(height: 15),
              // TODO: Replace with your name
              const Text(
                'Author',
                style: TextStyle(fontSize: 34),
              ),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Card(
                    child: Padding(
                      padding: EdgeInsets.all(18.0),
                      child: Text('My Story'),
                    ),
                  ),
                  Card(
                    child: Padding(
                      padding: EdgeInsets.all(18.0),
                      child: Text('Contact me'),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ));
  }
}
