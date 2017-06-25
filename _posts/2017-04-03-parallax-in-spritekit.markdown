---
layout: post
title:  "Parallax Scrolling in SpriteKit"
date:   2017-04-03 12:00:56 +0800
categories: projects SpriteKit Swift
youtubeId: OjlaNGnrmX4
---

{% include youtubePlayer.html id=page.youtubeId %}

***

Adding depth to a 2D game is not that hard. To get the [parallax scrolling](https://en.wikipedia.org/wiki/Parallax_scrolling#Example) effect we just need to divide the z axis up into foreground and background with any number of layers in between. Background layers move more slowly and the closer we get to the "camera" the faster they move. You can set this up with a reference speed for the background and use a multiplier for layers that are closer. Since our camera is following our biplane sprite it doesn't need to move. The distant mountains move slowly and the closer hills move more quickly.

This app was based on a tutorial that used the `update()` function to call `moveSprite()` which directly changes the sprites' x position. I'm interested in finding out the relative benefits of using SpriteKit's built in functions for moving sprites.

{% gist OsakaStarbux/502bc30879fe92d971b21dd684841f59 %}
