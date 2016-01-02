Instructions:

Clone https://github.com/alliedmodders/hl2sdk (with the specific branch you want) and point HL2SDK to the root of the git repo.

You might also have to build https://github.com/alliedmodders/metamod-source first, then set MMSDK (in the Makefile) accordingly.
Or, you can use the enclosed sourcehook object files, however this may stop working in the future.
Then `make ENGINE=<yourengine>`

(This was updated to use ServerGameDLL010)

The license for serverplugin_empty.cpp is in LICENSE.txt and the license for sourcehook is in SOURCEHOOK_LICENSE.txt
