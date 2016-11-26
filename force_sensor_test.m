% This is a characristic test for force sensors
% Two test data are combined to obtain one characristic plot of each sensor
clc
clear

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%                               data

%% pressure test of two force sensors
% for s8 sensor(torque), input is in kg
pressure_test_S8_input_force    = [1.855 2.901 3.106 3.245 3.6 4.383 5.429 7.175 9.201 11.855 13.881 16.409]';
% convert kg into N
pressure_test_S8_input_force    = -9.8*pressure_test_S8_input_force;
pressure_test_S8_output_voltage = -[94.3 147 151.1 164 182.1 222 275.2 363.6 465 598 702 830]';
% convert into volt
pressure_test_S8_output_voltage = pressure_test_S8_output_voltage/1000;
% for s7 sensor, input is Kg
pressure_test_S7_input_force    = [1.855 2.901 3.106 3.245 3.6 4.383 3.881 4.07 5.429 7.175 9.201 11.416 11.855 13.881 16.409 17.66...
 19.405 20.795 23.01 21.855 23.245 25.773 30.014 31.855 34.07 35.626 37.841]';
% convert Kg into N
pressure_test_S7_input_force    = -pressure_test_S7_input_force*9.8;
pressure_test_S7_output_voltage = -[5.7 8.9 9.5 10.1 11.3 13.9 12.3 12.7 17.4 22.6 29.2 36.1 37.3 43.8 51.5 55.4 60.9 65 72.2 68.2 72.8 80.7 94 99.6 106.4 111.5 118.4]';
% convert into volts
pressure_test_S7_output_voltage = pressure_test_S7_output_voltage/1000;
%% pulling force tests of two force sensors 
% for sensor(torque) s8, input is in g, output is in volt
pulling_test_S8_input_force     = [2167 2831.2 3348.6 4329.6 5085.5 6510.1 7210.1 9038.6 11073.6 12167 12867 14291.6 18155.1 2867 2922.9 3591.6 3148 2831.2]';
% convert kg into N
pulling_test_S8_input_force     = pulling_test_S8_input_force/1000*9.8;
pulling_test_S8_output_voltage  = [0.124 0.157 0.184 0.234 0.273 0.347 0.382 0.475 0.580 0.635 0.674 0.746 0.945 0.161 0.164 0.198 0.176 0.158]';
% for sensor s7, input is g, output is in volt
pulling_test_S7_input_force    =  [2359 3114.9 4539.5 5203.7 5903.7 7732.2 8713.2 9230.6 7647.1 12359 16222.5 17647.1 18628.1 19384 21212.5 21876.7 22394.1 23094.1 22359 23114.9 24539.5 26368 30231.5 32359]';
% convert g into N
pulling_test_S7_input_force    =  pulling_test_S7_input_force/1000*9.8;
pulling_test_S7_output_voltage =  [0.006 0.009 0.013 0.015 0.017 0.023 0.026 0.027 0.022 0.037 0.049 0.053 0.057 0.059 0.065 0.067 0.069 0.071 0.068 0.071 0.075 0.081 0.093 0.1]';
% combine the pressure test data and the pulling test data
Sensor_S8_input_force     =    [pressure_test_S8_input_force;   pulling_test_S8_input_force];        
Sensor_S8_output_voltage  =    [pressure_test_S8_output_voltage;pulling_test_S8_output_voltage];
% combine the pressure test data and the pulling test data
Sensor_S7_input_force     =    [pressure_test_S7_input_force;   pulling_test_S7_input_force];         
Sensor_S7_output_voltage  =    [pressure_test_S7_output_voltage;pulling_test_S7_output_voltage];


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%                    output two sensor charcristic plot
% pressure force considered negative and pulling force positive
figure(1)
disp('For sensor S7:')
solver(Sensor_S7_input_force,Sensor_S7_output_voltage)
xlabel('force[N]')
ylabel('output[V]')
title('sensor s7')
grid on
figure(2)
disp('For sensor S8:')
solver(Sensor_S8_input_force,Sensor_S8_output_voltage)
xlabel('force[N]')
ylabel('output[V]')
grid on
title('sensor s8')