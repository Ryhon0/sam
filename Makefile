OBJS = reciter.o sam.o render.o main.o debug.o

CC = gcc

# libsdl present
CFLAGS =  -Wall -Os -DUSESDL `sdl-config --cflags`
LFLAGS = `sdl-config --libs`

# no libsdl present
#CFLAGS =  -Wall -Os
#LFLAGS =

sam: $(OBJS)
	$(CC) -o sam $(OBJS) $(LFLAGS)

%.o: src/%.c
	$(CC) $(CFLAGS) -c $<

clean:
	rm -f *.o
