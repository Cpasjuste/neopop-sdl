
===================================
"NeoPop : Emulator as in Dreamland"
===================================

http://neopop.emuxhaven.net

------------------------------------------------------------------------------
About
------------------------------------------------------------------------------

NeoPop is a portable "NeoGeo Pocket (Color)" emulator.


------------------------------------------------------------------------------
Disclaimer / Licence
------------------------------------------------------------------------------

This program is free software; you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation; either version 2 of the License, or
(at your option) any later version. See also the license.txt file for
additional informations.

- In addition you agree that you will not distribute this program with
commercial rom images in any form.


------------------------------------------------------------------------------
What's New
------------------------------------------------------------------------------

10 SEP 2002
===========

        Core v0.71
        ----------
        - TLCS-900h counts extra cycles for addressing modes.
        - Tweaked and optimised the timers, now they're more accurate.
        - Fixes music in "Cool Cool Jam" and improves "Card Fighters".
        - Emulates more instructions per 'emulate' call, makes things faster.
        - Put frameskipping back in.
        - Made flash writes even more secure.

        Win32 v1.06
        -----------
        - Fixed the window size, it was 1 pixel too tall and was causing
          subtle stretching artefacts.
        - Mostly translated the link-up dialog.
        - "Misc. Options" dialog. for various options.
        - Windowed/Full-screen mode is restored from registry on startup.
        - More translated strings/dialogs/menus.
        - Added adaptoid N64 D-Pad support.
        - Put frameskipping back in.
        - Compressed with the latest version of UPX.
        - Improved sound consistancy, especially the noise channel - tones and
          noises are now maintained during mute, etc. And will be restored
          correctly from a saved state. This was a long-time problem.
        - Added full screen width stretching.


07 SEP 2002
===========

        Core v0.70
        ----------
        - Fixed "Gals Fighters" problems. They were caused by corrupted flash
          data due to over-simplistic discreet EEPROM emulation.
          IN ORDER TO FIX THIS PROBLEM COMPLETELY, YOU MUST DELETE ANY EXISTING
          FLASH DATA FILE - FOUND IN THE BATTERY FOLDER.
          All moves should work now... my fingers are crossed!
          
        - Communication emulation is perhaps a little better. However there
          are still some important system memory locations that need emulating.

        Win32 v1.05
        -----------
        - Fixed translated file selector filters not working if the string
          was longer than the English version (which happens quite often).
        - Debugger memory "Watcher" can now save and load it's list, it's not
          very robust code - but it does the job!



------------------------------------------------------------------------------
Acknowledgments
------------------------------------------------------------------------------

- SNK for making a great handheld, sadly ignored in the UK, and for
general specifications of the unit.

- Toshiba for making the slightly (VERY) unfriendly TLCS-900h, but at
least providing easily obtainable technical documentation.

- NeoPocott team for NGPC technical specifications which helped guide
my early progress.

- NeoGeoPocket Dev'rs (http://www.devrs.com/ngp) for providing me with
links to various homebrew games and code that have been very useful.

- Jeff Frohwein for writing the 'hardware.inc' and 'system.inc' files
which continue to help a great deal.

- Roger Bacon, Ivan Mackintosh, Tomasz Slanina and all of the other PD
authors who provide source code with their games. It is very helpful
to read while trying to work out what's going wrong with my code!

- Richard Mitton for his RAZE z80 emulator.
No longer used as it is platform dependent, but very good.

- Flavor for helping out with many good ideas.

- Judge for providing a CPU tester, help with bios emulation and the
correct operation of the DAA instruction, and many other big hints!

- zLIB for zipped rom support.
Copyright (C) 1995-1998 Jean-loup Gailly and Mark Adler

- www.emuxhaven.net for hosting NeoPop and providing a message board.

- Ivan Mackintosh for help with loads of things, including sound emulation.

- Fuz for helping me with various things, and writing a lot of complicated
homebrew roms to test.

- Marat Fayzullin for his z80 emulator.
Portions Copyright (C) Marat Fayzullin 1994-2002

- The MAME team for providing the source code to the sound chip driver.

- Pete Bernert and the PeopsSpu team for showing how good sound buffering
is supposed to be done with DirectSound. 

- Timepaladin for help with detailing many bugs.

- Caz for the BeOS port, message font and lots of useful ideas.

------------------------------------------------------------------------------

- All the people who have emailed and posted on the forum with positive
comments and suggestions.

- All the translators, too many to mention!

- and anyone else i've forgotten... :-)

------------------------------------------------------------------------------
