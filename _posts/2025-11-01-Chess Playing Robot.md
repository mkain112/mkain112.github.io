---
title: Chess-Playing Robot — GIANT RUNNING CHECKLIST
date: 2025-11-01 12:00:00
categories: [Chess Robot, Checklist]
tags: [CNC, GRBL, Universal Gcode Sender, Robotics, Prototyping, Joystick, Organization, Cats]
image:
  path: "/assets/chess/6pi/Wideshot.jpg"
  alt: "Wide angle, full setup. (will update with progress)"
pin: false
---

> **Work in Progress**  
> This post is a running list of the .
{: .prompt-tip}

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
  - [ ] Design own cable chain
  - [ ] Fix cable wrapper on X-Carriage 
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

