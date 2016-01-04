#Tickrate Enabler

**(This was updated to use ServerGameDLL010)**

##How to use:
1. Get the latest release for your OS at: https://github.com/daemon32/tickrate_enabler/releases
2. Extract the archive to your game folder (For example: cstrike)
3. Add `-tickrate <number>` to your launch parameters

##Linux Build Instructions:
1. Clone https://github.com/alliedmodders/hl2sdk to the branch 'css' and point HL2SDK to the root of the git repo.

2. You might also have to build https://github.com/alliedmodders/metamod-source first, then set MMSDK (in the Makefile) accordingly. (Or, you can use the enclosed sourcehook object files, however this may stop working in the future.)

3. Run `make ENGINE=<yourengine>`

##Windows Build Instructions:
1. Clone https://github.com/alliedmodders/hl2sdk to the branch 'css' and point HL2SDKCSS to the root of the git repo.

2. You might also have to build https://github.com/alliedmodders/metamod-source first, then set MMSDK (in your environment variables) accordingly. (Or, you can use the enclosed sourcehook object files, however this may stop working in the future.)

3. Open the solution
4. Make sure that the build type is set to 'Release'
5. Right click the project name in the Solution Explorer
6. Click 'Build'
7. You'll find 'tickrate_enabler.dll' in the tickrate_enabler\Release folder

**The license for serverplugin_empty.cpp is in LICENSE.txt and the license for sourcehook is in SOURCEHOOK_LICENSE.txt**
