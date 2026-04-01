# SWDCOM

Mecrisp Stellaris console via ST/LINK

**SWDCOM** is a high-speed communication interface for **Mecrisp-Stellaris** that uses the ARM **SWD (Serial Wire Debug)** interface instead of a traditional UART terminal.

It provides a fast, reliable REPL (Forth console) over a single USB connection.

## Features

- 🚀 High-speed communication
- ⚡ Fast source uploads
- 🔁 Built-in flow control (no dropped input)
- 📋 Reliable multi-line paste
- 🔌 Single USB connection (via ST-Link)
- ⌛ Clock-independent communication

## Usage

Connect an USB cable to your Devboard and run ./swd2 on a terminal

- CRTL+$ : uploads a file named upload.fs
- CRTL+c : resets the MCU
- CRTL+d : closes swd2 and returns to standard terminal

## ⚙️ Installing from Source

### Arch Linux

```bash
sudo pacman -S --needed libusb stlink
cd swdcom
make
```

### Debian & Ubuntu

```bash
sudo apt install libusb-1.0-0-dev pkg-config libstlink-dev
cd swdcom
make
```

## 📚 Documentation

- SWDCOM Requires modified Mecrisp-Stellaris firmware, check the documentation for more info:

https://mecrisp-stellaris-folkdoc.sourceforge.io/swdcom.html
