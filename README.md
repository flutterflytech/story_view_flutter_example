# demo

Story View.

## Getting Started

You need to add the following dependency to the <b>pubspec.yaml</b> file.<br></br>
  story_view: ^0.12.8
  
<h4>StoryView in flutter : </h4>Used for Rendering story like whatsApp & instagram.
<li>It requires a list of <b>StoryItem</b>, each of which describes the view to be displayed on each story page, <b>duration</b> and so forth. 
<li>This gives you the freedom to customize each page of the story.</li>

StoryView  provides support for image, GIF and video (with caching enabled)

<li>Gesture for pause, rewind and forward</li>
<li>Caption for each story item</li>
<li>Animated progress indicator for each story item</li>
<li>And useful callback to perform meta functionalities including vertical swipe gestures.</li>


There are shorthands provided to create common pages.
<li><b>StoryItem.text:</b> is a shorthand to create a story page that displays only text.</li>
<li><b>StoryItem.pageImage:</b> creates a story item to display images with a caption.</li>
<li><b>StoryItem.inlineImage:</b> creates a story item that is intended to be displayed in a linear view hierarchy like List or Column</li>
<li>Both <b>.inlineImage</b> and <b>pageImage</b> support <b>animated GIFs</b>.</li>

<li><b>StoryItem.pageVideo:</b> creates a page story item with <b>video media</b>. Just provide your video url and get going.</li>

<h3>Story controller, loaders and GIF support</h3>

<li><b>story_controller : <b>Controller to sync playback between animated child (story) views. This helps make sure when stories are paused, the animation (gifs/slides) are also paused. Another reason for using the controller is to place the stories on paused state when a media is loading.
</li>

<li><bStoryImage :<b></li> Widget to display animated gifs or still images. Shows a loader while image is being loaded. Listens to playback states from controller to pause and forward animated media.
<li><b>story_video :</b></li> for video & gif
