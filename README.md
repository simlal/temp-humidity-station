# Temperature and humidity station with DHT22 sensor and LCD1602 display on Raspberry Pi Pico W microcontroller

## Table of contents

<details>
<summary><a href="#introduction">Introduction</a></summary>

- [Assignement requirements](#assignement-requirements-memo)
- [Personal objectives](#personal-objectives-dart)

</details>

<details>
<summary><a href="#project-overview-mag">Project overview</a></summary>

- [Code structure](#code-structure)
- [Flow of operations diagram](#flow-of-operations-diagram)

</details>

<details>
<summary><a href="#hardware-components-wrench">Hardware components</a></summary>

</details>

<details>
<summary><a href="#development-environment-setup-hammer_and_wrench">Development environment setup</a></summary>

- [Installation](#installation)
- [Blinking LED via wireless chip](#blinking-led-via-wireless-chip)
- [Hello World! via USB serial](#hello-world-via-usb-serial)

</details>

<details open>
<summary><a href="#main-software-components-computer">Main software components</a></summary>

- [DHT22 sensor driver](#dht22-sensor-driver)
- [LCD1602 display driver](#lcd1602-display-driver)
- [HTTP server](#http-server)

</details>

<details>
<summary><a href="#multi-threading-and-hardware-integration">Multi-threading and hardware integration</a></summary>

</details>

<details>
<summary><a href="#conclusion">Conclusion</a></summary>

</details>

<details>
<summary><a href="#references-books">References</a></summary>

</details>

## Introduction

### Assignement requirements :memo:
This project is part of an applied portion of the a course on theoritical 
concepts of computer science. The project is based on the following requirements:
- [x] Choose a reference manual for a subject of interest in computer science (Making Embedded Systems by Elecia White [[1]](#1)).
- [x] Develop a project that applies the concepts of the reference manual.
- [x] Write a report on the project along with the reference manual to see how the concepts were applied.
- [x] Make a presentation of the project and its theoretical and technical concepts.

### Personal objectives :dart:
- [x] Introduction to software design and development on embedded systems with the Raspberry Pi PicoW platform.
- [x] Learn to read and understand datasheets and reference manuals from the sensord manufacturerd and the Raspberry Pi Pico C/C++ SDK [[2]](#2)[[3]](#3).
- [x] Write simple C drivers for the DHT22 sensor [[4]](#4) and the LCD1602 display [[5]](#5). 
- [x] Learn how to use the I2C and GPIO protocols on the Raspberry Pi Pico W.
- [ ] Optional: Implement a webserver that handle HTTP requests to display the temperature and humidity data on a webpage. 

## Project overview :mag:
Temperature :thermometer: and humidity :droplet: station with DHT22 sensor and LCD1602 display on Raspberry Pi Pico W with custom C drivers. 
With the "Wireless" :satellite: Pico microcropressor option, it is possible to add a wireless communication protocol (Bluetooth, WiFi, etc.) to send data to a server or a smartphone.

### Code structure
- Drivers code can be found inside the [drivers](./drivers) sub-directory 
- Server component is located in the [server](./server) sub-directory.
- `pico-sdk` is the C/C++ SDK for the Raspberry Pi Pico/PicoW [[2]](#2). Installed alongside the `tinyUSB` and wireless modules (see )
- Examples for setup and debugging phase are located in the [examples](./examples) sub-directory.
- `main.c` is the main file that integrates all components and runs the weather station.

### Flow of operations diagram

TODO

## Hardware components :wrench:
**Bill of materials**:
| Component | Description | Quantity | Price (CAD) |
|-----------|-------------|----------|-------|
| Raspberry Pi Pico W (pre-soldered headers)| Microcontroller | 1 | $9.80 |
| DHT22 sensor | Temperature and humidity sensor | 1 | $10.95|
| LCD1602 display | 2.5" LCD display | 1 | $8.95 |
| Breadboard | 830-point breadboard | 1 | $8.45 |
| Wires/Jumper cables | Assorted wires | multiple wires | ~$10.00 |
| Total | | | $38.15 |


All materials purchased from pishop.ca (May 2024).
<!-- TODO Hardware diagram -->

## Development environment setup :hammer_and_wrench:

### Installation

### Blinking LED via wireless chip
TODO

### Hello World! via USB serial

## Main software components :computer:

### DHT22 sensor driver

TODO

### LCD1602 display driver

TODO

### HTTP server

TODO

## Multi-threading and hardware integration

TODO

## Conclusion
TODO

## References :books:
<!-- As numbered footnotes-->
<a id="1">[1]</a> **Making Embedded Systems** Design Patterns for Great Software. Elecia White. O'Reilly Media, 2024. ISBN: 978-1-098-15154-6. Available at: https://www.oreilly.com/library/view/making-embedded-systems/9781098151539/ 

<a id="2">[2]</a> **Raspberry Pi Pico C/C++ SDK**. Libraries and tools for C/C++ development on RP2040 microcontrollers. Available at: https://datasheets.raspberrypi.org/pico/raspberry-pi-pico-c-sdk.pdf.

<a id="3">[3]</a> **pico-sdk**. GitHub repository with the Raspberry Pi Pico SDK. Available at: https://github.com/raspberrypi/pico-sdk

<a id="4">[4]</a> **DHT22 PicoW C driver**. Subfolder within current repo containing driver code [:file_folder:](./dht22_picow_driver). Available at: https://github.com/simlal/temp-humidity-station/tree/main/dht22_picow_driver

<a id="5">[5]</a> **LCD1602 via I2C Pico C driver**. Subfolder within current repo containing driver code [:file_folder:](./lcd1602_i2c_picow_driver). Available at: https://github.com/simlal/temp-humidity-station/tree/main/lcd1602_i2c_picow_driver

