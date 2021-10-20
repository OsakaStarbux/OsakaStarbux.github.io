---
layout: post
title:  Cracking classic ciphers in Python
date:   2021-10-10 12:30:00 +0800
categories: python cryptography

---

![image](/assets/pexels-cottonbro-7319085.jpg)


Recently, I read The Code Book by Simon Singh. It covers the history and methods of cryptography.
It was really fascinating and I loved the chapters dealing with classic ciphers. It took me back to 
my childhood and how we had fun writing and decrypting secret messages. As a kid, I read Edgar Allen Poe’s
The Gold Bug, which has a very detailed description of letter frequency decryption. 

I was looking for a project to do in Python and I got the idea of writing some decryption tools in Python.
One example of a classic cipher is the book cipher. A book, or some other text, is chosen as the key and the
words are numbered sequentially. These numbers can then be used to encipher your secret message by
substituting the number for the first letter of the word in the key text.

There is no 1 to 1 relationship between the numbers and the letters they represent because several numbers
may be used for a single letter. So this cipher can be hard to crack without knowing the key text. It would be
too time-consuming to number many of the words of a suspected key text and prone to counting errors.
Likewise, checking a large number of suspected key texts is a huge task. Using a computer is the best strategy.

[This GitHub repo](https://github.com/OsakaStarbux/book-cipher) is a starting point to build out some tools for decrypting classic ciphers starting with book ciphers.
