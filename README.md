# AI-FUZZY-MATLAB
Artificial Intelligence Project of **Thermal system**

## Project description:
- Thermal systems have served the humanity 
starting from a simple ceiling fan to higher industrial applications such 
as thermal plant. This project work aims at providing an appropriate 
software-based control system because it provides computer featured 
applications, prevents rapid signal loss, reduces noise while also 
significantly improves the steady state and dynamic response of the 
heater. In this project, we have worked on Thermal system due to its 
significant advantages over other types of thermal systems.

![2024-05-15 (4)](https://github.com/AdhmElzewel/AI-FUZZY-MATLAB/assets/108629950/ad27e98a-0a23-4cb7-8a72-15fb4e84b139)
## SYSTEM
![image](https://github.com/AdhmElzewel/AI-FUZZY-MATLAB/assets/108629950/0c50fdeb-3178-4388-83ef-e7a66ee6f33c)

## Project idea:
Thermal systems work when their temperature is controlled precisely. For analysis a lot of issues come 
across such as changes in specific heat, variable inputs, noise propagation and certain unknown parameters 
which result in unpredictable output of heaters. Moreover, a reliable load regulating response with low and 
almost negligible noise propagation is necessary for a proficient system.
Our research work has first analyzed Fuzzy and ANFIS controller separately and then we have interpreted 
both outcomes to show a comparison that which technique should be used in controlling speed of thermal 
system.
A system should always be designed for less percentage overshoot and less rising time. Often there is a 
contradiction when adjusting percentage overshoot for minimum rising time. Different research work has 
been done for lessening percentage overshoot and minimizing rising time. 
The comparative study in this research paper has shown that ANFIS controller is much better than Fuzzy 
controller as it gives a percentage overshoot of 8.2% than that of fuzzy controller which is 14.4%. 
Percentage overshoot indicates an outcome when a signal surpasses its steady-state value. ANFIS technique 
gives a lower percentage overshoot because of phases such as epoch and training involved in its simulation

## Thermal system model:
Input data: is the error from the system
Output data: heat from system
Two of these blocks restore data in the workspace and take a sample in every 0.001s and made the final 
time 180s
So, the total data will be 180,000 divided for two rows input and output 
We trained the hole data 180,000 in the model and then made another data for testing 36,000 sample and 
zero for validation
The steps were to set a refence point was 30 C and made a disturbance was 10 C so it will effect the system 
also 
We used normal PID to auto tune the system to get the optimization as shown in figure
The input in the system is power and the two white arrows like transducer to convert heat to watt to control 
the system and did the same for the output the output in kelvin so we subtracted 273 so the output will be 
in degree C

![image](https://github.com/AdhmElzewel/AI-FUZZY-MATLAB/assets/108629950/d76afa05-fda1-405b-8aee-36bf1cce4353)

## **CONTROL THE SYSTEM**
github link: https://github.com/AdhmElzewel/PID-project.git

## ANFIS
ANFIS is a hybrid network which consists of a combination of two controllers; Fuzzy 
logic and neural network. These both controllers result in a single entity which enhances 
the features of controlling machine than using a single controller alone.

![image](https://github.com/AdhmElzewel/AI-FUZZY-MATLAB/assets/108629950/39a59510-96a3-4e3e-8cba-c9b926843569)

ANFIS Editor for Thermal system: 
Generate FIS: FIS model can be generated by using any one of the following techniques.
1) Grid partition: It generates data via grid portioning.
2) Sub clustering: It generates data by analyzing the number of clusters in the given set of data. 
ANFIS structure can be observed clicking option of “Structure” 
Training and validation of FIS: This process trains the FIS model generated, repeats itself until and 
unless required number of epochs is reached and goal of training error is attained. Put epochs = 25
as given in load data, then “Train now” 
Testing of the FIS is carried out by clicking “Test now”.

## ANFIS System Identification
ANFIS Controller Simulation Process:

![image](https://github.com/AdhmElzewel/AI-FUZZY-MATLAB/assets/108629950/d30dd4b2-beae-41c3-83e9-4b82626edd72)

##  Fuzzy Controller Implementation Process
A Fuzzy Logic Controller (FLC) is formed by interpreting the analog or continuous values of 0 and 1 
despite analyzing the digital values. FLC basically controls a process by assimilation of expert human 
knowledge into a pattern containing a relationship between inputs and outputs. Fuzzy control rules (mostly 
conditional rules) are then applied on the pattern of input and output.
First, type “fuzzy” in command window or must click on “start” menu and open the “fuzzy editor” from 
“toolboxes”. Now click “Edit” and add an input from “Add variable”. Now you can select the “sugeno” 
FIS from “File”. There are two types of Fuzzy logic systems which can be used in control systems: 
Mamdani - Sugeno.
Fuzzy controller has four main processes to operate:
1. Fuzzification;
2. Fuzzy base rules;
3. Interference engine;
4. Defuzzification

![image](https://github.com/AdhmElzewel/AI-FUZZY-MATLAB/assets/108629950/f8e2d125-af6d-4418-a1a1-6f67198aadb2)

## PID-like-Fuzzy model

![image](https://github.com/AdhmElzewel/AI-FUZZY-MATLAB/assets/108629950/c2cecb29-c540-4d71-9b06-1006641c7a31)

## GENETIC ALGORITHM Optimization
There are different methods to optimize the system first there is a tool box called GA that we can already 
use to get the PID values and there is another method by using codes as we did
![image](https://github.com/AdhmElzewel/AI-FUZZY-MATLAB/assets/108629950/a309ecb1-c783-4e68-b5a6-147a30e9b598)

### In our project we used the coding method to get the optimum value for the first trial the result is shown 
![image](https://github.com/AdhmElzewel/AI-FUZZY-MATLAB/assets/108629950/0d449b5b-43d1-451f-9ddb-7b528adc63c2)

## Model after Optimization
After that the model with the GA parameters is shown below
![image](https://github.com/AdhmElzewel/AI-FUZZY-MATLAB/assets/108629950/d78d1ec4-1857-492f-98dc-6bb67e784d34)

## Conclusion
The comparative study of Fuzzy Logic Controllers (FLC) and Adaptive Neuro-Fuzzy Inference Systems 
(ANFIS) for temperature control in separately excited thermal systems reveals significant advancements in 
control performance over traditional methods. Both FLC and ANFIS demonstrated enhanced ability to 
manage the nonlinearities and uncertainties inherent in thermal systems, thereby ensuring more precise and 
accurate temperature regulation.
Fuzzy Logic Controllers, with their heuristic rule-based approach, proved effective in handling the 
complexities of thermal systems, providing robust stability and reasonable response times. However, 
ANFIS outperformed FLC by leveraging its hybrid structure that combines neural networks with fuzzy 
logic. This combination allowed ANFIS to adapt dynamically to changing system conditions, resulting in 
superior precision, faster response times, and improved overall adaptability.
The findings suggest that while FLC is a reliable and effective method for temperature control, ANFIS 
offers enhanced capabilities that can lead to better control performance in demanding industrial 
applications. This study underscores the potential of advanced control strategies in optimizing the 
efficiency and effectiveness of thermal systems, ultimately contributing to improved industrial processes 
and outcomes.
