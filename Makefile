CC      ?= gcc
CFLAGS  += -shared -fPIC `pkg-config --cflags gdk-3.0`
LDFLAGS += `pkg-config --libs gdk-3.0`

DEBUG   := no
SONAME   = libbidi_no.so

ifeq ($(DEBUG),yes)
 SRC     = bidi_no_debug.c
else
 SRC     = bidi_no.c
endif

OBJ      = ${SRC:.c=.o}

all: ${SONAME}

.c.o:
	${CC} -c ${CFLAGS} $<

${SONAME}: ${OBJ}
	${CC} -o ${SONAME} ${OBJ} ${CFLAGS} ${LDFLAGS}

clean:
	rm -f ${OBJ} ${SONAME}

.PHONY: all clean
