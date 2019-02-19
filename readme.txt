This is a set of very simple examples of programming NES software in C using
CC65 compiler and my low level code library. To get more information you can
check out my article on this topic:

http://shiru.untergrund.net/articles/programming_nes_games_in_c.htm



Please take a note that the library was never meant to be a end-user product.
It was designed for my personal projects, with spontaneous upgrades that
became necessary in the process. It is provided to you under the most
permissive license, 'as is', without warranty of any kind.

Sorry, there is no docs on the library, other than the comments in the
neslib.h and the examples.



How to compile: download CC65 from ftp://ftp.musoftware.de/pub/uz/cc65/
Unpack into a directory, unpack this folder into that directory
(where /bin/ and other folders now located), run compile_all.bat

Important note: the library and examples will only compile properly with
CC65 v2.13.3. For newer versions you need to edit the *.cfg files, because
there were changes in the linker system. The library was never migrated
to the latest versions, because no critical bug fixes or other important
improvements were noticed in the latest versions, but code in actual games
shown performance degradation, and it is a very limited resource on the NES
to reduce it without a serious justification.



Examples:

1: outputs some text, including PAL/NTSC detection
2: moving balls using sprites
3: pad polling, nametable updating when display is enabled
4: metasprites, two pads polling, collision detection
5: unpacking a RLE-packed nametable created with NES Screen Tool into the VRAM
6: shows virtual background and sprite brightness, controlled with the gamepad
7: shows scrolling and split screen scrolling (split support has many limitations)
8: music and sound effects
9: very basic non-looped vertical scrolling
10: non-looped vertical scrolling, with 2x2 metatiles and collision check
11: it is just examples 2 and 10 combined to show up max action in a C program



test_nam.h and bgsplit_nam.h files created using NES Screen Tool:
http://shiru.untergrund.net/files/nesst.zip

Music and sound effects created using FamiTracker and FamiTone2 library tools.
http://famitracker.com/
http://shiru.untergrund.net/files/src/famitone2.zip



mailto:shiru@mail.ru
http://shiru.untergrund.net