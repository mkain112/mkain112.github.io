---
title: Chess-Playing Robot — Plotter / Kitten Chaser
description: Turning the chess-robot gantry into a fast, reliable pen plotter (and accidental kitten treadmill). Modeled a servo-lift pen head, added dual Y-axis steppers, and used Universal G-code Sender to draw on a whiteboard.
date: 2025-09-15 12:00:00
categories: [Chess Robot, Plotter]
tags: [CNC, Plotter, 3D Printing, Servos, Stepper Motors, GRBL, Universal Gcode Sender, Robotics, Prototyping, Cats]
image:
  path: "/assets/chess/5plot/cleanppcc.gif"
  alt: "Pen plotter prototype drawing on a whiteboard while my kitten supervises."
pin: true
---

> **Work in Progress — Plotter Stage**  
> This post focuses on converting the chess-robot gantry into a working pen plotter, modeling a servo-lift pen head, adding a second Y-axis motor for rigidity, and running my first drawings through Universal G-code Sender.
{: .prompt-tip}

I've been bouncing between job applications and random engineering distractions, but this one was actually *planned*. There is likely some forthcoming posts about those side quests though. Stay tuned. 

I needed something fun to keep me motivated while the chess robot inches toward full functionality — so I decided to turn the gantry into a **pen plotter**. It seemed like a good way to shake down the mechanics and electronics of the system and move forward in incremental steps. 

Plus now when its not playing chess or being disassembled, it can draw me pretty pictures. Which is nice.

And since my kitten believes anything that moves is a toy, its now a nascent chessbot, a plotter, *and* a cat chaser. Super practical. 

---

## Modeling the Pen-Lift Head

![Servo Pen Head](/assets/chess/5plot/sidebyside.png)
_3D model of the compact servo-lift pen head._

I modeled a simple **servo-driven pen lift** in Onshape — nothing fancy, just a micro-servo, a crank arm, and some rails for it to slide on. The micro-servo rotates counter clockwise to push up a third rail to raise the pen and clockwise to drop down for contact with the surface. I used the Motor Idler as a base so it could just slip on to the same 8 mm rails we have been using. I had some cutoffs ready to go. It mounts right onto the X-Carriage. Wires follow the X endstop lines back to the CNC Shield on the Arduino. 

It gives me about **12 mm** of vertical travel, which is plenty for lifting a marker off a whiteboard.

The biggest problem with the plotter is the vertical distance from the X-axis to the writing surface. It should be as small as possible, not designed to clear 4 inch-tall Kings. This induces some error/wobble due to lack of perfect rigidity. Long pieces of plastic bend easier. 

---

## Dual Y-Axis Steppers

One Y-axis motor was fine for slow calibration — but as soon as I asked for plotter-level speeds, the frame flexed. Even with bearings there was too much friction on the non-driven side to remain square and flat.

So I cloned the Y-axis driver signals and added a second motor on the opposite side.
Now both sides move in perfect sync — faster, smoother, and no more racking. This was really easy with the CNC Shield. I just added a jumper to duplicate an axis and added another A4988 Stepper Motor Driver. Done. As long as the belts are tightened correctly they move perfectly in sync. 

It’s overkill for a plotter, but necessary for a future chessboard with heavier payloads.

Results:
- No racking  
- No twisting  
- Much smoother acceleration  
- Also, it looks cool, and that counts too

I think this is the right move for the chess robot long-term anyway; the end effector is going to get heavier, not lighter, and it makes sense that the Y-axis needs a little help. Its moving the entire X-axis along with the X-carriage and whatever gets mounted to it. The X-axis just has to move the X-carriage. Which isn't heavy. at least not yet. 

---

## First Plotting Tests 
_First scribbles on the whiteboard — proof of motion, proof of life._
<div style="display:flex; gap:10px; flex-wrap:wrap; justify-content:center;">
  <figure style="flex:1; min-width:280px;">
    <img src="/assets/chess/5plot/without2ndY.png" alt="Motor Mount Render" width="100%">
    <figcaption><em>Before upgrading with the second Y-axis stepper</em></figcaption>
  </figure>
  <figure style="flex:1; min-width:280px;">
    <img src="/assets/chess/5plot/with2ndy.gif" alt="Stepper Online Data Sheet" width="100%">
    <figcaption><em>With the second stepper, at low feed rate</em></figcaption>
  </figure>
</div>

With the servo-lift head mounted and both Y motors synced, I hooked the system up to **Universal G-code Sender**.

Early tests were chaotic:
- Pen skipping  
- Servo jerking  
- Belts complaining  
- Wobbly lines
- Kitten chasing the pen like it owed him money  

But once tuned, it started producing clean, repeatable lines.

The sample test path is my chess club logo, since I had the files and it will be a chess robot eventually.

It’s simple, but it let me tune speed, acceleration, backlash, and servo timing.

---

## The Kitten Chaser Mode

![Kitten Chaser](/assets/chess/5plot/KittenPlotterCartoon.png)

At some point I stopped pretending this was about calibration.

The moving pen became:
- enrichment  
- cardio  
- distraction  
- chaos generator  

He’s now fully convinced CNC motion is a personal invitation to sprint at the machine.

I’m calling this a biologically-inspired dynamic obstacle-avoidance test.

Once I get the joystick setup I'll get a video of it chasing him around the board. I was too concerned about him eating the **Electric Spaghetti** or getting stuck in a belt to do much other than scoop him off with the machine running a preset program.

> Note to self: install kill switch.  
{: .prompt-danger}

---

## Lessons Learned

> - Dual-Y motors are absolutely the correct choice.  
> - Dry-erase markers make great plotter tools.  
> - Kittens should not be allowed to near moving belts.  
{: .prompt-info}

---

## Giant Running TO-DO List

Borrowed directly from the last post to maintain continuity — and updated:

### **From Last Post**
- [x] Design and Prototype Plotter head  
- [ ] Integrate to run on Raspberry Pi (ALMOST THERE)  
- [x] Draw something cool!
- [ ] Re-design and print permanent mountings for end stop switches
- [ ] Maybe add a joystick and arcade buttons?!? (ALMOST THERE)

### **Mechanical & Motion**
- [x] Dual Y-axis stepper motors  
- [x] Pen-lift servo head  
- [ ] Add cable-chain mounts + strain relief  

### **Electronics & Sensors**
- [ ] Hall-effect sensors experimentation(current front runner)
  - [ ] Add hall-effect test board 
  - [ ] Bench-test
- [ ] RFID sensors experimentation
  - [x] Add RFID test board
  - [ ] Bench-test
- [ ] ibutton experimentation (low priority)

### **Software**
- [x] Implement basic “pen up / pen down” G-code macros  
- [ ] ROS2 
  - [ ] Sim of motion envelope  
    - [ ] Export of CAD to useable format 
- [ ] Research integrating Stockfish move generator  

### **Stretch Goals**
- [ ] Camera-based calibration/piece ID  
- [ ] “Do not pet the robot” kitten-proofing cover

## **For Next Post** 
- [ ] Integrate to run on Raspberry Pi
- [ ] Re-design and print permanent mountings for end stop switches (low priority)
- [ ] Maybe add a joystick and arcade buttons?!? 
  - [ ] Make one of the buttons a Kill Switch or at least a stop
- [ ] Add cable-chain mounts + strain relief  
  - [ ] Cable management for X-carriage
  - [ ] Cable management for Y-axis
- [ ] Basic Electronics Enclosure

---

[← Back to Projects](/projects)

