---
title: Chess-Playing Robot — Assembly & Prototyping
description: Mechanical redesign and assembly of robot parts for the autonomous chessboard project. REAL HARDWARE! 
date: 2025-06-29 15:00:00
categories: [Chess Robot, Prototyping]
tags: [Chess, CAD, Onshape, 3D Printing, CNC, Gantry, Robotics, Prototyping, Motion Control, Arduino, Raspberry Pi, Python, GRBL, Universal Gcode Sender, Gcode]
image:
  path: "/assets/chess/3hw/overhead_prototype.jpg"
  alt: "The Chess Robot prototype on my coffee table! (With a stand in for the end effector I made years ago)"
pin: false
---

I've been busy applying for jobs and working on some other projects, but here's an update on the Chess Robot. Seems like things are getting a little busy! May not get to do these updates as often as I would like!

> **Work in Progress — Assembly and Prototyping Stage**  
> This post focuses on the assembly of the first **prototype parts** for the chess robot.  
>
> The design is evolving quickly — stay tuned for end effectors.
{: .prompt-tip}

## Design Goals

The goal for this iteration was to:
- Put the pieces we printed on the smooth rails and bearings to test fit and function
- Determine any missing design elements
- Redesigning printable components
- Validate assembly tolerances and motion clearances

---

## Smooth Rail System

<div style="display:flex; gap:10px; flex-wrap:wrap; justify-content:center;">
  <figure style="flex:1; min-width:280px;">
    <img src="/assets/chess/3hw/iterations.jpg" alt="part iteration" width="100%">
    <figcaption><em>Practice Makes Perfect</em></figcaption>
  </figure>
  <figure style="flex:1; min-width:280px;">
    <img src="/assets/chess/3hw/bearings.jpg" alt="View of bearing fit" width="100%">
    <figcaption><em>Bearings and sneak peak at Belt</em></figcaption>
  </figure>
  <figure style="flex:1; min-width:280px;">
    <img src="/assets/chess/3hw/endview.jpg" alt="Endview of idler mount" width="100%">
    <figcaption><em>Idler Mount endview</em></figcaption>
  </figure>
  <figure style="flex:1; min-width:280px;">
    <img src="/assets/chess/3hw/topview.jpg" alt="Topview of idler mount" width="100%">
    <figcaption><em>Idler Mount topview</em></figcaption>
  </figure>
</div>


I settled on an 8 mm rail system. Specifically 4 for the Y-axis (2 on each edge) and 2 on the X-axis. The pair of rails provides stability, which we will need for the end effector riding on a carriage. The mounting holes in the stepper motors, and therefore the smooth rail attachment fixtures that sit over the mounting screws are 31±0.2mm apart. Design details flowing from the constraints of the hardware, for now. If stability becomes an issue we can redesign and make them further apart. 

### Major Components Assembled
- **Linear rail system** 
  - **Motor Mount**
  - **Idler Mount**
  - **Y-Axis Carriage**
- **End effector Carriage** 
- **Rail Supports and Alignment Brackets**  

---

## Gantry and Motion Envelope

![motion envelope](/assets/chess/3hw/envlope.gif){: .right}
I wasn't able to track down my video of this step (and to give you a peak behind the curtain I have made significant progress since then), so enjoy this gif of the 3d model. 

---

## Prototype Parts

Some changes were required to the parts. 
- It became clear that the motor mount screw holes were inaccessible so I widened the clearance for a screwdriver. 
- The tolerance of printed parts was difficult to dial in. It depended on the orientation of the part being printed. I added a flex slot, which may come back to bite me if the gantry lacks rigidity. 

---

## Current Status 
![Spinning Stepper Motor](/assets/chess/3hw/stepperloop_cropped.gif){: .right}
- [x] Printed new carriage parts  
- [x] Mounted linear rails and bearings  
- [ ] Integrated stepper driver and GRBL test  
- [ ] Wired endstop sensors  
- [ ] Begin motion testing

#### **LET'S MAKE SOMETHING MOVE**
Here's a sneak peak of what I've been working on for the next post.


---


[← Back to Projects](/projects)

