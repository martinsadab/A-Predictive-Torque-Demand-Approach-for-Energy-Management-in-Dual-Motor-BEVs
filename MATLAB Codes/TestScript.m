mdl = 'ConfiguredVirtualVehicleModel';
open_system(mdl);

%%

%Test 1 
in(1) = Simulink.SimulationInput(mdl); 
in(1) = setParamforManeuverAndDriver('ConfiguredVirtualVehicleModel','Drive Cycle', 'FTP75', 'Longitudinal Driver',1, in(1), 'myEVehicle_end',1);

%%

%Test 2 
in(2) = Simulink.SimulationInput(mdl); 
in(2) = setParamforManeuverAndDriver('ConfiguredVirtualVehicleModel','Drive Cycle', 'HWFET', 'Longitudinal Driver',2, in(2), 'myEVehicle_end',1);

%%

%Test 3 
in(3) = Simulink.SimulationInput(mdl); 
in(3) = setParamforManeuverAndDriver('ConfiguredVirtualVehicleModel','Drive Cycle', 'US06', 'Longitudinal Driver',3, in(3), 'myEVehicle_end',1);

%%

%Test 4 
in(4) = Simulink.SimulationInput(mdl); 
in(4) = setParamforManeuverAndDriver('ConfiguredVirtualVehicleModel','Drive Cycle', 'WLTP Class 3', 'Longitudinal Driver',4, in(4), 'myEVehicle_end',1);
simout = parsim(in, 'ShowSimulationManager', 'on');
save('simout.mat','simout');
