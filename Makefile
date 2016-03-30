
TARGETS=executable/main

OBJECTS=src/GLFWInput.o \
src/ParticleManager.o \
src/ParticleSystem.o \
src/ParticleTexture.o \
src/ShaderManager.o \
src/XMLParser.o \
src/tga.o

CC=gcc
AR=ar
#GDB=-g

CPPFLAGS=-std=c++11 -I./include/ -Wall -s
LFLAGS=-lm -lglfw -lGLEW -lGL -lgdiplus -lxerces-c -lstdc++

all: src/main.cpp $(OBJECTS)
	$(CC) $(GDB) $(CPPFLAGS) -o $(TARGETS) $< $(OBJECTS) $(LFLAGS)
	
%.o: %.cpp
	$(CC) $(GDB) $(CPPFLAGS) -c $< -o $@
	
clean:
	rm $(subst /,/,$(OBJECTS))
	rm $(subst /,/,$(TARGETS))
