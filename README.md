# Energy Management for a Dual Motor Battery Electric Vehicle using Model Predictive Control
In this project, two separate strategy was deployed with the second building upon the first. 

First nonlinear model predictive controller is designed to optimally distribute torque in a 2 motor battery electric vehicle. This performs a 50:50 split of the torque supplied by the motors. 

Secondly, the nonlinear model predictive controller was augmented with rule-based logic which further processed the optimal torque produced by the MPC controller.
Results show that the MPC controller by equally spliting the torque improved the efficiency of the BEV on simulation with the WLTP Class 3, FTP75 and US06 drive cycles by 1.12%, 8.36% and 1.7% respectively. There was a reduction in controller performance by 1.35% of battery state of charge compared to the baseline in the HWFET drive cycle.

However on incorporating the rule-based logic with the MPC, the controller performance lead to increased efficiency in all the drive cycles by 3.25%, 8.86% and 3.55% for the WLTP Class 3, FTP75 and US06 respectively. This time there was also a 0.18% in HWFET drive cycle.

Compared to the baseline controller, While MPC strategy alone performed well in urban and/or aggressive drive cycle it didn't in highway/constant speed drive cycles. However, a combination of MPC and a rule-based approach showed improvements in all drive cycle.

## Model Description
The vehicle model is based on MathWork's "Electric Vehicle 2EM" Reference application. See the link for detailed description of the model [EV Reference Application](https://uk.mathworks.com/help/autoblks/ug/electric-vehicle-reference-application.html).

<img src="./Images/EV%20architecture.png" alt="Electric Vehicle Architecture" width="400">

## Prediction Model
The prediction model is the two states, two inputs and one output model state function. The states are the speed (in m/s) and battery state of charge (in Ah). The inputs are the torque supplied by the two electric motors and the output is the speed of the vehicle. The speed is the prediction model output due to the tracking requirement of the controller.

<img src="./Images/state-function.png" alt="State Function" width="400">

## Cost Function
This is specified as a scalar which penalizes deviation from the output reference values (tracking) and minimizes the control effort. Below is the discretized cost function:

<img src="./Images/cost-function.png" alt="Cost Function" width="500">

Where x<sub>ref</sub> is the reference trajectory of the vehicle which contains the drive cycle information, Q and R are weighting matrices for penalizing deviation from the reference signal and control effort minimization respectively. x and u are the state and input vectors respectively.

## Constraints
The constraints are made of hard input constraints determined by the motor specification, slip ratio and normal load on the wheels. The slip ratio and normal load constraints are implicit to the prediction model. Hence it will be shown analytically that they are not violated and confirmed from simulation results.

### Input Constraints
This includes constraints on the torque command to powertrain transmission
u<sub>i,min</sub> ≤ u<sub>i</sub>(k) ≤ u<sub>i,max</sub>    ∀k=0,1,2…p

Where u<sub>1,min</sub> = -450 Nm and u<sub>1,max</sub>= 450 Nm and u<sub>2,min</sub>= -450 Nm and u<sub>2,max</sub>= 450 Nm.
Where u<sub>1</sub> =  T<sub>em1</sub> and u<sub>2</sub> =  T<sub>em2</sub> 

### Normal Load (F<sub>z</sub>) Constraint

## Solver
The C/GMRES solver is used to solve the nonlinear MPC problem at each time step.

## Rule-based Logic

<img src="./Images/rule-based-logic.png" alt="Rule-based Logic" width="500">

## Results

## Bibliography


