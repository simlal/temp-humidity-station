# Temperature and humidity station with DHT22 sensor and LCD1602 display on Raspberry Pi Pico W microcontroller

## Table of contents
- [Introduction](#introduction)
  - [Project overview](#project-overview-mag)
  - [Assignement requirements](#assignement-requirements-memo)
  - [Personal objectives](#personal-objectives-dart)
- [Hardware components](#hardware-components-wrench)
- [Software components](#software-components-computer)
- [References](#references-books)

## Introduction

### Project overview :mag:
Temperature :thermometer: and humidity :droplet: station with DHT22 sensor and LCD1602 display on Raspberry Pi Pico W with custom C drivers. 
With the "Wireless" :satellite: Pico microcropressor option, it is possible to add a wireless communication protocol (Bluetooth, WiFi, etc.) to send data to a server or a smartphone.

### Assignement requirements :memo:
This project is part of an applied portion of the a course on theoritical 
concepts of computer science. The project is based on the following requirements:
- [x] Choose a reference manual for a subject of interest in computer science (Making Embedded Systems by Elecia White [[1]](#1)).
- [x] Develop a project that applies the concepts of the reference manual.
- [x] Write a report on the project along with the reference manual to see how the concepts were applied.
- [x] Make a presentation of the project and its theoretical and technical concepts.

### Personal objectives :dart:
- [x] Introduction to software design and development on embedded systems with the Raspberry Pi Pico platform.
- [x] Learn to read and understand datasheets and reference manuals from the sensord manufacturerd and the Raspberry Pi Pico C/C++ SDK [[2]](#2)[[3]](#3).
- [x] Write custom C drivers for the DHT22 sensor (Repo <a href="#4"><img src="https://github.githubassets.com/assets/GitHub-Mark-ea2971cee799.png" width=16/></a> [[4]](#4)) and the LCD1602 display (Repo <a href="#5"><img src="https://github.githubassets.com/assets/GitHub-Mark-ea2971cee799.png" width=16> </a> [[5]](#5)). 
- [x] Learn how to use the I2C and GPIO protocols on the Raspberry Pi Pico W.

## Hardware components :wrench:
- Raspberry Pi Pico W microcontroller
- DHT22 sensor (temperature and humidity)
- LCD1602 display
- Breadboard
- Jumper wires

All materials purchased from TODO.
<!-- TODO Hardware diagram -->

## Software components :computer:
TODO SOFTWARE DIAGRAMS

## References :books:
<!-- As numbered footnotes-->
<a id="1">[1]</a> **Making Embedded Systems** Design Patterns for Great Software. Elecia White. O'Reilly Media, 2024. ISBN: 978-1-098-15154-6. Available at: https://www.oreilly.com/library/view/making-embedded-systems/9781098151539/ 

<a id="2">[2]</a> **Raspberry Pi Pico C/C++ SDK**. Libraries and tools for C/C++ development on RP2040 microcontrollers. Available at: https://datasheets.raspberrypi.org/pico/raspberry-pi-pico-c-sdk.pdf.

<a id="3">[3]</a> **pico-sdk**. GitHub repository with the Raspberry Pi Pico SDK. Available at: https://github.com/raspberrypi/pico-sdk

<a id="4">[4]</a> **DHT22_Pico_C-driver**. GitHub repository with the custom C driver for the DHT22 sensor. Available at: https://github.com/simlal/DHT22_Pico_C-driver

<a id="5">[5]</a> **LCD1602-I2C_Pico_C-driver**. GitHub repository with the custom C driver for the LCD1602 display with I2C protocol. Available at: https://github.com/simlal/LCD1602-I2C_Pico_C-driver


