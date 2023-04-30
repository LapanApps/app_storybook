import 'package:flutter/material.dart';

class StoryPage2 extends StatelessWidget {
  const StoryPage2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: Column(
            children: [
              Text(
                'Wonderful Journey',
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              const SizedBox(height: 16),
              const Text(
                  '''Today, Matt is a published author with several successful books under his belt. He continues to travel and seek inspiration for his writing, but he's also found a sense of grounding in his career. Looking back on his journey, he knows that his time at IIUM and his solo adventure across Malaysia were pivotal moments in shaping who he is as a writer and as a person.
                  
                  Matt's success as an author didn't come easy, but it was all worth it in the end. He remembers the long hours spent writing, the numerous rejection letters he received, and the many sacrifices he had to make to achieve his dreams. But he also remembers the joy and fulfillment he felt every time he put pen to paper, and the thrill of seeing his work in print for the first time.'''),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // go home
          Navigator.pop(context);
          Navigator.pop(context);
        },
        child: const Icon(Icons.home),
      ),
    );
  }
}
