---
title: Bert (Alberto) — The Autonomous Hovercraft
description: Designed and built an autonomous hovercraft using nonlinear control, digital twin simulation, and onboard sensing. Bert won the class-wide competition in BU’s Motion Planning course and was later featured at the RASTIC inauguration.
date: 2024-05-10 10:30:00
categories: [Autonomous Hovercraft, Robotics]
tags: [Path Planning, Controls, Lidar, Digital Twin, Embedded Systems, Onshape, CAD, 3D Printing]
image:
  path: "/assets/Bert/digital_twin.png"
  alt: "Digital twin model of the autonomous hovercraft used for testing control algorithms."
pin: false
---
> **Boston University – ME461: Motion Planning**  
> Co-developed with **George Knight** under **Prof. Roberto Tron**.  
> Our hovercraft, affectionately named *Bert (Alberto)*, won the class-wide competition among 40+ autonomous vehicles and was later showcased at BU’s **RASTIC (Robotics & Autonomous Systems Teaching Innovation Center)** inauguration.
{: .prompt-tip}
> This is a project stub. I need to find more pictures from the project to update.
{: .prompt-warning}

## Overview

**Bert** is an autonomous hovercraft designed and built from scratch as part of the graduate-level course **ME461: Motion Planning** at Boston University.  
The project integrated **nonlinear control, path planning, and state estimation** into a fully functional system capable of following waypoints and adapting to sensor feedback.

![Hovercraft Natural Habitat](/assets/Bert/natural_habitat.png)
_Bert in his “natural habitat” — a low-friction test surface in the BU Robotics Lab._

---

## Key Highlights

> - **Objective:** Develop an autonomous hovercraft for motion planning and control competition  
> - **Hardware:** Dual-thrust, dual-vane hovercraft with onboard LiDAR and IMU  
> - **Controls:** Nonlinear control system using Jacobian-based state feedback  
> - **Planner:** Quadratic potential field path planner in 6D state space  
> - **Sensing:** Accelerometer and LiDAR-based localization with rolling-shutter correction  
> - **Result:** First place in the class competition; showcased at BU’s RASTIC event  
{: .prompt-info}

---

## Design and Operation

Bert’s behavior follows the classic **OODA Loop** (Observe → Orient → Decide → Act), adapted from aviation decision theory to robotics.

![OODA Loop](/assets/Bert/OODA_loop.png)
_Observe–Orient–Decide–Act loop implemented as Bert’s high-level control architecture._

The hovercraft’s challenge was **underactuation** — four control inputs (two thrusts, two vane angles) but only three degrees of freedom.  
This required solving a nonlinear, underdetermined system of equations in real time.

---

## Sensing and Localization

Bert’s navigation relied on a combination of **LiDAR** and **IMU** data.

<div style="display:flex; gap:10px; flex-wrap:wrap; justify-content:center;">
  <figure style="flex:1; min-width:280px;">
    <img src="/assets/Bert/lidar_room.png" alt="Lidar Scan Room" width="100%">
    <figcaption><em>LiDAR mapping of a room during initial scanning.</em></figcaption>
  </figure>
  <figure style="flex:1; min-width:280px;">
    <img src="/assets/Bert/Lidar_hall.png" alt="Lidar Scan Hallway" width="100%">
    <figcaption><em>LiDAR scan of hallway environment used for navigation testing.</em></figcaption>
  </figure>
</div>

LiDAR readings were used to calculate heading and lateral displacement, while accelerometer data provided forward velocity estimates.  
To compensate for **rolling-shutter LiDAR delay**, Bert used **gradient descent on successive LiDAR frames** to minimize position error and maintain real-time state estimates.

---

## Path Planning and Control

Path planning was implemented through a **quadratic potential field planner** in a six-dimensional state space  
\((x, y, \theta, \dot{x}, \dot{y}, \dot{\theta})\).  
The planner’s goal was to minimize both **positional error** and **energy expenditure**, balancing efficiency and stability.

![Bert Dynamics](/assets/Bert/bert_dynamics.png)
_Free-body diagram of Bert showing dual-fan thrust and control vane configuration._

The system originally solved for control inputs using **gradient descent**, but was later reformulated using the **Jacobian matrix** with an added **energy-efficiency constraint** as a fourth equation, producing a stable, well-conditioned solution.

---

## Simulation and Digital Twin

![Digital Twin](/assets/Bert/digital_twin.png)
_MATLAB-based digital twin used for closed-loop simulation and controls validation._

A detailed **digital twin** of Bert was built in MATLAB/Simulink to test controllers before deploying them to hardware.  
This virtual model simulated thrust, drag, noise, and LiDAR inputs, allowing rapid iteration on the control architecture.

---

## Hardware and Integration

The physical hovercraft included:
- Raspberry Pi 4B (central control and computation)  
- Two brushless DC fans with independent servo-controlled vanes  
- RPLiDAR 2D 360° scanner  
- MPU-6050 IMU sensor  
- Custom 3D-printed mounts and skirt system  

![Control Vanes](/assets/Bert/control_vains.png)
_Control vane assembly providing independent yaw and translation control._

![Hardware in Loop](/assets/Bert/hardwearInLoop.gif)
_Hardware-in-the-loop test of an early Bert prototype running simulated trajectory tracking._

---

## Results and Testing

Bert’s control framework successfully allowed stable navigation through simulated and physical corridors, reaching all waypoints without wall collisions.  
The control strategy proved robust against noise and underactuation.

![Natural Habitat](/assets/Bert/natural_habitat.png)
_Field test setup demonstrating full thrust and vane control._

Bert’s system achieved the **highest performance score** among over 40 submissions and was later featured during the **BU RASTIC inauguration**, representing student-led innovation in autonomous systems.

---

## Lessons Learned

> - Real-time optimization bridges the gap between theory and hardware.  
> - Digital twins accelerate testing and minimize hardware risk.  
> - LiDAR-IMU fusion with rolling-shutter correction significantly improves localization.  
> - Physical tuning and control parameterization require iterative validation.  

---

## Gallery

| | |
|:--:|:--:|
| ![OODA Loop](/assets/Bert/OODA_loop.png) | ![LiDAR Hallway](/assets/Bert/Lidar_hall.png) |
| _Control hierarchy (OODA)_ | _LiDAR scan used for orientation and localization_ |
| ![Control Vanes](/assets/Bert/control_vains.png) | ![Digital Twin](/assets/Bert/digital_twin.png) |
| _Servo-driven vane assembly_ | _MATLAB digital twin simulation_ |
| ![Bert in Habitat](/assets/Bert/natural_habitat.png) | ![Werewolf](/assets/Bert/Werewolf.jpg) |
| _Bert in final testing environment_ | _Team photo post-competition (Mitch and George, center)_ |

---

## Full Technical Report

<iframe src="/assets/Bert/Bert.pdf#toolbar=0" width="100%" height="600px"></iframe>

[← Back to Projects](/projects)

