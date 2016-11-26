%% magnetic lead screw test
% S7 is the force sensor on the mover 
% S8 is the force sensor on the rotor

% X is the sensor output voltage  
% Y is the mover length measured outside of rotor cube.

%% todo
% 1. we did only pressure test for the force sensors, we need to do pulling test
%    to make sure we calculate the force correctly.
% 2. check if the permennant magnets meet our requirement(how?)
%%                                data

% Linear motor used to push the mover out and sensor ouput voltages and
% the mover length are recorded 
X_S7_push = [5.9 -6.0 -10.4 -33.0 -57.2 -71.7 -85.0 -92.5 -101.9 -67.2 74.8 67.7 54.9 32.7 19.3 20.5 6.0 -7.5 -24.2 -35.8 -47.2 -62.4 -82.0 -93.8 -100.4 -100.1 -97.8 -87.0 75.6 69.3 58.8 48.1 36.2 21.9 11.8 0.8 -5.5 -7.4 -15.0 -32.0 -52.4 -67.8 -76.8 -84.7 -90.8 -95.3 -93.5 -80.8 69.0 66.1 45.9 34.4 22.3 15.7 15.9 5.5 -10.0 -12.8 -27.1 -37.7 -43.5 -54.9 -76.0 -87.7 -93.1 -89.2 -59.8 63.7 57.2 46.1 28.5 14.3 4.3 -4.4 -10.1 -19.8 -39.2 -55.2 -62.6 -74.6 -90.0 -89.0 -78.3 68.6 57.2 41.1 27.3 ]';
X_S7_push = X_S7_push/1000; % mV to V
X_S8_push = [-0.009 -0.014 -0.016 -0.026 -0.037 -0.042 -0.048 -0.050 -0.048 -0.024 0.029 0.023 0.012 -0.000 -0.008 -0.004 -0.011 -0.018 -0.025 -0.031 -0.036 -0.041 -0.048 -0.050 -0.050 -0.048 -0.046 -0.036 0.030 0.022 0.014 0.006 0.000 -0.006 -0.009 -0.015 -0.018 -0.019 -0.022 -0.029 -0.038 -0.043 -0.046 -0.048 -0.049 -0.048 -0.041 -0.030 0.024 0.022 0.008 0.000 -0.005 -0.008 -0.008 -0.012 -0.020 -0.021 -0.028 -0.032 -0.032 -0.036 -0.043 -0.046 -0.045 -0.036 -0.014 0.021 0.016 0.008 -0.001 -0.006 -0.011 -0.016 -0.018 -0.023 -0.032 -0.037 -0.040 -0.043 -0.046 -0.039 -0.027 0.025 0.016 0.003 -0.004 ]';
Y_push    = [113.04 113.93 114.24 114.95 115.60 116.62 116.64 117.27 118.41 119.92 123.66 124.14 124.90 125.56 125.92 126.59 127.11 127.69 128.45 128.79 129.22 129.68 130.52 131.33 131.77 132.17 132.62 133.42 137.09 137.83 138.38 138.80 139.16 139.85 140.35 141.01 141.26 141.56 142.05 142.71 143.30 143.63 144.34 145.08 145.57 146.28 146.52 147.17 151.47 151.82 152.93 153.10 153.44 153.82 154.45 154.57 155.11 156.12 156.40 157.01 157.04 157.38 158.12 158.71 159.38 160.88 161.81 165.76 166.39 166.81 167.42 168.26 168.98 169.45 169.60 170.17 171.13 171.32 171.74 172.20 173.02 173.99 175.49 179.42 180.11 180.94 181.45 ]';

 
% Linear motor used to pull the mover in and sensor ouput voltages and
% the mover length are recorded 
X_S7_pull = [28.2 44.8 60.4 66.8 72.3 66.4 -84.4 -77.3 -59.6 -28.7 -15.9 -8.4 0.8 14.1 28.5 36.5 38.2 61.5 72.4 70.1 61.8 -88.5 -74.8 -55.5 -41.4 -21.4 -3.9 6.3 17.4 33.1 50.7 65.4 72.0 76.9 -94.4 -91.1 -85.0 -59.7 -21.8 -0.9 21.4 37.7 59.4 78.4 75.8 33.2 -75.4 -65.1 -47.9 -16.7 2.0 9.4 21.7 40.7 52.1 65.9 73.1 79.4 70.3 -89.5 -72.9 -36.7 -14.6 ]';
X_S7_pull = X_S7_pull/1000; %mV to V
X_S8_pull = [-0.001 0.005 0.016 0.022 0.028 0.036 -0.045 -0.043 -0.037 -0.024 -0.018 -0.016 -0.011 -0.004 0.000 0.005 0.004 0.021 0.032 0.037 0.039 -0.045 -0.040 -0.034 -0.029 -0.021 -0.012 -0.008 -0.002 0.004 0.011 0.023 0.030 0.038 -0.045 -0.046 -0.045 -0.037 -0.022 -0.012 -0.001 0.005 0.018 0.036 0.040 0.033 -0.044 -0.040 -0.032 -0.019 -0.010 -0.007 0  0.008 0.012 0.021 0.026 0.036 0.041 -0.047 -0.042 -0.028 -0.018 ]';
Y_pull    = [181.13 180.66 179.76 179.43 178.99 177.46 172.47 172.07 171.36 170.49 170.14 169.79 169.51 168.75 168.18 167.86 167.11 165.98 164.96 164.21 163.41 158.77 158.26 157.50 157.09 156.49 155.94 155.42 154.95 154.18 152.98 152.22 151.56 150.71 145.47 145.09 144.68 143.80 142.73 142.08 140.78 139.94 138.58 137.19 136.29 134.55 130.55 130.13 129.59 128.74 127.96 127.36 126.90 126.07 125.04 124.44 124.07 123.08 121.76 117.18 116.18 115.09 114.39]';

%%                             plot data
%% force sensor on the mover data when linear motor moves out  
figure(1)
S7_push_force =(1000*X_S7_push+0.1195)/(-0.3190); 
plot(Y_push,S7_push_force,'b--o');grid on
title('translator force(linear motor goes out)')
xlabel('distance[mm]')
ylabel('force[N]')

%% force sensor on the mover data when linear motor moves in 
figure(2)
S7_pull_force =(1000*X_S7_pull+0.1195)/(-0.3190); 
plot(Y_pull,S7_pull_force,'b--o');grid on
title('translator force(linear motor goes in)')
xlabel('distance[mm]')
ylabel('force[N]')
%% sensor on the rotor data when linear motor moves out  
% convert to force
figure(3)
X_S8_push_force  =(X_S8_push-0.007)/(-0.0052);
%% calculate torque 
X_S8_push_torque = X_S8_push_force * 0.0835; % calculate torque
plot(Y_push,X_S8_push_torque,'b--o');grid on
title('torque(linear motor goes out)')
xlabel('distance[mm]')
ylabel('torque[Nm]')

%% sensor on the rotor data when linear motor moves in  
figure(4)
X_S8_pull_force =(X_S8_pull-0.007)/(-0.0052); % calculate force
X_S8_pull_torque = X_S8_pull_force * 0.0835;  % calculate torque
plot(Y_pull,X_S8_pull_torque,'b--o');grid on
title('torque(linear motor goes in)')
xlabel('distance[mm]')
ylabel('torque[Nm]')
%% combine two test data

