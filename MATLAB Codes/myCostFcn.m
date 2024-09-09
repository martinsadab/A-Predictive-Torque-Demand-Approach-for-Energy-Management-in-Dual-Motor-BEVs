function J = myCostFcn(stage, x, u,VehRefout)
   
    %Extract Desired State
    xref = VehRefout;

    % Extract and Initialize Weighting Matrices
    Q = 1000;  % State Weight Matrix
    R = diag([0.1 0.1]);% Control Weight Matrix
    
    % Calculate cost
    J = 0.5*(x(1)-xref).'*Q*(x(1)-xref) + 0.5*u.'*R*u;
    
end