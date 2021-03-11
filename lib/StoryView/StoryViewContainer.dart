import 'package:flutter/material.dart';
import 'package:story_view/controller/story_controller.dart';
import 'package:story_view/story_view.dart';

class StoryViewContainer extends StatefulWidget {
  @override
  _StoryViewContainer createState() => _StoryViewContainer();
}

class _StoryViewContainer extends State<StoryViewContainer> {
  final storyController = StoryController();

  @override
  void dispose() {
    storyController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StoryView(
        storyItems: [
          StoryItem.text(
            title: "First Story",
            backgroundColor: Colors.lightBlueAccent,
          ),
          StoryItem.text(
            title: "Second Story",
            backgroundColor: Colors.red,
            textStyle: TextStyle(
              fontSize: 40,
            ),
          ),
          StoryItem.pageImage(
            url:
                "https://media0.giphy.com/media/l0MYwvp2YnfOQfeNy/giphy.gif?cid=ecf05e47c8b5980e5daa414882c318f5c1079fbd7361b90a&rid=giphy.gif",
            caption: "Happy",
            controller: storyController,
          ),
          StoryItem.pageImage(
              url:
                  "https://images.unsplash.com/photo-1503023345310-bd7c1de61c7d?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MXx8aHVtYW58ZW58MHx8MHw%3D&ixlib=rb-1.2.1&w=1000&q=80",
              caption: "Image",
              controller: storyController),

          StoryItem.pageImage(
            url:
                "https://media.tenor.com/images/7ce1d61932ac230f37470e38e6a48720/tenor.gif",
            caption: "Funny",
            controller: storyController,
          ),
          StoryItem.pageVideo(
              'http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/BigBuckBunny.mp4',
              controller: storyController)

        ],
        onStoryShow: (s) {
          print("Showing a story");
        },
        onComplete: () {
          print("Completed a cycle");
        },
        progressPosition: ProgressPosition.top,
        repeat: false,
        controller: storyController,
      ),
    );
  }
}
