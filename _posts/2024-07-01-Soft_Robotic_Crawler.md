---
title: Soft Robotic Crawler — “Skippy”
description: Designed and built a bio-inspired soft robot capable of crawling using pneumatically actuated legs with anisotropic friction pads. Developed in Boston University’s Soft Robotics Lab to explore morphological computation and adaptable locomotion.
date: 2024-07-01 11:00:00
categories: [Soft Robotic Crawler, Robotics]
tags: [Silicone, Pneumatics, 3D Printing, Control Systems, Morphological Computation, Biomimicry, Research, Abaqus, CAD, Onshape]
image:
  path: "/assets/soft_robot/CrawlerTMB.PNG"
  alt: "Skippy the soft robotic crawler (early prototype)— silicone legs with ski-skin feet mounted to a flexible spine."
pin: false
---

> **Boston University Soft Robotics Lab – ME568 Final Project**  
> Co-developed with **George Knight, Liam Thirtyacre, and Tanvi Shingade** as part of *ME568: Soft Robotic Technologies* under Prof. Tommaso Ranzani.  
> Project: *“Skippy” – A modular, bio-inspired crawler for adaptive terrain navigation.*
{: .prompt-tip}

## Overview

![Crawler Birds-eye View](/assets/soft_robot/Crawler_Birds_eye.png){: .right}
**Skippy** is a soft robotic crawler that uses pneumatically actuated silicone legs and anisotropic friction “ski-skin” feet to traverse uneven terrain.  
The design draws inspiration from cockroach and turtle locomotion, where forward motion is achieved not by precision control, but by **morphological computation** — allowing the robot’s body and materials to do the thinking.


_Birds-eye view of Skippy showing the modular spine and paired leg actuators, And temporary fiber wrap support_

---

### Key Highlights

> - **Objective:** Develop a fast, adaptable soft robot for rough terrain navigation  
> - **Actuation:** Pneumatic silicone legs with anisotropic ski-skin feet  
> - **Structure:** Flexible PLA spine with replaceable vertebrae and modular leg attachments  
> - **Simulation:** Abaqus modeling of leg deformation and foot inflation  
> - **Performance:** Achieved ~11 cm/s (≈1 body length/s) with basic open-loop control  
> - **Material System:** Dragon Skin 10 and Blue Sapphire silicone, cast via parameterized molds  
{: .prompt-info}

---

## Inspiration and Design Philosophy

Skippy’s design began with an analysis of cockroach locomotion studies, which revealed that efficient movement can emerge from body mechanics rather than complex control.  
By using compliant silicone legs with friction-differentiated feet, Skippy “swims” across land like a small turtle or lizard.

Each leg’s shape and channel geometry were **parameterized in CAD (OnShape)** for rapid iteration, enabling redesigns for different terrains or gait experiments.
![ConOps](/assets/soft_robot/explainer_slide.png)


---

### Leg Actuators  
Legs were fabricated using **multi-layer silicone casting**:

- Outer layers: *Dragon Skin 10*  
- Inner layer: *Blue Sapphire Silicone (30A)*  
- Cured at 70°C in sequential layers to ensure bonding integrity  

The design achieved a **40° bend at minimal pressure** and enough stiffness to lift the robot over small obstacles.

<table>
  <tr>
    <td style="width:50%; text-align:center;">
      <img src="/assets/soft_robot/Leg_Molds.png" alt="Leg Molds" width="100%"><br>
      <em>Two-part mold design for casting Dragon Skin <br> and Blue Sapphire silicone.</em>
    </td>
    <td style="width:50%; text-align:center;">
      <img src="/assets/soft_robot/Bending_Leg.gif" alt="Bending Leg" width="100%"><br>
      <em>Short clip demonstrating a single leg’s full actuation cycle.</em>
    </td>
  </tr>
</table>

---
### Feet: Anisotropic Friction

![Crawler Rice](/assets/soft_robot/Crawler_Rice.png)
_Test on granular media demonstrating anisotropic friction from ski-skin feet._

Skippy’s most effective configuration used *ski-skin* as a frictional surface — the same material used for alpine climbing skins.  
This yielded a measured friction ratio of **μₗ/μₛ = 4.7**, enabling smooth forward motion and minimal backslip.

---

### Spine and Vertebra

![Bendy Spine](/assets/soft_robot/Bendy_spine.jpeg)
_Flexible PLA spine with 3D printed vertebrae for modular leg placement._

The crawler’s body used a **repurposed shipping strap** as the flexible spine—rigid in one axis and compliant in another.  
The vertebrae could slide or be replaced to tune gait spacing for terrain adaptation.

---

## Simulation and Modeling

![Abaqus Simulation](/assets/soft_robot/Abaqus_leg.PNG)
_Abaqus finite-element simulation showing leg deformation under pressure._

A **finite-element model in Abaqus** validated the pneumatic chamber geometry and predicted stress accumulation at channel corners.  
Material properties were modeled using **Yeoh hyperelastic coefficients** for large deformations.

---

## Testing and Performance

Testing included:
- **Bending angle vs. pressure** – linear relationship confirmed actuator reliability  
- **Soft resistor feedback** – correlated voltage with bending for sensorized control  
- **Grip test** – each leg held 0.86 N before slipping (see below)

![Grip Test](/assets/soft_robot/grip.png)
_Single leg gripping a loaded cup until slip threshold._

![Crawler in Motion](/assets/soft_robot/Soft_Crawler.gif)
_4 legged competition run for decreased turn radius_

![Competition Demo](/assets/soft_robot/Hype.gif)
_Early testing of Skippy's movement modes_

![Competition Demo](/assets/soft_robot/SpeedyCrawl2.gif)
_Early testing of cyclic pressure limits_

---

## Lessons Learned

> - Modularity reduced iteration time dramatically.  
> - Pneumatic consistency mattered more than simulation precision.  
> - Silicone layer bonding was the most common failure point.  
> - Embodied intelligence reduced need for control logic.  

---

## Future Work

Next-generation improvements include:
- **Bi-stable legs** for faster motion and reduced air consumption  
- **Soft vertebrae** to eliminate rigid components  
- **Climbing via cam-inspired mechanisms**  
- Integration of **feedback control** for terrain adaptation  

---

![Screenshot 2](/assets/soft_robot/Screenshot_2024-09-30.png)
_Team Skippy post-competition photo_ 

---

## Full Technical Report

<iframe src="/assets/soft_robot/ME568_G2_Final_Report.pdf#toolbar=0" width="100%" height="600px"></iframe>

[← Back to Projects](/projects)
