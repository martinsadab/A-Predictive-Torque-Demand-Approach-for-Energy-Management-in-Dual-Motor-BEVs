function [A,B] = nlvehicledynamicsjacobianRM(x,u)

m_v = 1623;
C_d = 0.389;
% C_r = 0.01;
A_f = 2.27;
P_abs = 101325;
T_abs = 293.15;
R_abs = 287.05;
% g = 9.81;           %acceleration due to gravity
f_dr = 3.32;
r = 0.333;
V_bat = 355;
Q_c = 296.382;


    % First row of the Jacobian
    A = zeros(2,2);
    A(1,1) = -((A_f * C_d * P_abs * x(1))/ (R_abs * T_abs*m_v));
    A(1,2) = 0;
    
    % Second row of the Jacobian
    A(2,1) = -(f_dr*(u(1)+u(2)))/(Q_c*V_bat*r);
    A(2,2) = 0;
 
    
    % Compute the B matrix
    B = zeros(2,2);
    B(1,1) =  f_dr/(m_v*r);
    B(1,2) =  f_dr/(m_v*r);
    B(2,1) = -(f_dr*x(1))/(Q_c*V_bat*r);
    B(2,2) = -(f_dr*x(1))/(Q_c*V_bat*r);

    % C = [1 0 0 0];
    % D = 0;
end