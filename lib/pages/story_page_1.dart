import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'story_page_2.dart';

class StoryPage1 extends StatelessWidget {
  const StoryPage1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: Column(
            children: [
              Text(
                'My Origin Story',
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              const SizedBox(height: 16),
              const Text(
                  '''After graduating from IIUM with a degree in English Literature, Matt felt a sense of uncertainty about what the future held for him. He had always dreamed of becoming an author, but wasn't sure how to get his foot in the door. With a deep breath, he decided to take a leap of faith and embark on a journey to pursue his passion for writing.

He packed his bags and set off on a solo journey across the country, determined to gain inspiration for his writing by experiencing new places and meeting new people. From the bustling streets of Kuala Lumpur to the tranquil beaches of Langkawi, Matt soaked up everything that Malaysia had to offer, letting each new experience inform his writing.

Along the way, he met other aspiring writers and creatives who shared his passion for storytelling. They formed a supportive community, critiquing each other's work and offering encouragement and feedback. Matt found that the journey was not only about discovering new places, but also about discovering himself as a writer.

After months of traveling, Matt returned home with a newfound sense of purpose and direction. He poured his experiences into his writing and began submitting his work to literary journals and publishers. With persistence and hard work, Matt's writing finally caught the attention of a publisher who saw potential in his unique voice.'''),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
              context, CupertinoPageRoute(builder: (_) => const StoryPage2()));
        },
        child: const Icon(Icons.forward),
      ),
    );
  }
}
