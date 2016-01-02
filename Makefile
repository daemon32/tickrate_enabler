CC=gcc
CXX=g++

# Work around hacks in the Source engine
CFLAGS=-m32 -std=gnu++11 -fpermissive -fPIC \
	-Dstrnicmp=strncasecmp -Dstricmp=strcasecmp -D_vsnprintf=vsnprintf \
	-D_alloca=alloca -Dstrcmpi=strcasecmp -DPOSIX -DLINUX -D_LINUX

OPTFLAGS=-O2

# ******************************
# Change these to the proper
# locations for your system.
# ******************************
HL2SDK=/path/to/hl2sdk-css          # The path to the Source SDK to use
MMSDK=/path/to/mmsource-1.10-git    # The path to the Metamod source tree

# Include Source SDK directories
INCLUDES=-I$(HL2SDK)/public -I$(HL2SDK)/public/tier0 -I$(HL2SDK)/public/tier1 -I$(MMSDK)/core

# Include the folder with the Source SDK libraries
LINKFLAGS=-shared -m32 -L$(HL2SDK)/lib/linux

all: check serverplugin_empty.o Tickrate_Enabler.so

serverplugin_empty.o:
	$(CXX) $(CFLAGS) $(OPTFLAGS) $(INCLUDES) -c serverplugin_empty.cpp

Tickrate_Enabler.so:
	$(CC) -o Tickrate_Enabler.so $(LINKFLAGS) serverplugin_empty.o $(MMSDK)/build/core/metamod.2.$(ENGINE)/sourcehook_sourcehook*.o \
	-ltier0_srv -ltier1_i486 -static-libstdc++ -lm -ldl

clean:
	-rm -f serverplugin_empty.o
	-rm -f Tickrate_Enabler.so

check:
	if [ "$(ENGINE)" = "false" ]; then \
	echo "You must supply one of the following values for ENGINE:"; \
	echo "l4d2, l4d, obv, ob, css, sdk2013, ep2, or (possibly, with changes) ep1"; \
	fi
