---
layout: post
title:  "Bus Bell app in SpriteKit"
date:   2017-01-21 12:00:56 +0800
categories: projects SpriteKit Swift
youtubeId: 9hpXiuUnKQg
---

{% include youtubePlayer.html id=page.youtubeId %}


***

My two year-old loves to press the bell button on the bus. He's too young to understand the inconvenience to the driver and all the passengers of requesting every single stop so I made a button that he can press as much as he likes. It's even more fun than the real one since it plays one of eight wacky sounds at random. There are two bell images that match the ones found on different buses that you can switch by swiping left or right.

The sign lights up like the real one to say "とまります", "(the bus) will stop". Unlike the real one it doesn't disable the button until it's reset by the driver. It just fades and lets you press again!

As you can see, the audio is in Core Audio Format or .caf files. You can convert from other formats with the `afconvert` command line tool built into macOS.

{% gist OsakaStarbux/70034c7e6d21e209f7e078bffbbb4f26 %}
