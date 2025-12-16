---
title: Chess-Playing Robot — Enclosure, Raspberry Pi, Joy Sick, and Buttons!
description: Quality of life updates. Basic Enclosure, running locally on a Raspberry Pi, Buttons, and Joystick
date: 2025-10-15 12:00:00
categories: [Chess Robot, Enclosure]
tags: [CNC, GRBL, Universal Gcode Sender, Robotics, Prototyping, Joystick, Organization, Cats]
image:
  path: "/assets/chess/6pi/frontview.jpg"
  alt: "It GLOWWWSSS"
pin: true
---

> **Work in Progress — Organization Stage**  
> This post focuses on giving the robot a basic enclosure, organizing the wiring, and getting it running on a Raspberry Pi.
{: .prompt-tip}

## **From Last Post** 

- [x] Integrate to run on Raspberry Pi
- [ ] Re-design and print permanent mountings for end stop switches (low priority)
- [x] Maybe add a joystick and arcade buttons?!? 
  - [x] Make one of the buttons a Kill Switch or at least a stop
- [x] Add cable-chain mounts + strain relief  
  - [x] Cable management for X-carriage
  - [x] Cable management for Y-axis
- [x] Basic Electronics Enclosure 

Pretty productive! To be honest I don't much care that the end stops are still hot-glued in place. They are doing their job and it will be easier to make a permanent spot for them once the rest of the mechanical design is completed.

## BUTTONS
This started out as an impulse buy at microcenter and I am so happy I did it. The buttons and the joystick came in a set with a control board... and now my robot essentially functions as a crane machine. Its a lot of fun. I can chase the kitten wherever I want now. And its useful for calibration and testing. It wasn't just plug and play unfortunately, I had to build a profile that UGS could understand. But now that we have it its super smooth. 

## *Technically An Engineer*

I was speaking to a friend who does video editing and he suggested I start a youtube series making this robot. Not a bad idea, but filming and editing sounds like a nightmare. He seemed interested in working on the project with me so we brain-stormed some ideas for a channel name. We came up with "Technically An Engineer" since I have my MS in Mechanical Engineering... but no job. Bleak? Maybe. But also pretty funny. It was available on youtube so we'll see if anything comes of it. But, that's why it is printed on the control interface. 

---

## Giant Running TO-DO List

Borrowed directly from the last post to maintain continuity — and updated but it keeps getting longer and longer. May have to only do this once in a while:

### **From Last Post**
- [x] Design and Prototype Plotter head  
- [x] Integrate to run on Raspberry Pi   
- [x] Draw something cool!
- [ ] Re-design and print permanent mountings for end stop switches
- [x] Maybe add a joystick and arcade buttons?!? (YESSSS)

### **Motion**
- [x] Dual Y-axis stepper motors  
- [x] Pen-lift servo head  
- [x] Add cable-chain mounts + strain relief  
- [x] E-stop via arcade buttons

### **Mechanical**
- [ ] End Effector prototyping
  - [ ] Claw/arm?
  - [x] 4-bar Linkage
  - [ ] Parallel gripper?
  - [ ] Classical Mechanism?
  - [ ] Mitch's Crazy Tube Idea? (front runner)

### **Electronics & Sensors**
- [ ] Hall-effect sensors experimentation (current front runner)
  - [ ] Add hall-effect test board 
  - [ ] Magnet scheme?
  - [ ] Bench-test
- [x] RFID sensors experimentation
  - [x] Add RFID test board
  - [x] Bench-test
- [ ] ibutton experimentation (low priority)

### **Software**
- [x] Implement basic “pen up / pen down” G-code macros  
- [ ] ROS2 
  - [ ] Sim of motion envelope  
    - [ ] Export of CAD to useable format 
- [x] Research integrating Stockfish move generator  

### **Stretch Goals**
- [ ] Camera-based calibration/piece ID  
- [ ] “Do not fight the robot” kitten-proofing cover


---

[← Back to Projects](/projects)

