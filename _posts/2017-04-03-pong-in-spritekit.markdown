---
layout: post
title:  "Pong in SpriteKit"
date:   2017-04-03 12:00:56 +0800
categories: projects SpriteKit Swift
youtubeId: E5eqNaY4Hj8
---



***

This is the classic video game Pong. It didn't take long to build but there were a few things I hadn't considered. For example, I started off by setting up the game scene in landscape but in retrospect, it would have been easier to leave it in portrait and just lock it in by disabling auto-rotation.

Also, the game play was not as good as I thought. The ball would get stuck on the top or bottom edge and bounce from paddle to paddle in a boring horizontal path. You can avoid this somewhat by choosing the right angle when the ball is served but it would be better to give the ball an impulse in a different direction when it hits the paddle depending where on the the paddle it hits.

I set up bitmasks for contacts and collisions as an enum:

{% gist OsakaStarbux/5aafdb2a428d0bb03db14278c7671327 %}
