---
marp: true
theme: gaia
class: invert
paginate: true
---
<!-- _paginate: false -->

<h1 style="text-align: center;">Intro to embedded systems and drivers as selected subject</h1> 
<br>
<p style="text-align: center;">DHT22 Temp/humidity and LCD1602 display on Pi Pico W microcontroller</p>

<br>
<p style="text-align: center;">by: <strong>Simon Lalonde</strong></p>
<p style="text-align: center;">For: <strong>IFT-769 </strong> (Theoritical concepts CS)</p>


---

<h2>📖 Project overview (1/2) - <span style="font-weight: normal;">Read 'Making Embedded Systems' by Elecia White</span></h2>

**Making Embedded Systems** 2nd edition by Elecia White <img src="https://learning.oreilly.com/library/cover/9781098151539/250w/" width="100" style="float: right;">

<u>Book overview</u>:
- **Introduction** to embedded systems architecture and design
- How to work with various **I/O** devices (sensor, display, etc.)
- Learn how to **optimize** and **debug** within resource constraints
- **Advanced** topics like **RTOS**, **networking**, **security**, etc.

---

<h2><img src="https://em-content.zobj.net/source/google/387/hammer-and-wrench_1f6e0-fe0f.png" width=60px> Project overview (2/2) - <span style="font-weight: normal;">Apply the concepts from 1<sup>st</sup> half of reference book</span></h2>

Make a **Temperature** 🌡️ and **humidity** 💧 station with DHT22 sensor and LCD1602 display on Raspberry Pi Pico W microconstroller.

:arrow_right: **Design** a simple embedded system with a microcontroller.
:arrow_right: **Learn** to work with I/O on a microcontroller.
:arrow_right: **Write custom C drivers** for each peripheral.

<u>(Optional goal)</u> 
Take advantage of the Pico W microcropressor's 📡 chip and write a custom **web server** in C to **display** the data on a web page.

---

<h2><img src="https://em-content.zobj.net/source/google/387/left-speech-bubble_1f5e8-fe0f.png" width=60px> Project overview (3/3) - <span style="font-weight: normal;">Present and apply relevant concepts from the main reference</span></h2>

<u><strong>Relevant concepts</u></strong> (from the 1<sup>st</sup> half of the book):
- Create **system diagram** and **flowchart** for the project (ch. 2)
- Choosing and understanding **hardware** (ch.3)
- **I/O** and **interrupts** (ch. 4-5)
- Drivers and **communication protocols** (ch. 7)
- **Flow** of activity and **hollistic system** view (ch.6 and 8)

---

<h2><img src="https://em-content.zobj.net/source/google/387/direct-hit_1f3af.png" width=60px> Project goals</h2>

1. **Understand** the basics of embedded systems and drivers.
2. **Learn** to work with I/O devices on a microcontroller.
3. **Write** custom C drivers for each peripheral.
4. **Apply** the concepts from the reference book to the project.
5. **Present** and **apply** relevant concepts from the main reference.

---

<h2><img src="https://em-content.zobj.net/source/google/387/calendar_1f4c5.png" width=60px> Project timeline - <span style="font-weight: normal;">(1/2)</span></h2>

**Theoritical concepts**
- Read a chapter of the book every week
<br>

**Applied Project**
- Write **System diagram** and **flowchart** for the project
- **Choosing** and **understanding** hardware
- Setup **development environment** and **toolchain**
- Start **writing** the DHT22 driver

--- 
<h2><img src="https://em-content.zobj.net/source/google/387/calendar_1f4c5.png" width=60px> Project timeline - <span style="font-weight: normal;">End-of-term objectives</span></h2>

**Theoritical concepts**
Continue reading the book past the applied objectives.
<br>

**Applied project**
- **Finish** the DHT22 driver
- **Write** the LCD1602 driver
- **Integrate** the drivers and **test** the system
- (OPTIONAL) Write a **web server** to display the data

---

BREADBOARD IMAGE HERE

---

<h2><img src="https://em-content.zobj.net/source/google/387/clipboard_1f4cb.png" width=60px> System diagram</h2>

TODO ADD STATIC FILE

---

<h2><img src="https://em-content.zobj.net/source/google/387/gear_2699-fe0f.png" width=60px> Hardware Components</h2>


---

<h2><img src="https://em-content.zobj.net/source/google/387/hammer-and-wrench_1f6e0-fe0f.png" width=60px> Development environment</h2>

---

    