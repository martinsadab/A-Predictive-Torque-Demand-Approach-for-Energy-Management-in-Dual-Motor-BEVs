function dxdt = nlvehicledynamicsRM(x,u)

% u(1) = Torquecmd1;
% u(2) = Torquecmd2;
% x(1) = vehicle speed v
% x(2) = SOC
% x(3) = Torque output1
%x(4) = Torque output2

m_v = 1623;
C_d = 0.389;
C_r = 0.01;
A_f = 2.27;
P_abs = 101325;
T_abs = 293.15;
R_abs = 287.05;
g = 9.81;           %acceleration due to gravity
f_dr = 3.32;
r = 0.333;
V_bat = 355;
Q_c = 296.382;


dxdt = zeros(2, 1); %preallocate

dxdt(1) = (u(1)*f_dr/r + u(2)*f_dr/r - (1/(2*R_abs*T_abs))*A_f*C_d*P_abs*x(1)^2 - 0.5*C_r*m_v*g)/m_v;

dxdt(2) = -(1/(V_bat*Q_c))*((u(1)*x(1)*f_dr/r) + u(2)*x(1)*f_dr/r);

dxdt = [dxdt(1); dxdt(2)];

end


