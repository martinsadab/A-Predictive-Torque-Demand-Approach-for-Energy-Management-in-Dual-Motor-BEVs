# Energy Management for a Dual Motor Battery Electric Vehicle using Model Predictive Control
In this project, two separate strategy was deployed with the second building upon the first. 

First nonlinear model predictive controller is designed to optimally distribute torque in a 2 motor battery electric vehicle. This performs a 50:50 split of the torque supplied by the motors. 

Secondly, the nonlinear model predictive controller was augmented with rule-based logic which further processed the optimal torque produced by the MPC controller.
Results show that the MPC controller by equally spliting the torque improved the efficiency of the BEV on simulation with the WLTP Class 3, FTP75 and US06 drive cycles by 1.12%, 8.36% and 1.7% respectively. There was a reduction in controller performance by 1.35% of battery state of charge compared to the baseline in the HWFET drive cycle.

However on incorporating the rule-based logic with the MPC, the controller performance lead to increased efficiency in all the drive cycles by 3.25%, 8.86% and 3.55% for the WLTP Class 3, FTP75 and US06 respectively. This time there was also a 0.18% in HWFET drive cycle.

Compared to the baseline controller, While MPC strategy alone performed well in urban and/or aggressive drive cycle it didn't in highway/constant speed drive cycles. However, a combination of MPC and a rule-based approach showed improvements in all drive cycle.

## Model Description
The vehicle model is based on MathWork's "Electric Vehicle 2EM" Reference application. See the link for detailed description of the model.

## Prediction Model
The prediction model is the two states, tow input and 1 output model state function. The states are the speed (in m/s) and battery state of charge (in Ah). The inputs are the torque supplied by the two electric motors and the output is the speed of the vehicle. The speed is the output due to the tracking requirement of the controller.

## Cost Function
The cost function is a quadratic cost term which penalises deviation form the reference speed (x_1,ref) and minimises the control effort (u_1 and u_2).

## Constraints
The constraints are made of hard input constraints determined by the motor specification, slip ratio and normal load on the wheels. The slip ratior and normal load constraints are implicit to the prediction model. Hence they will be shown not be violated in the analytically from the prediction model.

## Solver
The C/GMRES solver is used to solve the nonlinear MPC problem at each time step.

## Rule-based Logic

## Results


