USB_CFLAGS != pkg-config --cflags libusb-1.0
USB_LDFLAGS != pkg-config --libs libusb-1.0

CSTD=gnu11
WARN=-Wall -Wextra

CFLAGS ?= -O2 -pipe
CFLAGS += -std=$(CSTD)
CFLAGS += $(WARN)
CFLAGS += $(USB_CFLAGS)
CFLAGS += -I/usr/include/stlink

LDFLAGS += $(USB_LDFLAGS)
LDFLAGS += -lstlink

all: swd2

swd2: swd2.c
	$(CC) $(CFLAGS) -o $@ $< $(LDFLAGS)

swdd: swdd.c
	$(CC) $(CFLAGS) -o $@ $< $(LDFLAGS) -lpthread

clean:
	rm -f swd2 swdd

.PHONY: clean
