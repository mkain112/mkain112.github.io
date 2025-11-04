---
title: Autonomous Blimp Independent Study
description: Designed and built a controllable blimp testbed for testing new soft-robotic propulsion technologies at BU’s Morphable Bio-Robotics Lab. Collaborated with George Knight to develop a motion-capture–guided control system and a bistable magnetic jet propulsion concept for lighter-than-air vehicles.
date: 2024-12-15 14:15:16
categories: [Autonomous Blimp, Robotics]
tags: [MATLAB, Onshape, Design, Controls, Rapid Prototyping, ESP32, Motion Capture, CAD]
image:
  path: /assets/blimp/MitchnGeorgeTmb.PNG
  alt: "Mitch and George Knight (left) pose with an early autonomous blimp prototype."
pin: true
---

> **Boston University Morphable Bio-Robotics Lab – Independent Study**  
> Conducted under the supervision of Prof. Tommaso Ranzani at the RASTIC Motion Capture Facility.
{: .prompt-tip}

## Autonomous Blimp Co-Dependent Study

### Overview

As part of Boston University’s **Morphable Bio-Robotics Lab**, George Knight and I developed a lightweight, controllable blimp testbed for evaluating new **soft-robotic propulsion technologies**.  
Our lab’s underwater bistable jet propulsion system showed promise for aerial use, but we needed a **buoyant airborne platform** to test it safely.

We designed and constructed an **autonomous blimp** for operation inside **RASTIC’s motion capture room**, providing high-precision 3D localization and feedback control without requiring onboard sensors.

---

### Key Highlights

> **Project Summary**
>
> - **Objective:** Create a buoyant aerial testbed for new soft-robotic propulsion concepts  
> - **Environment:** RASTIC motion capture lab at Boston University  
> - **Propulsion:** Quad-propeller system, adaptable for bistable jet actuation  
> - **Control Framework:** MATLAB-based Model Predictive Control (MPC)  
> - **Outcome:** Demonstrated controllable, stable flight using external motion tracking  
{: .prompt-info}

---

### Motivation

The project began as an effort to find a safe, repeatable way to test **unconventional actuation systems**.  
While our lab’s propulsion methods were originally developed for underwater soft robots, we realized they could also be applied in air.

Testing in air offers a faster iteration cycle — no water tanks, easier instrumentation, and less damping — making it ideal for prototyping.  
Our solution was to create a **helium blimp testbed**: lightweight, modular, and large enough to capture the dynamics of real soft robots while still easy to operate indoors.

---

### My Role

As **Lead Mechanical Designer**, I handled the structural design, envelope construction, and system integration of the blimp prototype.  
George focused on modeling, simulation, and developing the nonlinear control algorithms that governed the blimp’s stability and path tracking.

Over the course of the semester, we designed, built, and tested multiple prototypes, iterating quickly between CAD, fabrication, and flight trials.

![Autonomous Blimp Concept](/assets/blimp/concept.png){:.right}  
*A concept render showing control architecture and sensor feedback flow.*

- Concept generation and trade studies  
- CAD modeling and material testing  
- Envelope fabrication and helium balancing  
- Flight testing in RASTIC’s motion capture space  

---

### Design & Testing

The blimp used four bidirectional DC motors for thrust and control, arranged in a tetrahedral layout for 6-DOF maneuvering.  
A global reference frame provided by RASTIC’s **optical motion capture system** allowed precise position and orientation feedback.

This setup enabled us to test various control strategies — **PID**, **LQR**, and **Model Predictive Control (MPC)** — without relying on onboard sensors or heavy computing hardware.

![Desktop View](/assets/blimp/Inflated.png) _Inflated Test Blimp, Checking for leaks_

---

### Future Scaling

Our long-term goal is to replace the propellers with the **magnetically actuated bistable jets** we’ve been developing for underwater systems.  
This would make the blimp the **first demonstration of a bistable magnetic propulsion system** in a lighter-than-air vehicle — an important step toward fully soft, shape-morphing aerial robots.

---

### Research Papers

Below are the full technical reports produced as part of the study:  
(George’s paper focuses on dynamics and control; mine on design, construction, and experimental methods.)

<div style="display:flex; flex-wrap:wrap; gap:10px; justify-content:center;">
  <embed src="/assets/blimp/Independent_Study.pdf#toolbar=0" type="application/pdf" width="48%" height="600px">
  <embed src="/assets/blimp/Independent_Submission.pdf#toolbar=0" type="application/pdf" width="48%" height="600px">
</div>

---

### Reflection

This project blended **mechanical design, control theory, and soft robotics** in a way that challenged us to think beyond conventional aircraft.  
Working side-by-side with George, we combined hands-on prototyping with advanced modeling to build a functional platform for testing the next generation of propulsion systems.

It also served as a reminder that sometimes, the most creative ideas emerge when you build something that just barely works — and then make it better.

---

[← Back to Projects](/projects)

