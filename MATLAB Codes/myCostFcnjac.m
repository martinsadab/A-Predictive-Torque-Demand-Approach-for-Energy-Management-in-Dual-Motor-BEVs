function [Gx, Gmv] = myCostFcnjac(stage, x, u, VehRefout)

% Extract Desired State
xref = VehRefout;

% Extract and Initialize Weighting Matrices
Q  = 1000;% State Weight Matrix
R  = diag([0.1 0.1]); % Control Weight Matrix

    % Calculate Jacobian matrices for intermediate stages
    Gx  = [Q*(x(1) - xref);0];
    Gmv = R*u;

end