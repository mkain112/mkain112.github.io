---
title: "Le Robot 6-DoF Arm (SO-101) — Teleoperation Setup"
description: "Leader–follower 6-DoF robotic arms with real-time mirroring"
date: 2026-05-12
categories: [Le Robot, Robotics]
tags: [robotics, teleoperation, 3d-printing, controls]
image:
  path: assets/lerobot/robochess.jpg
  alt: Le Robot 6-DoF arm leader-follower setup
pin: false
---

## Overview

In order to teach myself as much as possible about robotics, I’ve been working through the open-source **Le Robot** 6-DoF arm platform, starting with the SO-101 configuration. The current setup consists of a 3d printed and assembled **leader–follower pair**, with real-time mirroring between the two arms.

Move one arm, and the other follows. Simple in concept, but I intend to use it to learn more about mechanics, electronics, and control all at once.

## Current Progress

- Printed and assembled both leader and follower arms  
- Named Labeled and Calibrated servo joints  
- Brought up basic actuation and joint control  
- Established real-time mirroring between the two systems  
- Verified full 6-DoF motion across the workspace  

 CAD, fabrication, wiring, and debugging until something real starts behaving correctly.

## Next Steps

- Add a camera and train motions with ML and simulations
- Clean up motion (filtering, smoothing, reducing jitter)  
- Add sensing (force, better position feedback)  
- Record and replay motion sequences  

Longer term, this will likely turn into a platform for experimenting with control strategies and manipulation tasks, not just mirroring motion.

Maybe Ill strap it to my XY gantry and use it for my chess robot. 
