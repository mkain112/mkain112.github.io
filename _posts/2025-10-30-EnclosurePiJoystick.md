---
title: Chess-Playing Robot — Enclosure, Raspberry Pi, Joy Sick, and Buttons!
description: Quality of life updates. Basic Enclosure, running locally on a Raspberry Pi, Buttons, and Joystick
date: 2025-10-30 12:00:00
categories: [Chess Robot, Enclosure]
tags: [CNC, GRBL, Universal Gcode Sender, Robotics, Prototyping, Joystick, Organization, Cats]
image:
  path: "/assets/chess/6pi/frontview.jpg"
  alt: "It GLOWWWSSS"
pin: false
---

> **Work in Progress — Organization Stage**  
> This post focuses on giving the robot a basic enclosure, organizing the wiring, and getting it running on a Raspberry Pi.
{: .prompt-tip}

## **From Last Post** 
![Cable Management](/assets/chess/6pi/cable chain.jpg){: width="300" .right}

- [x] Integrate to run on Raspberry Pi
- [ ] Re-design and print permanent mountings for end stop switches (low priority)
- [x] Maybe add a joystick and arcade buttons?!? 
  - [x] Make one of the buttons a Kill Switch or at least a stop
- [x] Add cable-chain mounts + strain relief  
  - [x] Cable management for X-carriage
  - [x] Cable management for Y-axis
- [x] Basic Electronics Enclosure 

Pretty productive! To be honest I don't much care that the end stops are still hot-glued in place. They are doing their job and it will be easier to make a permanent spot for them once the rest of the mechanical design is completed. The cable chain pictured at the right is the only thing I didn't design myself so far... and it irks me. I'll probably replace it. I also used some cable organizer tubing for the X-Carriage wires. That also needs work. 

## BUTTONS
This started out as an impulse buy at microcenter and I am so happy I did it. The buttons and the joystick came in a set with a control board... and now my robot essentially functions as a crane machine. Its a lot of fun. I can chase the kitten wherever I want now. And its useful for calibration and testing. It wasn't just plug and play unfortunately, I had to build a profile that UGS could understand. But now that we have it its super smooth. 

### Layout
![Control Pannel](/assets/chess/6pi/Button plate.jpg)
_Zoom in on the control panel_

The numbers on the buttons are the numbers they corrispond to on the circuit board and that was useful for building the mapping profile for UGS. THEN I gave them functions in UGS. This eventually wont be necessary once we are running the robot off pure code, but it's a nice to have for prototyping and testing. And I have a ersatz e-stop... In case of Kitten encroachment. I'll eventually buy a real one to cut power but this is good enough for now. 

Here's a rundown:
0. Soft Reset. Necessary for normal CNC/UGS start up.
1. Connect. Link the control board to UGS.
2. Center. Jog the end effector to the center of the work space.
3. Pause. Temporary hold on whatever command is being executed.
4. STOP. 
5. Unlock. Necessary for normal CNC/UGS start up and after a fault.
6. Reserved for "pick-up piece".
7. Reserved for "put-down piece".
8. Send. Play button for paused commands.
9. Home. Resets the machine limits by using end stops at the origin.
{: start="0"}

## *Technically An Engineer*

I was speaking to a friend who does video editing and he suggested I start a youtube series making this robot. Not a bad idea, but filming and editing sounds like a nightmare. He seemed interested in working on the project with me so we brain-stormed some ideas for a channel name. We came up with "Technically An Engineer" since I have my MS in Mechanical Engineering... but no job. Bleak? Maybe. But also pretty funny. It was available on youtube so we'll see if anything comes of it. But, that's why it is printed on the control interface. 
![Wide Shot](/assets/chess/6pi/Wideshot.jpg)
_Wide shot of the bot in all its current glory... more glory to come_

---

## Giant Running TO-DO List

This is the part where I post the list again... borrowed directly from the last post to maintain continuity — and update it.... but it keeps getting longer and longer. Ill keep it separate somewhere else. Maybe make it it's own post. But for now we skip it. 

## **For Next Post** 
- [ ] Hall-effect Sensor Test
- [ ] Mitch's Crazy Tube idea
- [ ] Design own cable Chain
- [ ] Fix Cable Wrapper
- [ ] Good E-Stop
- [x] Pet Kitten
- [ ] Re-design and print permanent mountings for end stop switches (low priority)

![Cat left. Mouse Right.](/assets/chess/6pi/kittenANDmouse.jpg)
_Cat left. Mouse Right._


---

[← Back to Projects](/projects)

