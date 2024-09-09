%% This file is autogenerated ...

%% This file contains virtual vehicle configuration information.

%% This file is saved at time 03-Sep-2024 18:28:20
                     ConfigInfos.Version = '23.2.0.2599560 (R2023b) Update 8';
                   ConfigInfos.SessionID = 'myEVehicle_end.m';
                   ConfigInfos.LicStatus = [1,1,1,1,1,1,1,1];
                ConfigInfos.ProjPathText = 'C:\Users\Hp\MATLAB\Projects\examples';
                    ConfigInfos.ProjPath = 'C:\Users\Hp\Desktop\Project_MATLAB_CODES\VirtualVehicle\VirtualVehicle';
                 ConfigInfos.SessionName = 'myEVehicle_end';
               ConfigInfos.TemplateModel = 'VirtualVehicleTemplateArchitecture';
          ConfigInfos.TemplatePlantModel = 'SimulinkPlantModelsArchitecture';
                 ConfigInfos.ConfigModel = 'ConfiguredVirtualVehicleModel';
            ConfigInfos.ConfigPlantModel = 'ConfiguredSimulinkPlantModel';
                    ConfigInfos.VehClass = 'PassengerCar';
                     ConfigInfos.VehArct = 'Electric Vehicle 2EM';
                      ConfigInfos.VehDyn = 0;
              ConfigInfos.PlantModelType = 'Simulink';
                  ConfigInfos.VehChassis = 'Vehicle Body 3DOF Longitudinal';
%% Vehicle Configuration
ConfigInfos.FeatureVariantSelectedMap=containers.Map;
ConfigInfos.FeatureVariantSelectedMap('Active Differential Control') = 'No Control';
ConfigInfos.FeatureVariantSelectedMap('Axle Interconnect') = 'No Interconnect';
ConfigInfos.FeatureVariantSelectedMap('Battery Management System') = 'Battery Management System';
ConfigInfos.FeatureVariantSelectedMap('Brake Control Unit') = 'Open Loop';
ConfigInfos.FeatureVariantSelectedMap('Brake Type') = 'Disc';
ConfigInfos.FeatureVariantSelectedMap('Chassis') = 'Vehicle Body 1DOF Longitudinal';
ConfigInfos.FeatureVariantSelectedMap('DC-DC Converter') = 'No DC-DC Converter';
ConfigInfos.FeatureVariantSelectedMap('Drive Shaft Torque Routing') = 'Two Actuator AWD';
ConfigInfos.FeatureVariantSelectedMap('Driver') = 'Longitudinal Driver';
ConfigInfos.FeatureVariantSelectedMap('Drivetrain') = 'All Wheel Driven by 2EM';
ConfigInfos.FeatureVariantSelectedMap('Drivetrain Wheel Speed Route') = 'Bus';
ConfigInfos.FeatureVariantSelectedMap('Electric Machine 1') = 'Electric Vehicle 2EM';
ConfigInfos.FeatureVariantSelectedMap('Electric Machine 2') = 'Electric Vehicle 2EM';
ConfigInfos.FeatureVariantSelectedMap('Electric Machine 3') = 'Electric Vehicle 3EM Dual Front';
ConfigInfos.FeatureVariantSelectedMap('Electric Machine 4') = 'Electric Vehicle 4EM';
ConfigInfos.FeatureVariantSelectedMap('Electric Motor') = '2EM';
ConfigInfos.FeatureVariantSelectedMap('Electrical System') = 'Electrical System';
ConfigInfos.FeatureVariantSelectedMap('Energy Storage') = 'Mapped Battery (Electric Vehicle 2EM)';
ConfigInfos.FeatureVariantSelectedMap('Engine') = 'No Engine';
ConfigInfos.FeatureVariantSelectedMap('Engine Control Unit') = 'No Engine Controller';
ConfigInfos.FeatureVariantSelectedMap('Environment') = 'Ambient Conditions';
ConfigInfos.FeatureVariantSelectedMap('Front Axle Compliances') = 'Axle Compliances';
ConfigInfos.FeatureVariantSelectedMap('Front Differential System') = 'Open Differential';
ConfigInfos.FeatureVariantSelectedMap('Powertrain') = 'Electric Vehicle 2EM';
ConfigInfos.FeatureVariantSelectedMap('Rear Axle Compliances') = 'Axle Compliances';
ConfigInfos.FeatureVariantSelectedMap('Rear Differential System') = 'Open Differential Rear';
ConfigInfos.FeatureVariantSelectedMap('Sensor') = 'No IMU Sensor';
ConfigInfos.FeatureVariantSelectedMap('Solver Configuration') = 'Solver Configuration';
ConfigInfos.FeatureVariantSelectedMap('Steering System') = 'No Steering';
ConfigInfos.FeatureVariantSelectedMap('Suspension') = 'No Suspension';
ConfigInfos.FeatureVariantSelectedMap('Tire') = 'MF Tires Longitudinal';
ConfigInfos.FeatureVariantSelectedMap('Tire Data') = 'MF Tires Longitudinal';
ConfigInfos.FeatureVariantSelectedMap('Transmission') = 'Ideal Fixed Gear Transmission';
ConfigInfos.FeatureVariantSelectedMap('Transmission Control Unit') = 'Driver Pass Through';
ConfigInfos.FeatureVariantSelectedMap('Variant Source') = 'Multi Actuator AWD';
ConfigInfos.FeatureVariantSelectedMap('Vehicle Architecture') = 'Electric Vehicle 2EM';
ConfigInfos.FeatureVariantSelectedMap('Vehicle Control Unit') = 'EV 2EM';

%% Test Plan

             ConfigInfos.TestPlan{1}.Num = 1;
          ConfigInfos.TestPlan{1}.Source = 'Scenario.sldd';
            ConfigInfos.TestPlan{1}.Name = 'Drive Cycle';
           ConfigInfos.TestPlan{1}.Cycle = 'FTP75';
        ConfigInfos.TestPlan{1}.Data=[];

             ConfigInfos.TestPlan{2}.Num = 2;
          ConfigInfos.TestPlan{2}.Source = 'Scenario.sldd';
            ConfigInfos.TestPlan{2}.Name = 'Drive Cycle';
           ConfigInfos.TestPlan{2}.Cycle = 'HWFET';
        ConfigInfos.TestPlan{2}.Data=[];

             ConfigInfos.TestPlan{3}.Num = 3;
          ConfigInfos.TestPlan{3}.Source = 'Scenario.sldd';
            ConfigInfos.TestPlan{3}.Name = 'Drive Cycle';
           ConfigInfos.TestPlan{3}.Cycle = 'US06';
        ConfigInfos.TestPlan{3}.Data=[];

             ConfigInfos.TestPlan{4}.Num = 4;
          ConfigInfos.TestPlan{4}.Source = 'Scenario.sldd';
            ConfigInfos.TestPlan{4}.Name = 'Drive Cycle';
           ConfigInfos.TestPlan{4}.Cycle = 'WLTP Class 3';
        ConfigInfos.TestPlan{4}.Data=[];

%% Selected Logging Signals
ConfigInfos.SelectedSignals = {
'Battery.BattCurr',...
'Battery.BattSoc',...
'Battery.BattVolt',...
'Body.BdyFrm.Cg.Disp.x',...
'Body.BdyFrm.Cg.Vel.xdot',...
'Body.BdyFrm.Forces.Body.Fz',...
'Driveline.EMSpd',...
'EM.EMPwrElec',...
'EM.EMTrq',...
'Suspension.SuspChassis.Whl.xdot',...
'Suspension.SuspWheel.Wheels.Kappa',...
'Wheels.Wheels.Fz',...
'Wheels.Wheels.Kappa',...
};

%% Finish
